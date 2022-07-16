LIBRARY ieee;
LIBRARY FOC_lib;

USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE FOC_lib.FOC_types.ALL;

ENTITY FOC_core IS
  GENERIC (
    STEP_scale          : integer := 16;
    position_histeresis : integer := 8;
    PWM_period          : integer := 2047;
    full_rotate_pulses  : integer := 4095;
    max_p_PID           : integer := 1023;
    max_i_PID           : integer := 1023;
    max_d_PID           : integer := 1023;
    max_PID_PID         : integer := 2047
  );
  --  Port ( );
  PORT (
    -- data input
    EN                              : IN std_logic;
    RES                             : IN std_logic;
    CLK                             : IN std_logic;
    current_sensor                  : IN std_logic_vector(11 DOWNTO 0);
    encoder                         : IN std_logic_vector(1 DOWNTO 0);
    DIR                             : IN std_logic;
    STEP                            : IN std_logic;
    kp                              : IN std_logic_vector(17 DOWNTO 0);
    ki                              : IN std_logic_vector(17 DOWNTO 0);
    kd                              : IN std_logic_vector(17 DOWNTO 0);
    current_setpoint_move           : IN std_logic_vector(17 DOWNTO 0);
    current_setpoint_stall          : IN std_logic_vector(17 DOWNTO 0);
    position_calibration            : IN std_logic_vector(15 DOWNTO 0);
    position_calibration_set_signal : IN std_logic;
    -- data output
    dposition_out : OUT std_logic_vector(12 DOWNTO 0);
    position_out  : OUT std_logic_vector(14 DOWNTO 0);
    PWM_ch_u      : OUT std_logic_vector(1 DOWNTO 0);
    PWM_ch_w      : OUT std_logic_vector(1 DOWNTO 0);
    PWM_ch_v      : OUT std_logic_vector(1 DOWNTO 0)
  );
END ENTITY FOC_core;

ARCHITECTURE behavioral OF FOC_core IS

  COMPONENT PID_DSP IS
    PORT (
      CLK : IN std_logic;
      sel : IN std_logic_vector(1 DOWNTO 0);
      a   : IN std_logic_vector(17 DOWNTO 0);
      b   : IN std_logic_vector(17 DOWNTO 0);
      c   : IN std_logic_vector(47 DOWNTO 0);
      d   : IN std_logic_vector(17 DOWNTO 0);
      p   : OUT std_logic_vector(47 DOWNTO 0)
    );
  END COMPONENT;

  COMPONENT FOC_position_checker IS
    GENERIC (
      STEP_scale         : integer;
      full_rotate_pulses : integer
    );
    PORT (
      CLK                             : IN std_logic;
      encoder                         : IN std_logic_vector(1 DOWNTO 0);
      STEP                            : IN std_logic;
      position_calibration            : IN std_logic_vector(15 DOWNTO 0);
      position_calibration_set_signal : IN std_logic;
      position                        : OUT signed (14 DOWNTO 0);
      dposition                       : OUT signed (12 DOWNTO 0);
      DIR                             : IN std_logic
    );
  END COMPONENT;

  COMPONENT FOC_set_PWM_reg IS
    GENERIC (
      position_histeresis : integer;
      full_rotate_pulses  : integer
    );
    PORT (
      CLK          : IN std_logic;
      position     : IN signed (14 DOWNTO 0);
      dposition    : IN signed (12 DOWNTO 0);
      PID_out      : IN std_logic_vector(17 DOWNTO 0);
      PWM_register : INOUT type_PWM_register (2 DOWNTO 0)
    );
  END COMPONENT;

  SIGNAL position         : signed (14 DOWNTO 0);
  SIGNAL dposition        : signed (12 DOWNTO 0);
  SIGNAL PID_sel          : std_logic_vector(1 DOWNTO 0);
  SIGNAL PID_a            : std_logic_vector(17 DOWNTO 0);
  SIGNAL PID_b            : std_logic_vector(17 DOWNTO 0);
  SIGNAL PID_c            : std_logic_vector(47 DOWNTO 0);
  SIGNAL PID_d            : std_logic_vector(17 DOWNTO 0);
  SIGNAL PID_p            : std_logic_vector(47 DOWNTO 0);
  SIGNAL PID_out          : std_logic_vector(17 DOWNTO 0);
  SIGNAL PWM_register     : type_PWM_register (2 DOWNTO 0);
  SIGNAL current_setpoint : std_logic_vector(17 DOWNTO 0);

