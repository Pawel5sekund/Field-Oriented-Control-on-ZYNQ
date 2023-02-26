-- vhdl-linter-disable type-resolved
-- vhdl-linter-disable port-declaration
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/01/2022 06:39:39 PM
-- Design Name: 
-- Module Name: CORE - Behavioral
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

package workPackage is
    type arrayReg is array (integer range <>) of std_logic_vector(15 downto 0);
end workPackage;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.workPackage.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CORE is
    generic (
        regAddrStart : integer := 10;
        regAddrEnd : integer := 31
        );
    port(
        CLK       : in  std_logic;
        daddr_out : out std_logic_vector(6 downto 0);
        den_out   : out std_logic;
        di_in     : in  std_logic_vector(15 downto 0);
        do_out    : out std_logic_vector(15 downto 0);
        drdy_in   : in  std_logic;
        dwe_out   : out std_logic;
        --result
        resultRegistersXADC : out arrayReg(regAddrStart downto regAddrEnd)
        );
--  Port ( );
end CORE;

architecture Behavioral of CORE is
    --signal WR_selector : std_logic := 0;
begin

    DRP_read : process
        variable operation_selector : integer := -1;
        variable daddr_actual : unsigned (daddr_out'range) := to_unsigned(regAddrStart, daddr_out'length);
        --constant maxOperationNumber : integer := 64;
    begin
        wait until rising_edge(CLK);

        do_out <= (others => '0');
        
        case operation_selector is
                
            when 0 =>
                daddr_out <= std_logic_vector(daddr_actual);
                dwe_out <= '0';
                den_out <= '1';
                operation_selector := 1;
            
            when 1 =>
                den_out <= '0';
                operation_selector := 2;

            when 2 =>
                if(drdy_in = '1') then
                    resultRegistersXADC(to_integer(daddr_actual)) <= di_in;
                    daddr_actual := daddr_actual + 1;
                    if (daddr_actual > to_unsigned(regAddrEnd, daddr_actual'length)) then
                        daddr_actual := to_unsigned(regAddrStart, daddr_actual'length);
                    end if;
                    operation_selector := 0;
                end if;

            when others =>
                operation_selector := 0;

        end case;

    end process DRP_read;


end Behavioral;
