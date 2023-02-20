-- vhdl-linter-disable port-declaration
-- vhdl-linter-disable type-resolved
LIBRARY IEEE;
LIBRARY FOC_lib;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE FOC_lib.FOC_types.ALL;

--! **Table of FSM:** 
--! | State | Operation |
--! |-----: |------: |
--! | S0 | read DSP value from operation PID_output * SIN(index*2/3pi); select next value for phase of the sinus from BRAM|
--! | S1 | |

ENTITY FOC_set_PWM_reg IS
  GENERIC (
    position_histeresis : integer := 8;
    full_rotate_pulses  : integer := 4095
  );
  PORT (
    CLK          : IN std_logic                         := '0';
    position     : IN signed (14 DOWNTO 0)              := (OTHERS => '0');
    dposition    : IN signed (12 DOWNTO 0)              := (OTHERS => '0');
    PID_out      : IN std_logic_vector (17 DOWNTO 0)    := (OTHERS => '0');
    PWM_register : OUT type_PWM_register (2 DOWNTO 0) := (OTHERS => (OTHERS => '0'))
  );
END FOC_set_PWM_reg;

ARCHITECTURE Behavioral OF FOC_set_PWM_reg IS

  COMPONENT BRAM_SIN
    PORT (
      clka  : IN std_logic;
      addra : IN std_logic_vector(10 DOWNTO 0);
      douta : OUT std_logic_vector(11 DOWNTO 0)
    );
  END COMPONENT;

  COMPONENT MULTIPLY_DSP
    PORT (
      CLK : IN std_logic;
      A   : IN std_logic_vector(17 DOWNTO 0);
      B   : IN std_logic_vector(11 DOWNTO 0);
      P   : OUT std_logic_vector(29 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL sin_data_addra   : std_logic_vector (10 DOWNTO 0) := (OTHERS => '0');
  SIGNAL sin_data_douta   : std_logic_vector (11 DOWNTO 0) := (OTHERS => '0');
  SIGNAL sin_multiply_out : std_logic_vector (29 DOWNTO 0) := (OTHERS => '0');
  --! opis sygnalu
  SIGNAL FSM_PWMSetRegister : integer RANGE 1 DOWNTO 0 := 0;
BEGIN

  --!ROM with the sinus values; every value of the sinus was calculated by formula: sin(addra/2048*2*PI)*2048; it stores only half of the sinus period (only positive) and the sign is calculated based on the phase
  sin_data : BRAM_SIN
  PORT MAP(
    clka  => CLK,
    addra => sin_data_addra,
    douta => sin_data_douta
  );
  --!DSP calculates the formula PID_out*BRAM_sin(phase), where PID_out comes from external and the BRAM_sin(pase) is from instance sin_data specified above
  sin_multiply : MULTIPLY_DSP
  PORT MAP(
    CLK => CLK,
    A   => PID_out,
    B   => sin_data_douta,
    P   => sin_multiply_out
  );

  set_PWM_reg : PROCESS IS
    VARIABLE sign_phase       : std_logic                := '0';
    VARIABLE phase            : signed (position'RANGE)  := (OTHERS => '0');
    VARIABLE index            : integer RANGE 2 DOWNTO 0 := 0;
    VARIABLE var_PWM_register : type_PWM_register (2 DOWNTO 0);
    VARIABLE direction        : signed (1 DOWNTO 0) := (OTHERS => '0');
  BEGIN

    WAIT UNTIL rising_edge(CLK);

    CASE FSM_PWMSetRegister IS
      WHEN 0 =>

        IF (sign_phase = '1') THEN
          var_PWM_register(index) := - signed(std_logic_vector'("0" & sin_multiply_out(28 DOWNTO 17)));
        ELSE
          var_PWM_register(index) := signed(std_logic_vector'("0" & sin_multiply_out(28 DOWNTO 17)));
        END IF;

        sin_data_addra <= std_logic_vector(resize(unsigned(phase), sin_data_addra'length));

        IF (dposition > (position_histeresis - 1)) THEN
          direction := to_signed(-1, direction'length);
        ELSIF (dposition <- (position_histeresis - 1)) THEN
          direction := to_signed(1, direction'length);
        ELSE
          direction := to_signed(0, direction'length);
        END IF;

        CASE index IS
          WHEN 0 =>
            index := 1;
            phase := position + full_rotate_pulses/4;
            --nop(); brak przesuniecia sinusa dla pierwszej fazy
          WHEN 1 =>
            index := 2;
            phase := position + full_rotate_pulses/4 + full_rotate_pulses/3;
          WHEN 2 =>
            index := 0;
            phase := position + full_rotate_pulses/4 - full_rotate_pulses/3;
        END CASE;

        FSM_PWMSetRegister <= 1;

      WHEN 1 =>

        IF (phase > (full_rotate_pulses + full_rotate_pulses/2 - 1)) THEN
          phase      := phase - full_rotate_pulses - full_rotate_pulses/2;
          sign_phase := '1';
        ELSIF (phase > (full_rotate_pulses - 1)) THEN
          phase      := phase - full_rotate_pulses;
          sign_phase := '0';
        ELSIF (phase > (full_rotate_pulses/2 - 1)) THEN
          phase      := phase - full_rotate_pulses/2;
          sign_phase := '1';
        ELSE
          phase      := phase;
          sign_phase := '0';
        END IF;

        CASE direction IS
          WHEN to_signed(-1, direction'length) =>
            PWM_register(0) <= var_PWM_register(0);
            PWM_register(1) <= var_PWM_register(1);
            PWM_register(2) <= var_PWM_register(2);
          WHEN to_signed(1, direction'length) =>
            PWM_register(0) <= var_PWM_register(0);
            PWM_register(1) <= var_PWM_register(2);
            PWM_register(2) <= var_PWM_register(1);
          WHEN OTHERS                =>
            PWM_register(0) <= (OTHERS => '0');
            PWM_register(1) <= (OTHERS => '0');
            PWM_register(2) <= (OTHERS => '0');
        END CASE;

        FSM_PWMSetRegister <= 0;

    END CASE;

  END PROCESS set_PWM_reg;

END Behavioral;