BEGIN

  ----------------------------------------------------------------------------------------------------------------------
  ----------------------------------------------------------------------------------------------------------------------
  ----------------------------------------------------------------------------------------------------------------------

  position_checker : COMPONENT FOC_position_checker
    GENERIC MAP(
      STEP_scale         => STEP_scale,
      full_rotate_pulses => full_rotate_pulses
    )
    PORT MAP(
      CLK                             => CLK,
      encoder                         => encoder,
      position_calibration            => position_calibration,
      position_calibration_set_signal => position_calibration_set_signal,
      position                        => position,
      dposition                       => dposition,
      STEP                            => STEP,
      DIR                             => DIR
    );

    position_out  <= std_logic_vector(position);
    dposition_out <= std_logic_vector(dposition);

    ----------------------------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------------------------

    set_PWM_reg : COMPONENT FOC_set_PWM_reg
      GENERIC MAP(
        position_histeresis => position_histeresis,
        full_rotate_pulses  => full_rotate_pulses
      )
      PORT MAP(
        CLK          => CLK,
        position     => position,
        dposition    => dposition,
        PID_out      => PID_out,
        PWM_register => PWM_register
      );

      ----------------------------------------------------------------------------------------------------------------------
      ----------------------------------------------------------------------------------------------------------------------
      ----------------------------------------------------------------------------------------------------------------------

      PID_calc_DSP : COMPONENT PID_DSP
        PORT MAP(
          CLK => CLK,
          sel => PID_sel,
          a   => PID_a,
          b   => PID_b,
          c   => PID_c,
          d   => PID_d,
          p   => PID_p
        );

        PID : PROCESS IS

          VARIABLE operation_selector : integer RANGE 63 DOWNTO -1 := - 1;
          VARIABLE error              : signed (17 DOWNTO 0);
          VARIABLE last_error         : signed (17 DOWNTO 0);
          VARIABLE last_p_p           : std_logic_vector(47 DOWNTO 0);
          VARIABLE last_i_p           : std_logic_vector(47 DOWNTO 0);
          VARIABLE last_d_p           : std_logic_vector(47 DOWNTO 0);

        BEGIN

          WAIT UNTIL rising_edge(CLK);

          CASE operation_selector IS

            WHEN -1 =>

              last_error := (OTHERS => '0');
              last_p_p   := (OTHERS => '0');
              last_i_p   := (OTHERS => '0');
              last_d_p   := (OTHERS => '0');

              operation_selector := 0;

            WHEN 0 =>

              error := resize(signed(std_logic_vector'("0" & current_setpoint)) - signed(std_logic_vector'("0" & current_sensor)), error'length);
              PID_sel <= "00";
              PID_d   <= std_logic_vector(error);
              PID_a   <= std_logic_vector(last_error);
              PID_b   <= kp;
              PID_c   <= "000000000000000000000000000000000000000000000000";
              operation_selector := 1;

            WHEN 12 =>

              IF (signed(PID_p(47 DOWNTO 9)) <- max_p_PID) THEN
                last_p_p := std_logic_vector(to_SIGNED(-max_p_PID, last_p_p'length - 9)) & "000000000";
              ELSIF (signed(PID_p(47 DOWNTO 9)) > max_p_PID) THEN
                last_p_p := std_logic_vector(to_SIGNED(max_p_PID, last_p_p'length - 9)) & "000000000";
              ELSE
                last_p_p := PID_p;
              END IF;

              PID_sel <= "01";
              PID_b   <= ki;
              PID_c   <= last_i_p;
              operation_selector := 13;

            WHEN 24 =>

              IF (signed(PID_p(47 DOWNTO 30)) <- max_i_PID) THEN
                last_i_p := std_logic_vector(to_SIGNED(-max_i_PID, last_d_p'length - 30)) & "000000000000000000000000000000";
              ELSIF (signed(PID_p(47 DOWNTO 30)) > max_i_PID) THEN
                last_i_p := std_logic_vector(to_SIGNED(max_i_PID, last_d_p'length - 30)) & "000000000000000000000000000000";
              ELSE
                last_i_p := PID_p;
              END IF;

              PID_sel <= "10";
              PID_b   <= kd;
              PID_c   <= last_d_p;
              operation_selector := 25;

            WHEN 36 =>

              IF (signed(PID_p(47 DOWNTO 30)) <- max_p_PID) THEN
                last_d_p := std_logic_vector(to_SIGNED(-max_d_PID, last_d_p'length - 30)) & "000000000000000000000000000000";
              ELSIF (signed(PID_p(47 DOWNTO 30)) > max_d_PID) THEN
                last_d_p := std_logic_vector(to_SIGNED(max_d_PID, last_d_p'length - 30)) & "000000000000000000000000000000";
              ELSE
                last_d_p := PID_p;
              END IF;

              PID_sel <= "11";
              PID_b   <= "000000000000000000";
              PID_a   <= last_p_p(47) & last_p_p(19 DOWNTO 3);
              PID_d   <= last_i_p(47) & last_i_p(40 DOWNTO 24);
              PID_c   <= last_d_p(47) & "00000000000000000000000000000" & last_d_p(41 DOWNTO 24);
              operation_selector := 37;

            WHEN 48 =>

              IF (signed(std_logic_vector'(PID_p (47) & PID_p(22 DOWNTO 6))) < 0) THEN
                PID_out <= std_logic_vector(to_SIGNED(0, PID_out'length));
              ELSIF (signed(std_logic_vector'(PID_p (47) & PID_p(22 DOWNTO 6))) > max_PID_PID) THEN
                PID_out <= std_logic_vector(to_SIGNED(max_PID_PID, PID_out'length - 6)) & "000000";
              ELSE
                PID_out <= PID_p(18 DOWNTO 1);
              END IF;

              last_error         := error;
              operation_selector := 49;

            WHEN OTHERS =>

              PID_a   <= PID_a;
              PID_b   <= PID_b;
              PID_c   <= PID_c;
              PID_d   <= PID_d;
              PID_sel <= PID_sel;
              IF (EN = '0' AND RES = '1') THEN
                operation_selector := - 1;
              ELSIF (EN = '0') THEN
                operation_selector := 62;
              ELSIF (operation_selector = 63) THEN
                operation_selector := 0;
                IF (dposition > (position_histeresis - 1)) OR (dposition <- (position_histeresis - 1)) THEN
                  current_setpoint <= current_setpoint_move;
                ELSE
                  current_setpoint <= std_logic_vector(to_signed(0, current_setpoint'length));
                END IF;
              ELSE
                operation_selector := operation_selector + 1;
              END IF;

          END CASE;

        END PROCESS PID;

        ----------------------------------------------------------------------------------------------------------------------
        ----------------------------------------------------------------------------------------------------------------------
        ----------------------------------------------------------------------------------------------------------------------

        PWM : PROCESS IS
          VARIABLE CNT               : integer RANGE 0 TO PWM_period;
          VARIABLE var_PWM_register  : type_PWM_register (2 DOWNTO 0);
          VARIABLE sign_PWM_register : std_logic_vector (var_PWM_register'RANGE);
        BEGIN

          WAIT UNTIL rising_edge(CLK);

          CASE CNT IS
            WHEN PWM_period =>

              CNT := 0;

              sign_PWM_register(0) := PWM_register(0)(12);
              sign_PWM_register(1) := PWM_register(0)(12);
              sign_PWM_register(2) := PWM_register(0)(12);

              var_PWM_register(0) := ABS(var_PWM_register(0));
              var_PWM_register(1) := ABS(var_PWM_register(1));
              var_PWM_register(2) := ABS(var_PWM_register(2));

            WHEN OTHERS =>

              IF (CNT > var_PWM_register(0)) THEN
                PWM_ch_u(0) <= '0';
                PWM_ch_u(1) <= '0';
              ELSE
                PWM_ch_u(0) <= NOT std_logic(sign_PWM_register(0));
                PWM_ch_u(1) <= std_logic(sign_PWM_register(0));
              END IF;

              IF (CNT > var_PWM_register(1)) THEN
                PWM_ch_w(0) <= '0';
                PWM_ch_w(1) <= '0';
              ELSE
                PWM_ch_w(0) <= NOT std_logic(sign_PWM_register(1));
                PWM_ch_w(1) <= std_logic(sign_PWM_register(1));
              END IF;

              IF (CNT > var_PWM_register(2)) THEN
                PWM_ch_v(0) <= '0';
                PWM_ch_v(1) <= '0';
              ELSE
                PWM_ch_v(0) <= NOT std_logic(sign_PWM_register(2));
                PWM_ch_v(1) <= std_logic(sign_PWM_register(2));
              END IF;

              CNT := CNT + 1;

          END CASE;

        END PROCESS PWM;

      END ARCHITECTURE behavioral;