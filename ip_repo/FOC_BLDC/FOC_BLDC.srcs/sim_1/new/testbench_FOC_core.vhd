library ieee;

library foc_lib;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use foc_lib.foc_types.all;
use ieee.fixed_pkg.all;

entity testbench_FOC_core is
--  Port ( );
end testbench_FOC_core;

architecture Behavioral of testbench_FOC_core is

    component FOC_core is
        generic (
            sampling_time       : real                 := 0.000000064;  --64ns
            step_scale          : integer              := 16;
            position_histeresis : integer              := 8;
            pwm_period          : integer              := 4095;
            full_rotate_pulses  : integer              := 4095;
            fracBits            : integer              := 17;
            intBits             : integer              := 0;
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
    end component;

    signal CLK                  : std_logic;
    constant valuesOutputAmount : integer                                         := 8;
    constant valuesInputAmount  : integer                                         := 8;
    signal outputValues         : valuesArrayAXI4 (valuesOutputAmount-1 downto 0) := (others => (others => '0'));
    signal inputValues          : valuesArrayAXI4 (valuesInputAmount-1 downto 0)  := (others => (others => '0'));
    signal currentSensorReading : sfixed(0 downto -17)                            := (others => '0');
    signal encoder              : std_logic_vector(1 downto 0);
    signal dir                  : std_logic;
    signal step                 : std_logic;
    signal dposition_out        : signed (12 downto 0);
    signal position_out         : signed (14 downto 0);
    signal PWM_CH_U             : std_logic_vector(1 downto 0);
    signal PWM_CH_W             : std_logic_vector(1 downto 0);
    signal PWM_CH_V             : std_logic_vector(1 downto 0);

begin

    FOC : FOC_core
        generic map (
            sampling_time       => 0.000000064,  --64ns
            step_scale          => 4,
            position_histeresis => 8,
            pwm_period          => 4095,
            full_rotate_pulses  => 4095,
            fracBits            => 17,
            intBits             => 0,
            max_p_pid           => to_sfixed(0.9999, 0, -17),
            min_p_pid           => to_sfixed(-0.9999, 0, -17),
            max_i_pid           => to_sfixed(0.9999, 0, -17),
            min_i_pid           => to_sfixed(-0.9999, 0, -17),
            max_d_pid           => to_sfixed(0.9999, 0, -17),
            min_d_pid           => to_sfixed(-0.9999, 0, -17),
            max_pid_pid         => to_sfixed(0.9999, 0, -17),
            min_pid_pid         => to_sfixed(0, 0, -17)
            )
        port map (
            en                              => '1',
            n_res                           => '0',
            CLK                             => CLK,
            currentSensorReading            => currentSensorReading,
            encoder                         => encoder,
            dir                             => dir,
            step                            => step,
            kp                              => vecToSfixed(inputValues(1), -17),
            ki                              => vecToSfixed(inputValues(2), -17),
            kd                              => vecToSfixed(inputValues(3), -17),
            current_setpoint_move           => vecToSfixed(inputValues(0), -17),
            position_calibration            => signed(inputValues(4)(14 downto 0)),
            position_calibration_set_signal => inputValues(5)(0),
            -- data output
            dposition_out                   => dposition_out,
            position_out                    => position_out,
            PWM_CH_U                        => PWM_CH_U,
            PWM_CH_W                        => PWM_CH_W,
            PWM_CH_V                        => PWM_CH_V
            );


    CLK_process : process
    begin
        for i in 0 to 1000000 loop
            wait for 10ns;
            CLK <= '1';
            wait for 10ns;
            CLK <= '0';
        end loop;
    end process CLK_process;

    proc_step : process
        variable once : integer := 0;
    begin
        wait for 1us;
        if once = 0 then
            for i in 0 to 10 loop
                wait for 200ns;
                STEP <= '1';
                DIR  <= '0';

                wait for 200ns;
                STEP <= '0';
                DIR  <= '0';
            end loop;
        end if;
        once := 1;
    end process;


    proc_encdoer : process
    begin
        wait for 1us;
        for i in 0 to 3 loop
            wait for 50ns;
            encoder <= "00";
        end loop;

    end process;

    proc_current : process

    begin
        inputValues(1)       <= std_logic_vector(to_sfixed(0.5, 0, -17)); --kp
        inputValues(2)       <= std_logic_vector(to_sfixed(0.5, 0, -17)); --ki
        inputValues(3)       <= std_logic_vector(to_sfixed(0.0, 0, -17)); --kd
        inputValues(0)       <= std_logic_vector(to_sfixed(0.5, 0, -17)); --setpoint
        currentSensorReading <= to_sfixed(0.0, 0, -17);
        wait for 9000us;
        --inputValues(0)       <= std_logic_vector(to_sfixed(1.0, 0, -17)); --setpoint
        --currentSensorReading <= to_sfixed(0.0, 0, -17);
        --wait for 90000us;
    end process;


end Behavioral;
