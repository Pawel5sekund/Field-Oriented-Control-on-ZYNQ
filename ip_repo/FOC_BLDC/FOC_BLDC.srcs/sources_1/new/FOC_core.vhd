-- vhdl-linter-disable type-resolved
-- vhdl-linter-disable port-declaration
library ieee;

library foc_lib;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use foc_lib.foc_types.all;
use ieee.fixed_pkg.all;

entity foc_core is
    generic (
        step_scale          : integer              := 16;
        position_histeresis : integer              := 8;
        pwm_period          : integer              := 2047;
        full_rotate_pulses  : integer              := 4095;
        max_p_pid           : SFIXED(10 downto -8) := to_sfixed(1023, 10, -8);
        max_i_pid           : SFIXED(10 downto -8) := to_sfixed(1023, 10, -8);
        max_d_pid           : SFIXED(10 downto -8) := to_sfixed(1023, 10, -8);
        max_pid_pid         : SFIXED(10 downto -8) := to_sfixed(2047, 10, -8);
        sampling_time       : real                 := 0.000000064  --64ns
        );
    --  Port ( );
    port (
        -- data input
        en                              : in  std_logic;
        res                             : in  std_logic;
        CLK                             : in  std_logic;
        current_sensor                  : in  std_logic_vector(11 downto 0);
        encoder                         : in  std_logic_vector(1 downto 0);
        dir                             : in  std_logic;
        step                            : in  std_logic;
        kp                              : in  UFIXED (9 downto -8);
        ki                              : in  UFIXED (9 downto -8);
        kd                              : in  UFIXED (9 downto -8);
        current_setpoint_move           : in  std_logic_vector(11 downto 0);
        position_calibration            : in  std_logic_vector(15 downto 0);
        position_calibration_set_signal : in  std_logic;
        -- data output
        dposition_out                   : out std_logic_vector(12 downto 0);
        position_out                    : out std_logic_vector(14 downto 0);
        pwm_ch_u                        : out std_logic_vector(1 downto 0);
        pwm_ch_w                        : out std_logic_vector(1 downto 0);
        pwm_ch_v                        : out std_logic_vector(1 downto 0)
        );
end entity foc_core;

architecture behavioral of foc_core is
    component pid_dsp is
        port (
            clk : in  std_logic;
            sel : in  std_logic_vector(1 downto 0);
            a   : in  std_logic_vector(17 downto 0);
            b   : in  std_logic_vector(17 downto 0);
            c   : in  std_logic_vector(47 downto 0);
            d   : in  std_logic_vector(17 downto 0);
            p   : out std_logic_vector(47 downto 0)
            );
    end component;

    component foc_position_checker is
        generic (
            step_scale         : integer;
            full_rotate_pulses : integer
            );
        port (
            clk                             : in  std_logic;
            encoder                         : in  std_logic_vector(1 downto 0);
            step                            : in  std_logic;
            position_calibration            : in  std_logic_vector(15 downto 0);
            position_calibration_set_signal : in  std_logic;
            position                        : out signed (14 downto 0);
            dposition                       : out signed (12 downto 0);
            dir                             : in  std_logic
            );
    end component;

    component foc_set_pwm_reg is
        generic (
            position_histeresis : integer;
            full_rotate_pulses  : integer
            );
        port (
            clk          : in    std_logic;
            position     : in    signed (14 downto 0);
            dposition    : in    signed (12 downto 0);
            pid_out      : in    std_logic_vector(17 downto 0);
            pwm_register : out type_PWM_register (2 downto 0)
            );
    end component;

    signal position         : signed (14 downto 0);
    signal dposition        : signed (12 downto 0);
    signal pid_sel          : std_logic_vector(1 downto 0);
    signal pid_a            : std_logic_vector(17 downto 0);
    signal pid_b            : std_logic_vector(17 downto 0);
    signal pid_c            : std_logic_vector(47 downto 0);
    signal pid_d            : std_logic_vector(17 downto 0);
    signal pid_p            : std_logic_vector(47 downto 0);
    signal pid_out          : std_logic_vector(17 downto 0);
    signal pwm_register     : type_PWM_register (2 downto 0);
    signal current_setpoint : std_logic_vector(11 downto 0);

