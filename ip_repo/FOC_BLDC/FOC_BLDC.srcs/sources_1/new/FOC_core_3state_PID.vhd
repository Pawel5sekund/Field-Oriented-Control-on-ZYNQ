--vhdl-linter-disable type-resolved
--vhdl-linter-disable port-declaration
library ieee;

library foc_lib;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use foc_lib.foc_types.all;
use ieee.fixed_pkg.all;

entity FOC_core_X is
    generic (
        sampling_time       : real    := 0.000000064;                 --64ns
        step_scale          : integer := 16;
        position_histeresis : integer := 8;
        pwm_period          : integer := 4095;
        full_rotate_pulses  : integer := 4095;
        fracBits            : integer := 8;
        intBits             : integer := 17-fracBits
        );
    --  Port ( );
    port (
        --TESTING PURPOSES
        S_AXI_ACLK                      : in  std_logic;
        -- signal input
        en                              : in  std_logic;
        n_res                           : in  std_logic;
        CLK                             : in  std_logic;
        currentSensorReading            : in  sfixed(0 downto -17);
        encoder                         : in  std_logic_vector(1 downto 0);
        dir                             : in  std_logic;
        step                            : in  std_logic;
        --positionController
        current_setpoint_move           : in  sfixed (0 downto -17);  --tbd change to unsigned
        position_calibration            : in  signed (14 downto 0);
        position_calibration_set_signal : in  std_logic;
        --PID
        kp                              : in  sFIXED (12 downto -22);
        ki                              : in  sFIXED (12 downto -22);
        kd                              : in  sFIXED (12 downto -22);
        max_p_pid                       : in  SFIXED(0 downto -17);
        min_p_pid                       : in  SFIXED(0 downto -17);
        max_i_pid                       : in  SFIXED(0 downto -17);
        min_i_pid                       : in  SFIXED(0 downto -17);
        max_d_pid                       : in  SFIXED(0 downto -17);
        min_d_pid                       : in  SFIXED(0 downto -17);
        max_pid_pid                     : in  SFIXED(0 downto -17);
        min_pid_pid                     : in  SFIXED(0 downto -17);
        --PWM
        PWM_CH_U                        : out std_logic_vector(1 downto 0);
        PWM_CH_W                        : out std_logic_vector(1 downto 0);
        PWM_CH_V                        : out std_logic_vector(1 downto 0);
        --DFT
        DFT_PIDout                      : out sfixed (0 downto -17);
        DFT_dPosition                   : out signed (12 downto 0);
        DFT_position                    : out signed (14 downto 0);
        DFT_electricBrake               : out std_logic;
        DFT_PWMRegister                 : out type_PWM_register (2 downto 0);
        DFT_PID_currentSetpointMove     : out sfixed (0 downto -17);
        DFT_vectorPosition              : out sFIXED (0 downto -17)
        );
end entity FOC_core_x;

