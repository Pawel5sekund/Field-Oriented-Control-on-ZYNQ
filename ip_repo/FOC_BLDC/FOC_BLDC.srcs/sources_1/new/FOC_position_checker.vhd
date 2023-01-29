LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
ENTITY FOC_position_checker IS
  --  Port ( );
  GENERIC (
    STEP_scale         : integer := 16;
    full_rotate_pulses : integer := 4095
  );
  PORT (
    CLK                             : IN std_logic;
    encoder                         : IN std_logic_vector (1 DOWNTO 0);
    STEP                            : IN std_logic;
    position_calibration            : IN std_logic_vector (15 DOWNTO 0);
    position_calibration_SET_signal : IN std_logic;
    position                        : OUT signed (14 DOWNTO 0) := (OTHERS => '0');
    dposition                       : OUT signed (12 DOWNTO 0) := (OTHERS => '0');
    DIR                             : IN std_logic             := '0'
  );
END FOC_position_checker;

ARCHITECTURE Behavioral OF FOC_position_checker IS

BEGIN
  position_checker : PROCESS IS
    VARIABLE last_encoder                         : std_logic_vector (1 DOWNTO 0) := "00";
    VARIABLE last_STEP                            : std_logic                     := '0';
    VARIABLE var_position                         : signed(position'RANGE)        := (OTHERS => '0');
    VARIABLE var_dposition                        : signed(dposition'RANGE)       := (OTHERS => '0');
    VARIABLE last_position_calibration_SET_signal : std_logic                     := '0';
  BEGIN

    WAIT UNTIL rising_edge(CLK);

    CASE (std_logic_vector(last_encoder XOR encoder) & encoder) IS
        --do przodu
      WHEN "1010" | "1001" | "0111" | "0100" =>
        var_position  := var_position + 1;
        var_dposition := var_dposition - 1;
        --do tylu
      WHEN "0110" | "0101" | "1011" | "1000" =>
        var_position  := var_position - 1;
        var_dposition := var_dposition + 1;
      WHEN OTHERS =>
        --nop()
    END CASE;

    CASE std_logic_vector'(std_logic(last_STEP XOR STEP) & STEP & DIR) IS
      WHEN "110" =>
        var_dposition := var_dposition - STEP_scale;
      WHEN "111" =>
        var_dposition := var_dposition + STEP_scale;
      WHEN OTHERS =>
        --nop()
    END CASE;

    IF (var_position > (full_rotate_pulses - 1)) THEN
      var_position := var_position - full_rotate_pulses;
    ELSIF (var_position < 0) THEN
      var_position := var_position + full_rotate_pulses;
    END IF;
    
    IF ((position_calibration_SET_signal XOR last_position_calibration_SET_signal) AND position_calibration_SET_signal) = '1' THEN
      --position <= signed(position_calibration(14 downto 0));
      var_position  := signed(position_calibration(14 DOWNTO 0));
      var_dposition := (OTHERS => '0');
    ELSE
      position <= var_position;
    END IF;

    dposition <= var_dposition;
    last_encoder := encoder;
    last_STEP    := STEP;

    dposition <= var_dposition;
    position  <= var_position;
  END PROCESS position_checker;

END Behavioral;