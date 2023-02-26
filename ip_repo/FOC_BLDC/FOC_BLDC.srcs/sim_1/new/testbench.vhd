-- vhdl-linter-disable unit
-- vhdl-linter-disable unused
-- vhdl-linter-disable type-resolved
-- vsg_off
-- vsg_off
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.04.2021 20:41:58
-- Design Name: 
-- Module Name: testbench - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.fixed_pkg.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity testbench is
--  Port ( );
end testbench;

architecture Behavioral of testbench is

COMPONENT FOC_core
    generic (
        step_scale          : integer              := 16;
        position_histeresis : integer              := 8;
        pwm_period          : integer              := 4095;
        full_rotate_pulses  : integer              := 4095;
        max_p_pid           : SFIXED(12 downto -8) := to_sfixed(pwm_period, 12, -8);
        max_i_pid           : SFIXED(12 downto -8) := to_sfixed(pwm_period, 12, -8);
        max_d_pid           : SFIXED(12 downto -8) := to_sfixed(pwm_period, 12, -8);
        max_pid_pid         : SFIXED(12 downto -8) := to_sfixed(pwm_period, 12, -8);
        sampling_time       : real                 := 0.000000064  --64ns
        );
    --  Port ( );
    port (
        -- data input
        en                              : in  std_logic;
        n_res                           : in  std_logic;
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
end COMPONENT;
    
        signal CLK: std_logic;
        --data input
        signal current_sensor: std_logic_vector (11 downto 0):=(others=>'0');
        signal encoder: std_logic_vector (1 downto 0):=(others=>'0');
        signal DIR: std_logic:='0';
        signal STEP: std_logic:='0';
        signal KP: UFIXED (9 downto -8):= to_ufixed(1, 9, -8);
        signal KI: UFIXED (9 downto -8):= to_ufixed(0, 9, -8);
        signal KD: UFIXED (9 downto -8):= to_ufixed(0, 9, -8);
        signal current_setpoint_move: std_logic_vector (11 downto 0):=(11 => '1', others=>'0');
        signal position_calibration: std_logic_vector (15 downto 0):=(others=>'0');
        signal position_calibration_SET_signal: std_logic:='0';
        --data output
        signal dposition_out: std_logic_vector (12 downto 0);
        signal position_out: std_logic_vector (14 downto 0);
        signal PWM_CH_U: std_logic_vector (1 downto 0);
        signal PWM_CH_W: std_logic_vector (1 downto 0);
        signal PWM_CH_V: std_logic_vector (1 downto 0);
        signal en: std_logic := '0';
        signal n_res: std_logic := '0';
    
begin
FOC_test: FOC_core
    PORT MAP(
        en => en,
        CLK => CLK,
        n_res => n_res,
        --data input
        current_sensor=>current_sensor,
        encoder=>encoder,
        DIR=>DIR,
        STEP=>STEP,
        KP=>KP,
        KI=>KI,
        KD=>KD,
        current_setpoint_move=>current_setpoint_move,
        position_calibration=>position_calibration,
        position_calibration_SET_signal=>position_calibration_SET_signal,
        --data output
        dposition_out=>dposition_out,
        position_out=>position_out,
        PWM_CH_U=>PWM_CH_U,
        PWM_CH_W=>PWM_CH_W,
        PWM_CH_V=>PWM_CH_V
    );
    
clock: process
begin
    wait for 5ns;
    CLK <= '1';
    
    wait for 5ns;
    CLK <= '0';
end process clock;

stepper: process

begin

    wait for 20us;
    report "start sequence ended";
    en <= '1';
    n_res <= '1';

--    DIR <= '0';
--    wait for 100ns;
--    STEP <= '1';
--    wait for 10us;

--    DIR <= '0';
--    wait for 100ns;
--    STEP <= '0';
--    wait for 10us;
--    report "step forward made";

    DIR <= '1';
    wait for 100ns;
    STEP <= '1';
    wait for 100us;

    --DIR <= '1';
    --wait for 100ns;
    --STEP <= '0';
    --report "first step backward made";

    --DIR <= '1';
    --wait for 100ns;
    --STEP <= '1';
    --wait for 10us;

    --DIR <= '1';
    --wait for 100ns;
    --STEP <= '0';
    --report "second step backward made";

    --wait for 10us;
    report "stop simulation";
    

end process stepper;

end Behavioral;