architecture behavioral of FOC_core_x is

    component PID is
        generic (
            --sampling_time : real                             := 0.000000064;  --64ns
            fracBits : integer := 17;
            intBits  : integer := 0
            );
        port (
            en          : in  std_logic;
            n_res       : in  std_logic;
            CLK         : in  std_logic;
            kp          : in  sfixed (12 downto -22);
            ki          : in  sfixed (12 downto -22);
            kd          : in  sfixed (12 downto -22);
            max_p_pid   : in  SFIXED(0 downto -17);
            min_p_pid   : in  SFIXED(0 downto -17);
            max_i_pid   : in  SFIXED(0 downto -17);
            min_i_pid   : in  SFIXED(0 downto -17);
            max_d_pid   : in  SFIXED(0 downto -17);
            min_d_pid   : in  SFIXED(0 downto -17);
            max_pid_pid : in  SFIXED(0 downto -17);
            min_pid_pid : in  SFIXED(0 downto -17);
            setpoint    : in  sfixed (0 downto -17);
            reading     : in  sfixed (0 downto -17);
            pid_out     : out sfixed (0 downto -17) := (others => '0')
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

    component FOC_capacitiveFilter is
        generic (
            capacity   : integer := 10;
            histeresis : integer := 4
            );
        port (
            CLK    : in  std_logic;
            INPUT  : in  std_logic;
            OUTPUT : out std_logic
            );
    end component;

    component FOC_deadTimeMOSFETsHandler is
        generic (
            deadTime : integer := 255
            );
        port(
            CLK   : in  std_logic;
            A_in  : in  std_logic;
            B_in  : in  std_logic;
            A_out : out std_logic;
            B_out : out std_logic
            );
    end component;

    --TESTING PURPOSES
    component ILA_FOC_core is
        port (
            clk     : in std_logic;
            probe0  : in std_logic_vector(12 downto 0);
            probe1  : in std_logic_vector(12 downto 0);
            probe2  : in std_logic_vector(12 downto 0);
            probe3  : in std_logic_vector(17 downto 0);
            probe4  : in std_logic_vector(17 downto 0);
            probe5  : in std_logic_vector(17 downto 0);
            probe6  : in std_logic_vector(17 downto 0);
            probe7  : in std_logic_vector(17 downto 0);
            probe8  : in std_logic_vector(0 downto 0);
            probe9  : in std_logic_vector(0 downto 0);
            probe10 : in std_logic_vector(0 downto 0);
            probe11 : in std_logic_vector(1 downto 0);
            probe12 : in std_logic_vector(1 downto 0);
            probe13 : in std_logic_vector(1 downto 0);
            probe14 : in std_logic_vector(1 downto 0);
            probe15 : in std_logic_vector(0 downto 0)
            );
    end component;
    --------------------------------------------------------

    signal position                                            : signed (14 downto 0)  := (others => '0');
    signal dPosition                                           : signed (12 downto 0)  := (others => '0');
    signal PWMRegister                                         : type_PWM_register (2 downto 0);
    signal current_setpoint                                    : sfixed (0 downto -17) := (others => '0');
    signal vectorPosition                                      : sfixed (0 downto -17);
    signal scalingParameters                                   : scalingParametersArray (0 downto 0);
    constant positional_3levelSwitching_triggerPlus            : sfixed (0 downto -17) := vecToSfixed(std_logic_vector(to_signed(position_histeresis, 18)), -17);
    constant positional_3levelSwitching_triggerMinus           : sfixed (0 downto -17) := vecToSfixed(std_logic_vector(to_signed(-position_histeresis, 18)), -17);
    signal positional_3levelSwitching_reading                  : sfixed (0 downto -17);
    signal electricBrake_sfixed                                : sfixed (0 downto -17);
    signal electricBrake                                       : std_logic;
    constant positional_3levelSwitching_setpoint               : sfixed (0 downto -17) := to_sfixed(0.0, 0, -17);
    constant positional_3levelSwitching_outputMid              : sfixed (0 downto -17) := to_sfixed(0.0, 0, -17);
    constant torqueVectorGenerator_3levelSwitching_outputPlus  : sfixed (0 downto -17) := to_sfixed(1.0, 0, -17);
    constant torqueVectorGenerator_3levelSwitching_outputMid   : sfixed (0 downto -17) := to_sfixed(0.0, 0, -17);
    constant torqueVectorGenerator_3levelSwitching_outputMinus : sfixed (0 downto -17) := to_sfixed(-1.0, 0, -17);
    signal filteredSTEP                                        : std_logic;
    signal filteredDIR                                         : std_logic;
    signal filteredEncoder                                     : std_logic_vector(1 downto 0);
    signal noSafe_PWM_CH_U                                     : std_logic_vector(1 downto 0);
    signal noSafe_PWM_CH_W                                     : std_logic_vector(1 downto 0);
    signal noSafe_PWM_CH_V                                     : std_logic_vector(1 downto 0);

begin

    --TESTING PURPOSES
    ILA_main : ILA_FOC_core
        port map (
            clk     => S_AXI_ACLK,
            probe0  => std_logic_vector(PWMRegister(0)),
            probe1  => std_logic_vector(PWMRegister(1)),
            probe2  => std_logic_vector(PWMRegister(2)),
            probe3  => std_logic_vector(current_setpoint),
            probe4  => std_logic_vector(vectorPosition),
            probe5  => std_logic_vector(scalingParameters(0)),
            probe6  => std_logic_vector(positional_3levelSwitching_reading),
            probe7  => std_logic_vector(electricBrake_sfixed),
            probe8  => (0 => electricBrake),
            probe9  => (0 => filteredSTEP),
            probe10 => (0 => filteredDIR),
            probe11 => filteredEncoder,
            probe12 => noSafe_PWM_CH_U,
            probe13 => noSafe_PWM_CH_V,
            probe14 => noSafe_PWM_CH_W,
            probe15 => (0 => CLK)
            );
    --------------------------------------------------------

    ----------------------------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------------------------

    filteringSTEPSignal : FOC_capacitiveFilter
        generic map (
            capacity   => 10,
            histeresis => 4
            )
        port map (
            CLK    => CLK,
            INPUT  => STEP,
            OUTPUT => filteredSTEP
            );

    filteringDIRSignal : FOC_capacitiveFilter
        generic map (
            capacity   => 10,
            histeresis => 4
            )
        port map (
            CLK    => CLK,
            INPUT  => DIR,
            OUTPUT => filteredDIR
            );

    filteringEncoder0Signal : FOC_capacitiveFilter
        generic map (
            capacity   => 10,
            histeresis => 4
            )
        port map (
            CLK    => CLK,
            INPUT  => encoder(0),
            OUTPUT => filteredEncoder(0)
            );

    filteringEncoder1PSignal : FOC_capacitiveFilter
        generic map (
            capacity   => 10,
            histeresis => 4
            )
        port map (
            CLK    => CLK,
            INPUT  => encoder(1),
            OUTPUT => filteredEncoder(1)
            );


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
            encoder                         => filteredEncoder,
            position_calibration            => position_calibration,
            position_calibration_set_signal => position_calibration_set_signal,
            position                        => position,
            dposition                       => dPosition,
            step                            => filteredSTEP,
            dir                             => filteredDIR
            );

    DFT_position  <= position;
    DFT_dPosition <= dPosition;

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

    DFT_vectorPosition <= vectorPosition;
    ----------------------------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------------------------

    PID_current : component PID
