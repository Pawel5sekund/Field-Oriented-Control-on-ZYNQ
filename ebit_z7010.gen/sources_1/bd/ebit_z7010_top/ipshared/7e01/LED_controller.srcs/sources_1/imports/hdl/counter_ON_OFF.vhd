----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.05.2021 14:15:16
-- Design Name: 
-- Module Name: counter_ON_OFF - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter_ON_OFF is
  Port (LED_GREEN_OUT: out std_logic;
        LED_RED_OUT: out std_logic;
        periods_ON_GREEN: in std_logic_vector (31 downto 0);
        periods_OFF_GREEN: in std_logic_vector (31 downto 0);
        periods_ON_RED: in std_logic_vector (31 downto 0);
        periods_OFF_RED: in std_logic_vector (31 downto 0);
        clk: in std_logic );
end counter_ON_OFF;

architecture Behavioral of counter_ON_OFF is
    
begin

    GREEN: process 
        variable counter: unsigned (31 downto 0) := (others => '0');
        variable bit_ON_OFF: std_logic := '0';
    begin
        wait until rising_edge(clk);
        if (bit_ON_OFF = '0') then
            if (counter >= unsigned(periods_OFF_GREEN)) then
                counter := (others => '0');
                bit_ON_OFF := '1';
            end if;
        end if;

        if (bit_ON_OFF = '1') then
            if (counter >= unsigned(periods_ON_GREEN)) then
                counter := (others => '0');
                bit_ON_OFF := '0';
            end if;
        end if;

        counter := counter + 1;
        LED_GREEN_OUT <= bit_ON_OFF;
    end process GREEN;

    RED: process 
        variable counter: unsigned (31 downto 0) := (others => '0');
        variable bit_ON_OFF: std_logic := '0';
    begin
        wait until rising_edge(clk);
        if (bit_ON_OFF = '0') then
            if (counter >= unsigned(periods_OFF_RED)) then
                counter := (others => '0');
                bit_ON_OFF := '1';
            end if;
        end if;

        if (bit_ON_OFF = '1') then
            if (counter >= unsigned(periods_ON_RED)) then
                counter := (others => '0');
                bit_ON_OFF := '0';
            end if;
        end if;

        counter := counter + 1;
        LED_RED_OUT <= bit_ON_OFF;
    end process RED;

end Behavioral;
