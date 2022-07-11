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
        STEP_scale: integer := 16;
        position_histeresis: integer := 8;
        PWM_period: integer := 4095;
        full_rotate_pulses: integer := 4095;
        max_P_PID: integer := 511;
        max_I_PID: integer := 511;
        max_D_PID: integer := 511;
        max_PID_PID: integer := 511
    );
--  Port ( );
    port (
        CLK: in std_logic;
        --data input
        EN                              : IN std_logic;
        RES                             : IN std_logic;
        current_sensor: in std_logic_vector (11 downto 0);
        encoder: in std_logic_vector (1 downto 0);
        DIR: in std_logic;
        STEP: in std_logic;
        KP: in std_logic_vector (17 downto 0);
        KI: in std_logic_vector (17 downto 0);
        KD: in std_logic_vector (17 downto 0);
        current_setpoint_stall: in std_logic_vector (17 downto 0);
        current_setpoint_move: in std_logic_vector (17 downto 0);
        position_calibration: in std_logic_vector (15 downto 0);
        position_calibration_SET_signal: in std_logic;
        --data output
        dposition_out: out std_logic_vector (12 downto 0);
        position_out: out std_logic_vector (14 downto 0);
        PWM_CH_U: out std_logic_vector (1 downto 0);
        PWM_CH_W: out std_logic_vector (1 downto 0);
        PWM_CH_V: out std_logic_vector (1 downto 0)
    ); 
end COMPONENT;
    
        signal CLK: std_logic;
        --data input
        signal current_sensor: std_logic_vector (11 downto 0):=(others=>'0');
        signal encoder: std_logic_vector (1 downto 0):=(others=>'0');
        signal DIR: std_logic:='0';
        signal STEP: std_logic:='0';
        signal KP: std_logic_vector (17 downto 0):=(9 => '1', others=>'0');
        signal KI: std_logic_vector (17 downto 0):=(others=>'0');
        signal KD: std_logic_vector (17 downto 0):=(others=>'0');
        signal current_setpoint_move: std_logic_vector (17 downto 0):=(11 => '1', others=>'0');
        signal current_setpoint_stall: std_logic_vector (17 downto 0):=(5 => '1', others=>'0');
        signal position_calibration: std_logic_vector (15 downto 0):=(others=>'0');
        signal position_calibration_SET_signal: std_logic:='0';
        --data output
        signal dposition_out: std_logic_vector (12 downto 0);
        signal position_out: std_logic_vector (14 downto 0);
        signal PWM_CH_U: std_logic_vector (1 downto 0);
        signal PWM_CH_W: std_logic_vector (1 downto 0);
        signal PWM_CH_V: std_logic_vector (1 downto 0);
        signal EN: std_logic;
        signal RES: std_logic;
    
begin
FOC_test: FOC_core
    PORT MAP(
        EN  => EN,
        RES => RES,
        CLK => CLK,
        --data input
        current_sensor=>current_sensor,
        encoder=>encoder,
        DIR=>DIR,
        STEP=>STEP,
        KP=>KP,
        KI=>KI,
        KD=>KD,
        current_setpoint_stall=>current_setpoint_stall,
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

    wait for 30us;
    report "start sequence ended";

    EN <= '1';
    RES <= '1';

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
    wait for 10us;

    DIR <= '1';
    wait for 100ns;
    STEP <= '0';
    report "first step backward made";

    DIR <= '1';
    wait for 100ns;
    STEP <= '1';
    wait for 10us;

    DIR <= '1';
    wait for 100ns;
    STEP <= '0';
    report "second step backward made";

    wait for 10us;
    report "stop simulation";
    

end process stepper;

end Behavioral;
