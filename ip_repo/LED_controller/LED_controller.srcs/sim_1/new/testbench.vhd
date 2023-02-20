----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.05.2021 21:29:24
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

	component counter_ON_OFF is
		Port (LED_GREEN_OUT: out std_logic;
			  LED_RED_OUT: out std_logic;
			  periods_ON_GREEN: in std_logic_vector (31 downto 0);
			  periods_OFF_GREEN: in std_logic_vector (31 downto 0);
			  periods_ON_RED: in std_logic_vector (31 downto 0);
			  periods_OFF_RED: in std_logic_vector (31 downto 0);
			  clk: in std_logic );
	end component;

    signal LED_GREEN_OUT: std_logic;
    signal LED_RED_OUT: std_logic;
    signal slv_reg0: std_logic_vector(31 downto 0) := (6 => '1', others => '0');
    signal slv_reg1: std_logic_vector(31 downto 0) := (6 => '1', others => '0');
    signal slv_reg2: std_logic_vector(31 downto 0) := (6 => '1', others => '0');
    signal slv_reg3: std_logic_vector(31 downto 0) := (6 => '1', others => '0');
    signal clk: std_logic;

begin
	counter_ON_OFF_inst: entity work.counter_ON_OFF
	port map (
		LED_GREEN_OUT => LED_GREEN_OUT,
		LED_RED_OUT => LED_RED_OUT,
		periods_ON_GREEN => slv_reg0,
		periods_OFF_GREEN => slv_reg1,
		periods_ON_RED => slv_reg2,
		periods_OFF_RED => slv_reg3,
		clk => clk
	);

    process

    begin
        
        wait for 10ns;
        
        clk <= '1';
        
        wait for 10ns;
        
        clk <= '0';

    end process;

end Behavioral;
