--vhdl-linter-disable type-resolved
--vhdl-linter-disable port-declaration
library ieee;

library foc_lib;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use foc_lib.foc_types.all;
use ieee.fixed_pkg.all;

entity FOC_core is
    generic (
        sampling_time       : real                             := 0.000000064;  --64ns
        step_scale          : integer                          := 16;
        position_histeresis : integer                          := 8;
        pwm_period          : integer                          := 2047;
        full_rotate_pulses  : integer                          := 4095;
        fracBits            : integer                          := 8;
        intBits             : integer                          := 17-fracBits;
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
        PWM_CH_U                        : out std_logic_vector(1 downto 0);
        PWM_CH_W                        : out std_logic_vector(1 downto 0);
        PWM_CH_V                        : out std_logic_vector(1 downto 0)
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
    signal PWMRegister      : type_PWM_register (2 downto 0);
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
            clk                             => CLK,
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
            clk          => CLK,
            position     => position,
            dposition    => dposition,
            pid_out      => pid_out,
            pwm_register => PWMRegister
            );

    ----------------------------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------------------------

    pid_calc_dsp : component pid_dsp
        port map(
            clk => CLK,
            sel => pid_sel,
            a   => pid_a,
            b   => pid_b,
            c   => pid_c,
            d   => pid_d,
            p   => pid_p
            );

    pid : process is
        variable operationSelector : integer range 63 downto -1                     := - 1;
        variable error             : signed (17 downto 0);
        variable lastError         : signed (17 downto 0);
        variable last_P_P          : SFIXED((pid_p'left-fracBits) downto -fracBits) := (others => '0');
        variable last_I_P          : SFIXED((pid_p'left-fracBits) downto -fracBits) := (others => '0');
        variable last_D_P          : SFIXED((pid_p'left-fracBits) downto -fracBits) := (others => '0');
        constant VECTOR_0          : std_logic_vector (47 downto 0)                 := (others => '0');
        constant BITS_TP           : integer                                        := clog2(sampling_time);
    begin

        wait until rising_edge(CLK);

        case operationSelector is

            when -1 =>

                lastError := (others => '0');
                last_P_P  := (others => '0');
                last_I_P  := (others => '0');
                last_D_P  := (others => '0');

                if (en = '1') then
                    operationSelector := 0;
                end if;

            when 0 =>

                error   := resize(unToSigned(current_setpoint) - unToSigned(current_sensor), error'length);
                pid_sel <= "00";
                pid_d   <= std_logic_vector(error);
                pid_a   <= std_logic_vector(lastError);
                pid_b   <= std_logic_vector(kp);
                pid_c   <= VECTOR_0;

                operationSelector := 1;

            when 12 =>

                if (divByBits(vecToSfixed(pid_p, -fracBits), 1) < -max_p_pid) then
                    last_P_P := resize(-max_p_pid, last_P_P'left, last_P_P'right);
                elsif (divByBits(vecToSfixed(pid_p, -fracBits), 1) > max_p_pid) then
                    last_P_P := resize(max_p_pid, last_P_P'left, last_P_P'right);
                else
                    last_P_P := vecToSfixed(pid_p, -fracBits);
                end if;

                pid_sel           <= "01";
                pid_b             <= std_logic_vector(ki);
                pid_c             <= std_logic_vector(last_I_P);
                operationSelector := 13;

            when 24 =>

                if (mulByBits(vecToSfixed(pid_p, -fracBits), BITS_TP+1) < -max_i_pid) then
                    last_I_P := resize(-max_i_pid, last_I_P'left, last_I_P'right);
                elsif (mulByBits(vecToSfixed(pid_p, -fracBits), BITS_TP+1) > max_i_pid) then
                    last_I_P := resize(max_i_pid, last_I_P'left, last_I_P'right);
                else
                    last_I_P := vecToSfixed(pid_p, -fracBits);
                end if;

                pid_sel           <= "10";
                pid_b             <= std_logic_vector(kd);
                pid_c             <= std_logic_vector(last_D_P);
                operationSelector := 25;

            when 36 =>

                if (divByBits(vecToSfixed(pid_p, -fracBits), BITS_TP+1) < -max_p_pid) then
                    last_D_P := resize(-max_d_pid, last_D_P'left, last_D_P'right);
                elsif (divByBits(vecToSfixed(pid_p, -fracBits), BITS_TP+1) > max_d_pid) then
                    last_D_P := resize(max_d_pid, last_D_P'left, last_D_P'right);
                else
                    last_D_P := vecToSfixed(pid_p, -fracBits);
                end if;

                pid_sel           <= "11";
                pid_b             <= std_logic_vector(to_unsigned(1, pid_b'length));  --send 1
                pid_a             <= std_logic_vector(resize(divByBits(last_P_P, 1), intBits, -fracBits));  --make a function for this sfixedToVec
                pid_d             <= std_logic_vector(resize(mulByBits(last_D_P, (BITS_TP+1)), intBits, -fracBits));
                pid_c             <= (intBits+fracBits downto 0 => std_logic_vector(resize(divByBits(last_I_P, (BITS_TP+1)), intBits, -fracBits)), others => '0');  --"dot" in wrong place
                operationSelector := 37;

            when 48 =>

                if (vecToSfixed(pid_p, fracBits) < 0) then
                    pid_out <= std_logic_vector(to_SIGNED(0, pid_out'length));
                elsif (vecToSfixed(pid_p, fracBits) > max_pid_pid) then
                    pid_out <= std_logic_vector(resize(max_pid_pid, intBits, -fracBits));
                else
                    pid_out <= std_logic_vector(resize(vecToSfixed(pid_p, fracBits), intBits, -fracBits));
                end if;

                lastError         := error;
                operationSelector := 49;

            when others =>

                pid_a   <= pid_a;
                pid_b   <= pid_b;
                pid_c   <= pid_c;
                pid_d   <= pid_d;
                pid_sel <= pid_sel;

                if (en = '0' and n_res = '0') then
                    operationSelector := - 1;
                elsif (operationSelector = 63) then
                    operationSelector := 0;

                    if ((dposition > (position_histeresis - 1)) or (dposition < - (position_histeresis - 1))) then
                        current_setpoint <= current_setpoint_move;
                    else
                        current_setpoint <= (others => '0');
                    end if;
                else
                    operationSelector := operationSelector + 1;
                end if;

        end case;

    end process pid;

    ----------------------------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------------------------

    pwm : process is

        variable CNT                            : integer range 0 to pwm_period;
        variable CNT_DIR                        : integer := 1;
        variable varPWMRegister                 : type_PWM_register (2 downto 0);
        variable signPWMRegister                : std_logic_vector(varPWMRegister'range);
        variable varPWMCurrentRegulatorRegister : unsigned (12 downto 0);
        variable varOutPWMCurrentRegulator      : std_logic;

    begin

        wait until rising_edge(CLK);

        case CNT is

            when pwm_period =>
                CNT_DIR := -1;

            when 0 =>
                CNT_DIR := 1;

            when others =>
                CNT := CNT + CNT_DIR;

        end case;

        signPWMRegister(0) := PWMRegister(0)(PWMRegister(0)'left);
        signPWMRegister(1) := PWMRegister(1)(PWMRegister(1)'left);
        signPWMRegister(2) := PWMRegister(2)(PWMRegister(2)'left);

        varPWMRegister(0) := abs(PWMRegister(0));
        varPWMRegister(1) := abs(PWMRegister(1));
        varPWMRegister(2) := abs(PWMRegister(2));

        varPWMCurrentRegulatorRegister := resize(signed(PID_out), varPWMCurrentRegulatorRegister'length);

        if (CNT > varPWMCurrentRegulatorRegister) then
            varOutPWMCurrentRegulator := '0';
        else
            varOutPWMCurrentRegulator := '1';
        end if;

        if (CNT > varPWMRegister(0)) then
            PWM_CH_U(0) <= std_logic(signPWMRegister(0)) and varOutPWMCurrentRegulator and en;
            PWM_CH_U(1) <= (not std_logic(signPWMRegister(0))) and varOutPWMCurrentRegulator and en;
        else
            PWM_CH_U(1) <= std_logic(signPWMRegister(0)) and varOutPWMCurrentRegulator and en;
            PWM_CH_U(0) <= (not std_logic(signPWMRegister(0))) and varOutPWMCurrentRegulator and en;
        end if;

        if (CNT > varPWMRegister(1)) then
            PWM_CH_W(0) <= std_logic(signPWMRegister(1)) and varOutPWMCurrentRegulator and en;
            PWM_CH_W(1) <= (not std_logic(signPWMRegister(1))) and varOutPWMCurrentRegulator and en;
        else
            PWM_CH_W(1) <= std_logic(signPWMRegister(1)) and varOutPWMCurrentRegulator and en;
            PWM_CH_W(0) <= (not std_logic(signPWMRegister(1))) and varOutPWMCurrentRegulator and en;
        end if;

        if (CNT > varPWMRegister(2)) then
            PWM_CH_V(0) <= std_logic(signPWMRegister(2)) and varOutPWMCurrentRegulator and en;
            PWM_CH_V(1) <= (not std_logic(signPWMRegister(2))) and varOutPWMCurrentRegulator and en;
        else
            PWM_CH_V(1) <= std_logic(signPWMRegister(2)) and varOutPWMCurrentRegulator and en;
            PWM_CH_V(0) <= (not std_logic(signPWMRegister(2))) and varOutPWMCurrentRegulator and en;
        end if;

    end process pwm;

end architecture behavioral;
