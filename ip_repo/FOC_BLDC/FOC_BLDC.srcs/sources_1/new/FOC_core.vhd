-- vhdl-linter-disable type-resolved
-- vhdl-linter-disable port-declaration
library ieee;

library foc_lib;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use foc_lib.foc_types.all;
use ieee.fixed_pkg.all;

entity FOC_core is
    generic (
        sampling_time       : real                 := 0.000000064;      --64ns
        step_scale          : integer              := 16;
        position_histeresis : integer              := 8;
        pwm_period          : integer              := 2047;
        full_rotate_pulses  : integer              := 4095;
        fracBits: integer := 10;
        intBits: integer := 17-fracBits;
        max_p_pid           : SFIXED(intBits downto -fracBits) := to_sfixed(pwm_period, intBits, -fracBits);
        max_i_pid           : SFIXED(intBits downto -fracBits) := to_sfixed(pwm_period, intBits, -fracBits);
        max_d_pid           : SFIXED(intBits downto -fracBits) := to_sfixed(pwm_period, intBits, -fracBits);
        max_pid_pid         : SFIXED(intBits downto -fracBits) := to_sfixed(pwm_period, intBits, -fracBits)
        );
    --  Port ( );
    port (
        -- data input
        en                              : in  std_logic;
        n_res                           : in  std_logic;
        CLK                             : in  std_logic;
        current_sensor                  : in  unsigned(11 downto 0);
        encoder                         : in  std_logic_vector(1 downto 0);
        dir                             : in  std_logic;
        step                            : in  std_logic;
        kp                              : in  UFIXED (intBits downto -fracBits);
        ki                              : in  UFIXED (intBits downto -fracBits);
        kd                              : in  UFIXED (intBits downto -fracBits);
        current_setpoint_move           : in  unsigned (11 downto 0);  --tbd change to unsigned
        position_calibration            : in  signed (14 downto 0);
        position_calibration_set_signal : in  std_logic;
        -- data output
        dposition_out                   : out signed (12 downto 0);
        position_out                    : out signed (14 downto 0);
        pwm_ch_u                        : out std_logic_vector(1 downto 0);
        pwm_ch_w                        : out std_logic_vector(1 downto 0);
        pwm_ch_v                        : out std_logic_vector(1 downto 0)
        );
end entity FOC_core;

