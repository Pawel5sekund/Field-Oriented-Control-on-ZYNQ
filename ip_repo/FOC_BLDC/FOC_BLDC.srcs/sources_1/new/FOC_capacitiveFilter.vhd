----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/03/2023 05:55:36 PM
-- Design Name: 
-- Module Name: FOC_capacitiveFilter - Behavioral
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
use IEEE.STD_LOGIC_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FOC_capacitiveFilter is
    generic (
        capacity : integer := 10
        );
    port (
        CLK    : in  std_logic;
        INPUT  : in  std_logic;
        OUTPUT : out std_logic
        );
--  Port ( );
end FOC_capacitiveFilter;

architecture Behavioral of FOC_capacitiveFilter is

begin
    process
        variable CNT : integer range 0 to capacity := 0;
    begin
        wait until RISING_EDGE(CLK);

        case INPUT is
            when '0' =>
                if CNT /= 0 then
                    CNT := CNT - 1;
                end if;
            when '1' =>
                if CNT /= capacity then
                    CNT := CNT + 1;
                end if;
            when others =>
        end case;

        if CNT >= capacity/2 then
            OUTPUT <= '1';
        else
            OUTPUT <= '0';
        end if; 

    end process;


end Behavioral;
