LIBRARY ieee;

LIBRARY foc_lib;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE foc_lib.foc_types.ALL;
use ieee.fixed_pkg.all;

ENTITY foc_core IS
  GENERIC (
    step_scale          : INTEGER := 16;
    position_histeresis : INTEGER := 8;
    pwm_period          : INTEGER := 2047;
    full_rotate_pulses  : INTEGER := 4095;
    max_p_pid           : SFIXED(10 DOWNTO -8) := to_sfixed(1023, 10, -8);
    max_i_pid           : SFIXED(10 DOWNTO -8) := to_sfixed(1023, 10, -8);
    max_d_pid           : SFIXED(10 DOWNTO -8) := to_sfixed(1023, 10, -8);
    max_pid_pid         : SFIXED(10 DOWNTO -8) := to_sfixed(2047, 10, -8);
    sampling_time : REAL := 0.000000064 --64ns
  );
  --  Port ( );
  PORT (
    -- data input
    en                              : IN STD_LOGIC;
    res                             : IN STD_LOGIC;
    CLK                             : IN STD_LOGIC;
    current_sensor                  : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    encoder                         : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    dir                             : IN STD_LOGIC;
    step                            : IN STD_LOGIC;
    kp                              : IN UFIXED (9 downto -8);
    ki                              : IN UFIXED (9 downto -8);
    kd                              : IN UFIXED (9 downto -8);
    current_setpoint_move           : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    position_calibration            : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    position_calibration_set_signal : IN STD_LOGIC;
    -- data output
    dposition_out : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
    position_out  : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
    pwm_ch_u      : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    pwm_ch_w      : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    pwm_ch_v      : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END ENTITY foc_core;

ARCHITECTURE behavioral OF foc_core IS
  COMPONENT pid_dsp IS
    PORT (
      clk : IN STD_LOGIC;
      sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      a   : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      b   : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      c   : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
      d   : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      p   : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)
    );
  END COMPONENT;

  COMPONENT foc_position_checker IS
    GENERIC (
      step_scale         : INTEGER;
      full_rotate_pulses : INTEGER
    );
    PORT (
      clk                             : IN STD_LOGIC;
      encoder                         : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      step                            : IN STD_LOGIC;
      position_calibration            : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      position_calibration_set_signal : IN STD_LOGIC;
      position                        : OUT signed (14 DOWNTO 0);
      dposition                       : OUT signed (12 DOWNTO 0);
      dir                             : IN STD_LOGIC
    );
  END COMPONENT;

  COMPONENT foc_set_pwm_reg IS
    GENERIC (
      position_histeresis : INTEGER;
      full_rotate_pulses  : INTEGER
    );
    PORT (
      clk          : IN STD_LOGIC;
      position     : IN signed (14 DOWNTO 0);
      dposition    : IN signed (12 DOWNTO 0);
      pid_out      : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      pwm_register : INOUT type_PWM_register (2 DOWNTO 0)
    );
  END COMPONENT;

  SIGNAL position         : signed (14 DOWNTO 0);
  SIGNAL dposition        : signed (12 DOWNTO 0);
  SIGNAL pid_sel          : STD_LOGIC_VECTOR(1 DOWNTO 0);
  SIGNAL pid_a            : STD_LOGIC_VECTOR(17 DOWNTO 0);
  SIGNAL pid_b            : STD_LOGIC_VECTOR(17 DOWNTO 0);
  SIGNAL pid_c            : STD_LOGIC_VECTOR(47 DOWNTO 0);
  SIGNAL pid_d            : STD_LOGIC_VECTOR(17 DOWNTO 0);
  SIGNAL pid_p            : STD_LOGIC_VECTOR(47 DOWNTO 0);
  SIGNAL pid_out          : STD_LOGIC_VECTOR(17 DOWNTO 0);
  SIGNAL pwm_register     : type_PWM_register (2 DOWNTO 0);
  SIGNAL current_setpoint : STD_LOGIC_VECTOR(11 DOWNTO 0);