--        generic map (
        --sampling_time => 0.000000064,  --64ns
--            )
        port map (
            en          => not(electricBrake),
            n_res       => n_res,
            CLK         => CLK,
            kp          => kp,
            ki          => ki,
            kd          => kd,
            setpoint    => current_setpoint,
            reading     => currentSensorReading,
            max_p_pid   => max_p_pid,
            max_i_pid   => max_i_pid,
            max_d_pid   => max_d_pid,
            max_pid_pid => max_p_pid,
            min_p_pid   => min_p_pid,
            min_i_pid   => min_i_pid,
            min_d_pid   => min_d_pid,
            min_pid_pid => min_pid_pid,
            pid_out     => scalingParameters(0)
            );

    DFT_PIDout <= scalingParameters(0);

    positional_3levelSwitching_reading <= vecToSfixed(std_logic_vector(resize(dPosition, 18)), -17);

    --PID_3levelSwitching : component FOC_3levelSwitching
    --    port map(
    --        CLK          => CLK,
    --        triggerPlus  => positional_3levelSwitching_triggerPlus,
    --        triggerMinus => positional_3levelSwitching_triggerMinus,
    --        outputPlus   => current_setpoint_move,
    --        outputMinus  => current_setpoint_move,
    --        outputMid    => positional_3levelSwitching_outputMid,
    --        reading      => positional_3levelSwitching_reading,
    --        setpoint     => positional_3levelSwitching_setpoint,
    --        output       => current_setpoint
    --        );
    current_setpoint <= current_setpoint_move;
    DFT_PID_currentSetpointMove <= current_setpoint;

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
            PWM_CH_U      => noSafe_PWM_CH_U,
            PWM_CH_W      => nosafe_PWM_CH_W,
            PWM_CH_V      => noSafe_PWM_CH_V
            );

    DFT_PWMRegister <= PWMRegister;

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

    DFT_electricBrake <= electricBrake;

    CH_U : FOC_deadTimeMOSFETsHandler
        generic map (
            deadTime => 50
            )
        port map(
            CLK   => CLK,
            A_in  => noSafe_PWM_CH_U(0),
            B_in  => noSafe_PWM_CH_U(1),
            A_out => PWM_CH_U(0),
            B_out => PWM_CH_U(1)
            );

    CH_W : FOC_deadTimeMOSFETsHandler
        generic map (
            deadTime => 50
            )
        port map(
            CLK   => CLK,
            A_in  => noSafe_PWM_CH_W(0),
            B_in  => noSafe_PWM_CH_W(1),
            A_out => PWM_CH_W(0),
            B_out => PWM_CH_W(1)
            );

    CH_V : FOC_deadTimeMOSFETsHandler
        generic map (
            deadTime => 50
            )
        port map(
            CLK   => CLK,
            A_in  => noSafe_PWM_CH_V(0),
            B_in  => noSafe_PWM_CH_V(1),
            A_out => PWM_CH_V(0),
            B_out => PWM_CH_V(1)
            );


end architecture behavioral;
