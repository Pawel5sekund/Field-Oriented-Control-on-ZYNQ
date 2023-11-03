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
        sampling_time       : real                 := 0.000000064;    --64ns
        step_scale          : integer              := 16;
        position_histeresis : integer              := 8;
        pwm_period          : integer              := 2047;
        full_rotate_pulses  : integer              := 4095;
        fracBits            : integer              := 8;
        intBits             : integer              := 17-fracBits;
        max_p_pid           : SFIXED(0 downto -17) := to_sfixed(0.9999, 0, -17);
        min_p_pid           : SFIXED(0 downto -17) := to_sfixed(-0.9999, 0, -17);
        max_i_pid           : SFIXED(0 downto -17) := to_sfixed(0.9999, 0, -17);
        min_i_pid           : SFIXED(0 downto -17) := to_sfixed(-0.9999, 0, -17);
        max_d_pid           : SFIXED(0 downto -17) := to_sfixed(0.9999, 0, -17);
        min_d_pid           : SFIXED(0 downto -17) := to_sfixed(-0.9999, 0, -17);
        max_pid_pid         : SFIXED(0 downto -17) := to_sfixed(0.9999, 0, -17);
        min_pid_pid         : SFIXED(0 downto -17) := to_sfixed(-0.9999, 0, -17)
        );
    --  Port ( );
    port (
        -- data input
        en                              : in  std_logic;
        n_res                           : in  std_logic;
        CLK                             : in  std_logic;
        currentSensorReading                  : in  sfixed(0 downto -17);
        encoder                         : in  std_logic_vector(1 downto 0);
        dir                             : in  std_logic;
        step                            : in  std_logic;
        kp                              : in  sFIXED (intBits downto -fracBits);
        ki                              : in  sFIXED (intBits downto -fracBits);
        kd                              : in  sFIXED (intBits downto -fracBits);
        current_setpoint_move           : in  sfixed (1 downto -11);  --tbd change to unsigned
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

    component PID is
        generic (
            --sampling_time : real                             := 0.000000064;  --64ns
            fracBits    : integer              := 17;
            intBits     : integer              := 0;
            max_p_pid   : SFIXED(0 downto -17) := to_sfixed(0.9999, 0, -17);
            min_p_pid   : SFIXED(0 downto -17) := to_sfixed(-0.9999, 0, -17);
            max_i_pid   : SFIXED(0 downto -17) := to_sfixed(0.9999, 0, -17);
            min_i_pid   : SFIXED(0 downto -17) := to_sfixed(-0.9999, 0, -17);
            max_d_pid   : SFIXED(0 downto -17) := to_sfixed(0.9999, 0, -17);
            min_d_pid   : SFIXED(0 downto -17) := to_sfixed(-0.9999, 0, -17);
            max_pid_pid : SFIXED(0 downto -17) := to_sfixed(0.9999, 0, -17);
            min_pid_pid : SFIXED(0 downto -17) := to_sfixed(-0.9999, 0, -17)
            );
        port (
            en       : in  std_logic;
            n_res    : in  std_logic;
            CLK      : in  std_logic;
            kp       : in  sfixed (0 downto -17);
            ki       : in  sfixed (0 downto -17);
            kd       : in  sfixed (0 downto -17);
            setpoint : in  sfixed (0 downto -17);
            reading  : in  sfixed (0 downto -17);
            pid_out  : out sfixed (0 downto -17) := (others => '0')
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
    
    component FOC_torqueVectorGenerator is
        generic(
            amountScalingParameters : integer               := 1;
            positionScaler          : sfixed (0 downto -17) := resize(to_sfixed(1.0/1024.0, 0, -17), 0, -17)  --1/(encoder pulses per electrical rotationn
            );
        port (
            CLK               : in  std_logic;
            position          : in  signed (17 downto 0);
            vectorPosition    : in  sfixed (0 downto -17);
            scalingParameters : in  scalingParametersArray (amountScalingParameters-1 downto 0);
            PWMOutput         : out type_PWM_register(2 downto 0)
            );
    end component;

    signal position         : signed (14 downto 0)           := (others => '0');
    signal dposition        : signed (12 downto 0)           := (others => '0');
    signal pid_sel          : std_logic_vector (1 downto 0)  := (others => '0');
    signal pid_a            : std_logic_vector (17 downto 0) := (others => '0');
    signal pid_b            : std_logic_vector (17 downto 0) := (others => '0');
    signal pid_c            : std_logic_vector (47 downto 0) := (others => '0');
    signal pid_d            : std_logic_vector (17 downto 0) := (others => '0');
    signal pid_p            : std_logic_vector (47 downto 0) := (others => '0');
    signal pid_out          : sfixed (0 downto -17)          := (others => '0');
    signal PWMRegister      : type_PWM_register (2 downto 0);
    signal current_setpoint : sfixed (1 downto -11)          := (others => '0');
    signal vectorPosition    : sfixed (0 downto -17);
    signal scalingParameters :  scalingParametersArray (0 downto 0);

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

    torqueVectorGenerator : component FOC_torqueVectorGenerator
        generic map(
            amountScalingParameters => 1,
            positionScaler  => resize(to_sfixed(1.0/1024.0, 0, -17), 0, -17)
            )
        port map(
            CLK          => CLK,
            position     => position,
            vectorPosition    => vectorPosition,
            scalingParameters      => scalingParameters,
            PWMOutput => PWMRegister
            );
    ----------------------------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------------------------

    PID_current : component PID
        generic map (
            --sampling_time => 0.000000064,  --64ns
            max_p_pid   => max_p_pid,
            max_i_pid   => max_i_pid,
            max_d_pid   => max_d_pid,
            max_pid_pid => max_p_pid,
            min_p_pid   => min_p_pid,
            min_i_pid   => min_i_pid,
            min_d_pid   => min_d_pid,
            min_pid_pid => min_pid_pid
            )
        port map (
            en       => en,
            n_res    => n_res,
            CLK      => CLK,
            kp       => kp,
            ki       => ki,
            kd       => kd,
            setpoint => current_setpoint,
            reading  => currentSensorReading,
            pid_out  => pid_out
            );

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

        --varPWMCurrentRegulatorRegister := resize(signed(std_logic_vector(PID_out(0 downto -12)))), varPWMCurrentRegulatorRegister'length);

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