BEGIN


  ----------------------------------------------------------------------------------------------------------------------
  ----------------------------------------------------------------------------------------------------------------------
  ----------------------------------------------------------------------------------------------------------------------

  position_checker : COMPONENT foc_position_checker
    GENERIC MAP(
      step_scale         => step_scale,
      full_rotate_pulses => full_rotate_pulses
    )
    PORT MAP(
      clk                             => clk,
      encoder                         => encoder,
      position_calibration            => position_calibration,
      position_calibration_set_signal => position_calibration_set_signal,
      position                        => position,
      dposition                       => dposition,
      step                            => step,
      dir                             => dir
    );

    position_out  <= STD_LOGIC_VECTOR(position);
    dposition_out <= STD_LOGIC_VECTOR(dposition);

    ----------------------------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------------------------

    set_pwm_reg : COMPONENT foc_set_pwm_reg
      GENERIC MAP(
        position_histeresis => position_histeresis,
        full_rotate_pulses  => full_rotate_pulses
      )
      PORT MAP(
        clk          => clk,
        position     => position,
        dposition    => dposition,
        pid_out      => pid_out,
        pwm_register => pwm_register
      );

      ----------------------------------------------------------------------------------------------------------------------
      ----------------------------------------------------------------------------------------------------------------------
      ----------------------------------------------------------------------------------------------------------------------

      pid_calc_dsp : COMPONENT pid_dsp
        PORT MAP(
          clk => clk,
          sel => pid_sel,
          a   => pid_a,
          b   => pid_b,
          c   => pid_c,
          d   => pid_d,
          p   => pid_p
        );

        pid : PROCESS IS

          VARIABLE operation_selector : INTEGER RANGE 63 DOWNTO -1 := - 1;
          VARIABLE error              : signed (17 DOWNTO 0);
          VARIABLE last_error         : signed (17 DOWNTO 0);
          VARIABLE last_p_p           : SFIXED((48+kp'left-1) DOWNTO kp'left);
          VARIABLE last_i_p           : SFIXED((48+ki'left-1) DOWNTO ki'left);
          VARIABLE last_d_p           : SFIXED((48+kd'left-1) DOWNTO kd'left);
          CONSTANT VECTOR_0           : STD_LOGIC_VECTOR (47 DOWNTO 0) := (OTHERS => '0');
          --CONSTANT SAMPLING_CYCLES : INTEGER := sampling_time/cycle_time;
          CONSTANT BITS_TP : INTEGER := clog2(sampling_time);
        BEGIN

          WAIT UNTIL rising_edge(clk);

          CASE operation_selector IS

            WHEN -1 =>

              last_error := (OTHERS => '0');
              last_p_p   := (OTHERS => '0');
              last_i_p   := (OTHERS => '0');
              last_d_p   := (OTHERS => '0');

              operation_selector := 0;

            WHEN 0 =>

              error := resize(signed(STD_LOGIC_VECTOR'("0" & current_setpoint)) - signed(STD_LOGIC_VECTOR'("0" & current_sensor)), error'length);
              pid_sel <= "00";
              pid_d   <= STD_LOGIC_VECTOR(error);
              pid_a   <= STD_LOGIC_VECTOR(last_error);
              pid_b   <= STD_LOGIC_VECTOR(kp);
              pid_c   <= VECTOR_0;
              
              operation_selector := 1;
              
            WHEN 12 =>

              IF (vecToSfixed(pid_p, kp'right) < -max_p_pid) THEN
                last_p_p := resize(-max_p_pid, last_p_p'left, last_p_p'right);
              ELSIF (vecToSfixed(pid_p, kp'right)  > max_p_pid) THEN
                last_p_p := resize(max_p_pid, last_p_p'left, last_p_p'right);
              ELSE
                last_p_p := vecToSfixed(pid_p, kp'right);
              END IF;

              pid_sel <= "01";
              pid_b   <= STD_LOGIC_VECTOR(ki); 
              pid_c   <= STD_LOGIC_VECTOR(last_i_p);
              operation_selector := 13;

            WHEN 24 =>

              IF (vecToSfixed(pid_p, ki'right)  < -max_i_pid) THEN
                last_i_p := resize(-max_i_pid, last_p_p'left, last_p_p'right);
              ELSIF (vecToSfixed(pid_p, ki'right)  > max_i_pid) THEN
                last_i_p := resize(max_i_pid, last_p_p'left, last_p_p'right);
              ELSE
                last_i_p := vecToSfixed(pid_p, ki'right);
              END IF;

              pid_sel <= "10";
              pid_b   <= STD_LOGIC_VECTOR(kd);
              pid_c   <= STD_LOGIC_VECTOR(last_d_p);
              operation_selector := 25;

            WHEN 36 =>

              IF (vecToSfixed(pid_p, kd'right) < -max_p_pid) THEN
                last_d_p := resize(-max_d_pid, last_p_p'left, last_p_p'right);
              ELSIF (vecToSfixed(pid_p, kd'right) > max_d_pid) THEN
                last_d_p := resize(max_d_pid, last_p_p'left, last_p_p'right);
              ELSE
                last_d_p := vecToSfixed(pid_p, kd'right);
              END IF;

              pid_sel <= "11";
              pid_b   <= VECTOR_0(pid_b'left DOWNTO pid_b'right);
              pid_a   <= STD_LOGIC_VECTOR(resize(last_p_p, pid_a'left+last_p_p'right, pid_a'right+last_p_p'right));
              pid_d   <= STD_LOGIC_VECTOR(resize(mulByBits(last_i_p, (BITS_TP+1)), pid_d'left+last_i_p'right, pid_d'right+last_i_p'right)); 
              pid_c   <= STD_LOGIC_VECTOR(resize(divByBits(last_d_p, (BITS_TP+1)), pid_c'left+last_d_p'right, pid_c'right+last_d_p'right));
              operation_selector := 37;

            WHEN 48 =>

              IF (vecToSfixed(pid_p, kp'right) < 0) THEN
                pid_out <= STD_LOGIC_VECTOR(to_SIGNED(0, pid_out'length));
              ELSIF (to_sfixed(STD_ULOGIC_VECTOR(pid_p), pid_p'length+max_p_pid'right-1, max_p_pid'right) > max_pid_pid) THEN
                pid_out <= STD_LOGIC_VECTOR(to_SIGNED(max_pid_pid, pid_out'length - 6)) & "000000";
              ELSE
                pid_out <= pid_p(18 DOWNTO 1);
              END IF;

              last_error         := error;
              operation_selector := 49;

            WHEN OTHERS =>

              pid_a   <= pid_a;
              pid_b   <= pid_b;
              pid_c   <= pid_c;
              pid_d   <= pid_d;
              pid_sel <= pid_sel;

              IF (en = '0' AND res = '1') THEN
                operation_selector := - 1;
              ELSIF (operation_selector = 63) THEN
                operation_selector := 0;

                IF ((dposition > (position_histeresis - 1)) OR (dposition <- (position_histeresis - 1))) THEN
                  current_setpoint <= current_setpoint_move;
                ELSE
                  current_setpoint <= STD_LOGIC_VECTOR(to_signed(0, current_setpoint'length));
                END IF;
              ELSE
                operation_selector := operation_selector + 1;
              END IF;

          END CASE;

        END PROCESS pid;

        ----------------------------------------------------------------------------------------------------------------------
        ----------------------------------------------------------------------------------------------------------------------
        ----------------------------------------------------------------------------------------------------------------------

        pwm : PROCESS IS

          VARIABLE cnt               : INTEGER RANGE 0 TO pwm_period;
          VARIABLE var_pwm_register  : type_PWM_register (2 DOWNTO 0);
          VARIABLE sign_pwm_register : STD_LOGIC_VECTOR(var_pwm_register'RANGE);
          VARIABLE var_pwm_maximum_register: unsigned (11 downto 0);
          VARIABLE var_output_current_limitter: STD_LOGIC;

        BEGIN

          WAIT UNTIL rising_edge(clk);

          CASE cnt IS

            WHEN pwm_period =>
              
              sign_pwm_register(0) := pwm_register(0)(12);
              sign_pwm_register(1) := pwm_register(0)(12);
              sign_pwm_register(2) := pwm_register(0)(12);

              var_pwm_register(0) := ABS(pwm_register(0));
              var_pwm_register(1) := ABS(pwm_register(1));
              var_pwm_register(2) := ABS(pwm_register(2));

              var_pwm_maximum_register := unsigned(PID_out(17 downto 6));

              cnt := 0;

            WHEN OTHERS =>

              IF (cnt > var_pwm_maximum_register) THEN
                var_output_current_limitter := '0';
              ELSE
                var_output_current_limitter := '1';
              END IF;

              IF (cnt > var_pwm_register(0)) THEN
                pwm_ch_u(0) <= STD_LOGIC(sign_pwm_register(0)) AND var_output_current_limitter;
                pwm_ch_u(1) <= (NOT STD_LOGIC(sign_pwm_register(0))) AND var_output_current_limitter;
              ELSE
                pwm_ch_u(1) <= STD_LOGIC(sign_pwm_register(0)) AND var_output_current_limitter;
                pwm_ch_u(0) <= (NOT STD_LOGIC(sign_pwm_register(0))) AND var_output_current_limitter;
              END IF;

              IF (cnt > var_pwm_register(1)) THEN
                pwm_ch_w(0) <= STD_LOGIC(sign_pwm_register(1)) AND var_output_current_limitter;
                pwm_ch_w(1) <= (NOT STD_LOGIC(sign_pwm_register(1))) AND var_output_current_limitter;
              ELSE
                pwm_ch_w(1) <= STD_LOGIC(sign_pwm_register(1)) AND var_output_current_limitter;
                pwm_ch_w(0) <= (NOT STD_LOGIC(sign_pwm_register(1))) AND var_output_current_limitter;
              END IF;

              IF (cnt > var_pwm_register(2)) THEN
                pwm_ch_v(0) <= STD_LOGIC(sign_pwm_register(2)) AND var_output_current_limitter;
                pwm_ch_v(1) <= (NOT STD_LOGIC(sign_pwm_register(2))) AND var_output_current_limitter;
              ELSE
                pwm_ch_v(1) <= STD_LOGIC(sign_pwm_register(2)) AND var_output_current_limitter;
                pwm_ch_v(0) <= (NOT STD_LOGIC(sign_pwm_register(2))) AND var_output_current_limitter;
              END IF;

              cnt := cnt + 1;

          END CASE;

        END PROCESS pwm;

      END ARCHITECTURE behavioral;