begin


    ----------------------------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------------------------

    position_checker : component foc_position_checker
        generic map(
            step_scale         => step_scale,
            full_rotate_pulses => full_rotate_pulses
            )
        port map(
            clk                             => clk,
            encoder                         => encoder,
            position_calibration            => position_calibration,
            position_calibration_set_signal => position_calibration_set_signal,
            position                        => position,
            dposition                       => dposition,
            step                            => step,
            dir                             => dir
            );

    position_out  <= std_logic_vector(position);
    dposition_out <= std_logic_vector(dposition);

    ----------------------------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------------------------

    set_pwm_reg : component foc_set_pwm_reg
        generic map(
            position_histeresis => position_histeresis,
            full_rotate_pulses  => full_rotate_pulses
            )
        port map(
            clk          => clk,
            position     => position,
            dposition    => dposition,
            pid_out      => pid_out,
            pwm_register => pwm_register
            );

    ----------------------------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------------------------

    pid_calc_dsp : component pid_dsp
        port map(
            clk => clk,
            sel => pid_sel,
            a   => pid_a,
            b   => pid_b,
            c   => pid_c,
            d   => pid_d,
            p   => pid_p
            );

    pid : process is

        variable operation_selector : integer range 63 downto -1     := - 1;
        variable error              : signed (17 downto 0);
        variable last_error         : signed (17 downto 0);
        variable last_p_p           : SFIXED((48+kp'left-1) downto kp'left);
        variable last_i_p           : SFIXED((48+ki'left-1) downto ki'left);
        variable last_d_p           : SFIXED((48+kd'left-1) downto kd'left);
        constant VECTOR_0           : std_logic_vector (47 downto 0) := (others => '0');
        --CONSTANT SAMPLING_CYCLES : INTEGER := sampling_time/cycle_time;
        constant BITS_TP            : integer                        := clog2(sampling_time);
    begin

        wait until rising_edge(clk);

        case operation_selector is

            when -1 =>

                last_error := (others => '0');
                last_p_p   := (others => '0');
                last_i_p   := (others => '0');
                last_d_p   := (others => '0');

                operation_selector := 0;

            when 0 =>

                error   := resize(signed(std_logic_vector'("0" & current_setpoint)) - signed(std_logic_vector'("0" & current_sensor)), error'length);
                pid_sel <= "00";
                pid_d   <= std_logic_vector(error);
                pid_a   <= std_logic_vector(last_error);
                pid_b   <= std_logic_vector(kp);
                pid_c   <= VECTOR_0;

                operation_selector := 1;

            when 12 =>

                if (vecToSfixed(pid_p, kp'right) < -max_p_pid) then
                    last_p_p := resize(-max_p_pid, last_p_p'left, last_p_p'right);
                elsif (vecToSfixed(pid_p, kp'right) > max_p_pid) then
                    last_p_p := resize(max_p_pid, last_p_p'left, last_p_p'right);
                else
                    last_p_p := vecToSfixed(pid_p, kp'right);
                end if;

                pid_sel            <= "01";
                pid_b              <= std_logic_vector(ki);
                pid_c              <= std_logic_vector(last_i_p);
                operation_selector := 13;

            when 24 =>

                if (vecToSfixed(pid_p, ki'right) < -max_i_pid) then
                    last_i_p := resize(-max_i_pid, last_p_p'left, last_p_p'right);
                elsif (vecToSfixed(pid_p, ki'right) > max_i_pid) then
                    last_i_p := resize(max_i_pid, last_p_p'left, last_p_p'right);
                else
                    last_i_p := vecToSfixed(pid_p, ki'right);
                end if;

                pid_sel            <= "10";
                pid_b              <= std_logic_vector(kd);
                pid_c              <= std_logic_vector(last_d_p);
                operation_selector := 25;

            when 36 =>

                if (vecToSfixed(pid_p, kd'right) < -max_p_pid) then
                    last_d_p := resize(-max_d_pid, last_p_p'left, last_p_p'right);
                elsif (vecToSfixed(pid_p, kd'right) > max_d_pid) then
                    last_d_p := resize(max_d_pid, last_p_p'left, last_p_p'right);
                else
                    last_d_p := vecToSfixed(pid_p, kd'right);
                end if;

                pid_sel            <= "11";
                pid_b              <= VECTOR_0(pid_b'left downto pid_b'right);
                pid_a              <= std_logic_vector(resize(last_p_p, pid_a'left+last_p_p'right, pid_a'right+last_p_p'right));
                pid_d              <= std_logic_vector(resize(mulByBits(last_i_p, (BITS_TP+1)), pid_d'left+last_i_p'right, pid_d'right+last_i_p'right));
                pid_c              <= std_logic_vector(resize(divByBits(last_d_p, (BITS_TP+1)), pid_c'left+last_d_p'right, pid_c'right+last_d_p'right));
                operation_selector := 37;

            when 48 =>

                if (vecToSfixed(pid_p, kp'right) < 0) then
                    pid_out <= std_logic_vector(to_SIGNED(0, pid_out'length));
                elsif (to_sfixed(std_ulogic_vector(pid_p), pid_p'length+max_p_pid'right-1, max_p_pid'right) > max_pid_pid) then
                    pid_out <= std_logic_vector(to_SIGNED(max_pid_pid, pid_out'length - 6)) & "000000";
                else
                    pid_out <= pid_p(18 downto 1);
                end if;

                last_error         := error;
                operation_selector := 49;

            when others =>

                pid_a   <= pid_a;
                pid_b   <= pid_b;
                pid_c   <= pid_c;
                pid_d   <= pid_d;
                pid_sel <= pid_sel;

                if (en = '0' and res = '1') then
                    operation_selector := - 1;
                elsif (operation_selector = 63) then
                    operation_selector := 0;

                    if ((dposition > (position_histeresis - 1)) or (dposition < - (position_histeresis - 1))) then
                        current_setpoint <= current_setpoint_move;
                    else
                        current_setpoint <= std_logic_vector(to_signed(0, current_setpoint'length));
                    end if;
                else
                    operation_selector := operation_selector + 1;
                end if;

        end case;

    end process pid;

    ----------------------------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------------------------

    pwm : process is

        variable cnt                         : integer range 0 to pwm_period;
        variable var_pwm_register            : type_PWM_register (2 downto 0);
        variable sign_pwm_register           : std_logic_vector(var_pwm_register'range);
        variable var_pwm_maximum_register    : unsigned (11 downto 0);
        variable var_output_current_limitter : std_logic;

    begin

        wait until rising_edge(clk);

        case cnt is

            when pwm_period =>

                cnt := 0;

            when others =>

                cnt := cnt + 1;

        end case;

        sign_pwm_register(0) := pwm_register(0)(12);
        sign_pwm_register(1) := pwm_register(0)(12);
        sign_pwm_register(2) := pwm_register(0)(12);

        var_pwm_register(0) := abs(pwm_register(0));
        var_pwm_register(1) := abs(pwm_register(1));
        var_pwm_register(2) := abs(pwm_register(2));

        var_pwm_maximum_register := unsigned(PID_out(17 downto 6));

        if (cnt > var_pwm_maximum_register) then
            var_output_current_limitter := '0';
        else
            var_output_current_limitter := '1';
        end if;

        if (cnt > var_pwm_register(0)) then
            pwm_ch_u(0) <= std_logic(sign_pwm_register(0)) and var_output_current_limitter;
            pwm_ch_u(1) <= (not std_logic(sign_pwm_register(0))) and var_output_current_limitter;
        else
            pwm_ch_u(1) <= std_logic(sign_pwm_register(0)) and var_output_current_limitter;
            pwm_ch_u(0) <= (not std_logic(sign_pwm_register(0))) and var_output_current_limitter;
        end if;

        if (cnt > var_pwm_register(1)) then
            pwm_ch_w(0) <= std_logic(sign_pwm_register(1)) and var_output_current_limitter;
            pwm_ch_w(1) <= (not std_logic(sign_pwm_register(1))) and var_output_current_limitter;
        else
            pwm_ch_w(1) <= std_logic(sign_pwm_register(1)) and var_output_current_limitter;
            pwm_ch_w(0) <= (not std_logic(sign_pwm_register(1))) and var_output_current_limitter;
        end if;

        if (cnt > var_pwm_register(2)) then
            pwm_ch_v(0) <= std_logic(sign_pwm_register(2)) and var_output_current_limitter;
            pwm_ch_v(1) <= (not std_logic(sign_pwm_register(2))) and var_output_current_limitter;
        else
            pwm_ch_v(1) <= std_logic(sign_pwm_register(2)) and var_output_current_limitter;
            pwm_ch_v(0) <= (not std_logic(sign_pwm_register(2))) and var_output_current_limitter;
        end if;


    end process pwm;

end architecture behavioral;