architecture behavioral of FOC_core is
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
            position_calibration            : in  signed(14 downto 0);
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
            clk          : in  std_logic;
            position     : in  signed (14 downto 0);
            dposition    : in  signed (12 downto 0);
            pid_out      : in  std_logic_vector(17 downto 0);
            pwm_register : out type_PWM_register (2 downto 0)
            );
    end component;

    signal position         : signed (14 downto 0)          := (others => '0');
    signal dposition        : signed (12 downto 0)          := (others => '0');
    signal pid_sel          : std_logic_vector(1 downto 0)  := (others => '0');
    signal pid_a            : std_logic_vector(17 downto 0) := (others => '0');
    signal pid_b            : std_logic_vector(17 downto 0) := (others => '0');
    signal pid_c            : std_logic_vector(47 downto 0) := (others => '0');
    signal pid_d            : std_logic_vector(17 downto 0) := (others => '0');
    signal pid_p            : std_logic_vector(47 downto 0) := (others => '0');
    signal pid_out          : std_logic_vector(17 downto 0) := (others => '0');
    signal pwm_register     : type_PWM_register (2 downto 0);
    signal current_setpoint : unsigned(11 downto 0)         := (others => '0');

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

    position_out  <= position;
    dposition_out <= dposition;

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
        variable operation_selector : integer range 63 downto -1            := - 1;
        variable error              : signed (17 downto 0);
        variable last_error         : signed (17 downto 0);
        variable last_p_p           : SFIXED((pid_p'left-fracBits) downto -fracBits) := (others => '0');
        variable last_i_p           : SFIXED((pid_p'left-fracBits) downto -fracBits) := (others => '0');
        variable last_d_p           : SFIXED((pid_p'left-fracBits) downto -fracBits) := (others => '0');
        --constant SIGNIFICANT_BITS : integer := kp'length + current_sensor'right;
        constant VECTOR_0           : std_logic_vector (47 downto 0)        := (others => '0');
        constant BITS_TP            : integer                               := clog2(sampling_time);
    begin

        wait until rising_edge(clk);

        case operation_selector is

            when -1 =>

                last_error := (others => '0');
                last_p_p   := (others => '0');
                last_i_p   := (others => '0');
                last_d_p   := (others => '0');

                if (en = '1') then
                    operation_selector := 0;
                end if;

            when 0 =>

                error   := resize(unToSigned(current_setpoint) - unToSigned(current_sensor), error'length);
                pid_sel <= "00";
                pid_d   <= std_logic_vector(error);
                pid_a   <= std_logic_vector(last_error);
                pid_b   <= std_logic_vector(kp);
                pid_c   <= VECTOR_0;

                operation_selector := 1;

            when 12 =>

                if (divByBits(vecToSfixed(pid_p, -fracBits), 1) < -max_p_pid) then
                    last_p_p := resize(-max_p_pid, last_p_p'left, last_p_p'right);
                elsif (divByBits(vecToSfixed(pid_p, -fracBits), 1) > max_p_pid) then
                    last_p_p := resize(max_p_pid, last_p_p'left, last_p_p'right);
                else
                    last_p_p := vecToSfixed(pid_p, -fracBits);
                end if;

                pid_sel            <= "01";
                pid_b              <= std_logic_vector(ki);
                pid_c              <= std_logic_vector(last_i_p);
                operation_selector := 13;

            when 24 =>

                if (mulByBits(vecToSfixed(pid_p, -fracBits), BITS_TP+1) < -max_i_pid) then
                    last_i_p := resize(-max_i_pid, last_i_p'left, last_i_p'right);
                elsif (mulByBits(vecToSfixed(pid_p, -fracBits), BITS_TP+1) > max_i_pid) then
                    last_i_p := resize(max_i_pid, last_i_p'left, last_i_p'right);
                else
                    last_i_p := vecToSfixed(pid_p, -fracBits);
                end if;

                pid_sel            <= "10";
                pid_b              <= std_logic_vector(kd);
                pid_c              <= std_logic_vector(last_d_p);
                operation_selector := 25;

            when 36 =>

                if (divByBits(vecToSfixed(pid_p, -fracBits), BITS_TP+1) < -max_p_pid) then
                    last_d_p := resize(-max_d_pid, last_d_p'left, last_d_p'right);
                elsif (divByBits(vecToSfixed(pid_p, -fracBits), BITS_TP+1) > max_d_pid) then
                    last_d_p := resize(max_d_pid, last_d_p'left, last_d_p'right);
                else
                    last_d_p := vecToSfixed(pid_p, -fracBits);
                end if;

                pid_sel            <= "11";
                pid_b              <= std_logic_vector(to_unsigned(1, pid_b'length));  --send 1
                pid_a              <= std_logic_vector(resize(divByBits(last_p_p, 1), intBits, -fracBits)); --make a function for this sfixedToVec
                pid_d              <= std_logic_vector(resize(mulByBits(last_d_p, (BITS_TP+1)), intBits, -fracBits));
                pid_c              <= (intBits+fracBits downto 0 => std_logic_vector(resize(divByBits(last_i_p, (BITS_TP+1)), intBits, -fracBits)), others => '0');--"dot" in wrong place
                operation_selector := 37;

            when 48 =>

                if (vecToSfixed(pid_p, kp'right) < 0) then
                    pid_out <= std_logic_vector(to_SIGNED(0, pid_out'length));
                elsif (vecToSfixed(pid_p, kp'right) > max_pid_pid) then
                    pid_out <= std_logic_vector(resize(max_pid_pid, pid_out'length+max_pid_pid'right-1, max_p_pid'right));
                else
                    pid_out <= std_logic_vector(resize(vecToSfixed(pid_p, kp'right), pid_out'length+max_pid_pid'right-1, max_p_pid'right));
                end if;

                last_error         := error;
                operation_selector := 49;

            when others =>

                pid_a   <= pid_a;
                pid_b   <= pid_b;
                pid_c   <= pid_c;
                pid_d   <= pid_d;
                pid_sel <= pid_sel;

                if (en = '0' and n_res = '0') then
                    operation_selector := - 1;
                elsif (operation_selector = 63) then
                    operation_selector := 0;

                    if ((dposition > (position_histeresis - 1)) or (dposition < - (position_histeresis - 1))) then
                        current_setpoint <= current_setpoint_move;
                    else
                        current_setpoint <= (others => '0');
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
        variable var_pwm_current_register    : unsigned (12 downto 0);
        variable var_output_current_limitter : std_logic;
        --constant PWM_PERIOD_BITS             : integer := clog2(real(pwm_period));

    begin

        wait until rising_edge(clk);

        case cnt is

            when pwm_period =>

                cnt := 0;

            when others =>

                cnt := cnt + 1;

        end case;

        sign_pwm_register(0) := pwm_register(0)(pwm_register(0)'left);
        sign_pwm_register(1) := pwm_register(1)(pwm_register(1)'left);
        sign_pwm_register(2) := pwm_register(2)(pwm_register(2)'left);

        var_pwm_register(0) := abs(pwm_register(0));
        var_pwm_register(1) := abs(pwm_register(1));
        var_pwm_register(2) := abs(pwm_register(2));

        --var_pwm_current_register := unsigned(PID_out(pid_out'left-1 downto pid_out'left-2-PWM_PERIOD_BITS)); --tbd do it with simplified method
        var_pwm_current_register := resize(unsigned(abs(signed(PID_out))), var_pwm_current_register'length);

        if (cnt > var_pwm_current_register) then
            var_output_current_limitter := '0';
        else
            var_output_current_limitter := '1';
        end if;

        if (cnt > var_pwm_register(0)) then
            pwm_ch_u(0) <= std_logic(sign_pwm_register(0)) and var_output_current_limitter and en;
            pwm_ch_u(1) <= (not std_logic(sign_pwm_register(0))) and var_output_current_limitter and en;
        else
            pwm_ch_u(1) <= std_logic(sign_pwm_register(0)) and var_output_current_limitter and en;
            pwm_ch_u(0) <= (not std_logic(sign_pwm_register(0))) and var_output_current_limitter and en;
        end if;

        if (cnt > var_pwm_register(1)) then
            pwm_ch_w(0) <= std_logic(sign_pwm_register(1)) and var_output_current_limitter and en;
            pwm_ch_w(1) <= (not std_logic(sign_pwm_register(1))) and var_output_current_limitter and en;
        else
            pwm_ch_w(1) <= std_logic(sign_pwm_register(1)) and var_output_current_limitter and en;
            pwm_ch_w(0) <= (not std_logic(sign_pwm_register(1))) and var_output_current_limitter and en;
        end if;

        if (cnt > var_pwm_register(2)) then
            pwm_ch_v(0) <= std_logic(sign_pwm_register(2)) and var_output_current_limitter and en;
            pwm_ch_v(1) <= (not std_logic(sign_pwm_register(2))) and var_output_current_limitter and en;
        else
            pwm_ch_v(1) <= std_logic(sign_pwm_register(2)) and var_output_current_limitter and en;
            pwm_ch_v(0) <= (not std_logic(sign_pwm_register(2))) and var_output_current_limitter and en;
        end if;

    end process pwm;

end architecture behavioral;
