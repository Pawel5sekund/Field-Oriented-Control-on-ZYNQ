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
        pwm_period          : integer              := 4095;
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
        currentSensorReading            : in  sfixed(0 downto -17);
        encoder                         : in  std_logic_vector(1 downto 0);
        dir                             : in  std_logic;
        step                            : in  std_logic;
        kp                              : in  sFIXED (intBits downto -fracBits);
        ki                              : in  sFIXED (intBits downto -fracBits);
        kd                              : in  sFIXED (intBits downto -fracBits);
        current_setpoint_move           : in  sfixed (0 downto -17);  --tbd change to unsigned
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

    component FOC_3levelSwitching is
        port(
            CLK          : in  std_logic;
            triggerPlus  : in  sfixed(0 downto -17);
            triggerMinus : in  sfixed(0 downto -17);
            outputPlus   : in  sfixed(0 downto -17);
            outputMinus  : in  sfixed(0 downto -17);
            outputMid    : in  sfixed(0 downto -17);
            reading      : in  sfixed(0 downto -17);
            setpoint     : in  sfixed(0 downto -17);
            output       : out sfixed(0 downto -17)
            );
    end component;

    component PWM is
        generic (
            PWMPeriod : integer := pwm_period
            );
        port (
            CLK           : in  std_logic;
            electricBrake : in  std_logic;
            PWMValues     : in  type_PWM_register(2 downto 0);
            PWM_CH_U      : out std_logic_vector(1 downto 0);
            PWM_CH_W      : out std_logic_vector(1 downto 0);
            PWM_CH_V      : out std_logic_vector(1 downto 0)
            );
    end component;

    signal position                                            : signed (14 downto 0)           := (others => '0');
    signal dposition                                           : signed (12 downto 0)           := (others => '0');
    signal pid_sel                                             : std_logic_vector (1 downto 0)  := (others => '0');
    signal pid_a                                               : std_logic_vector (17 downto 0) := (others => '0');
    signal pid_b                                               : std_logic_vector (17 downto 0) := (others => '0');
    signal pid_c                                               : std_logic_vector (47 downto 0) := (others => '0');
    signal pid_d                                               : std_logic_vector (17 downto 0) := (others => '0');
    signal pid_p                                               : std_logic_vector (47 downto 0) := (others => '0');
    signal pid_out                                             : sfixed (0 downto -17)          := (others => '0');
    signal PWMRegister                                         : type_PWM_register (2 downto 0);
    signal current_setpoint                                    : sfixed (0 downto -17)          := (others => '0');
    signal vectorPosition                                      : sfixed (0 downto -17);
    signal scalingParameters                                   : scalingParametersArray (0 downto 0);
    signal positional_3levelSwitching_triggerPlus              : sfixed (0 downto -17);
    signal positional_3levelSwitching_triggerMinus             : sfixed (0 downto -17);
    signal positional_3levelSwitching_reading                  : sfixed (0 downto -17);
    signal electricBrake_sfixed : sfixed (0 downto -17);
    signal electricBrake : std_logic;
    constant positional_3levelSwitching_setpoint               : sfixed (0 downto -17)          := to_sfixed(0.0, 0, -17);
    constant positional_3levelSwitching_outputMid              : sfixed (0 downto -17)          := to_sfixed(0.0, 0, -17);
    constant torqueVectorGenerator_3levelSwitching_outputPlus  : sfixed (0 downto -17)          := to_sfixed(1.0, 0, -17);
    constant torqueVectorGenerator_3levelSwitching_outputMid   : sfixed (0 downto -17)          := to_sfixed(0.0, 0, -17);
    constant torqueVectorGenerator_3levelSwitching_outputMinus : sfixed (0 downto -17)          := to_sfixed(-1.0, 0, -17);


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
            positionScaler          => resize(to_sfixed(1.0/1024.0, 0, -17), 0, -17)
            )
        port map(
            CLK               => CLK,
            position          => resize(position, 18),
            vectorPosition    => vectorPosition,
            scalingParameters => scalingParameters,
            PWMOutput         => PWMRegister
            );

    torqueVectorGenerator_3levelSwitching : component FOC_3levelSwitching
        port map(
            CLK          => CLK,
            triggerPlus  => positional_3levelSwitching_triggerPlus,
            triggerMinus => positional_3levelSwitching_triggerMinus,
            outputPlus   => torqueVectorGenerator_3levelSwitching_outputPlus,
            outputMinus  => torqueVectorGenerator_3levelSwitching_outputMinus,
            outputMid    => torqueVectorGenerator_3levelSwitching_outputMid,
            reading      => positional_3levelSwitching_reading,
            setpoint     => positional_3levelSwitching_setpoint,
            output       => vectorPosition
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
            pid_out  => scalingParameters(0)
            );

    positional_3levelSwitching_reading      <= vecToSfixed(std_logic_vector(resize(dposition, 18)), -17);
    positional_3levelSwitching_triggerPlus  <= vecToSfixed(std_logic_vector(to_signed(position_histeresis, 18)), -17);
    positional_3levelSwitching_triggerMinus <= vecToSfixed(std_logic_vector(to_signed(-position_histeresis, 18)), -17);

    PID_3levelSwitching : component FOC_3levelSwitching
        port map(
            CLK          => CLK,
            triggerPlus  => positional_3levelSwitching_triggerPlus,
            triggerMinus => positional_3levelSwitching_triggerMinus,
            outputPlus   => current_setpoint_move,
            outputMinus  => current_setpoint_move,
            outputMid    => positional_3levelSwitching_outputMid,
            reading      => positional_3levelSwitching_reading,
            setpoint     => positional_3levelSwitching_setpoint,
            output       => current_setpoint
            );

    ----------------------------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------------------------

    PWM_FOC : component PWM
        generic map (
            PWMPeriod => pwm_period
            )
        port map (
            CLK           => CLK,
            electricBrake => electricBrake,
            PWMValues     => PWMRegister,
            PWM_CH_U      => PWM_CH_U,
            PWM_CH_W      => PWM_CH_W,
            PWM_CH_V      => PWM_CH_V
            );

        PWM_FOC_3levelSwitching : component FOC_3levelSwitching
        port map(
            CLK          => CLK,
            triggerPlus  => positional_3levelSwitching_triggerPlus,
            triggerMinus => positional_3levelSwitching_triggerMinus,
            outputPlus   => to_sfixed(0.0, 0, -17),
            outputMinus  => to_sfixed(0.0, 0, -17),
            outputMid    => to_sfixed(1.0, 0, -17),
            reading      => positional_3levelSwitching_reading,
            setpoint     => positional_3levelSwitching_setpoint,
            output       => electricBrake_sfixed
            );

            electricBrake <= std_logic(or(std_logic_vector(electricBrake_sfixed)));

end architecture behavioral;
