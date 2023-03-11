-- vhdl-linter-disable type-resolved
-- vhdl-linter-disable port-declaration
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/11/2023 05:30:44 PM
-- Design Name: 
-- Module Name: MuxDLatch - Behavioral
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

package workPackage is
    type arrayReg is array (integer range <>) of std_logic_vector(7 downto 0);
end workPackage;

library IEEE;
use work.workPackage.all;
use IEEE.STD_LOGIC_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MuxDLatch is
    generic (
        amount  : integer := 0;
        waitCLK : integer := 1
        );
    port (
        CLK        : in  std_logic;
        data0      : in  std_logic_vector (7 downto 0) := (others => '0');
        data1      : in  std_logic_vector (7 downto 0) := (others => '0');
        data2      : in  std_logic_vector (7 downto 0) := (others => '0');
        data3      : in  std_logic_vector (7 downto 0) := (others => '0');
        data4      : in  std_logic_vector (7 downto 0) := (others => '0');
        data5      : in  std_logic_vector (7 downto 0) := (others => '0');
        data6      : in  std_logic_vector (7 downto 0) := (others => '0');
        data7      : in  std_logic_vector (7 downto 0) := (others => '0');
        dataOut    : out std_logic_vector (7 downto 0) := (others => '0');
        selDevAddr : out std_logic;
        selDevData : out std_logic
        );
end MuxDLatch;

architecture Behavioral of MuxDLatch is
    signal dataArray : arrayReg(7 downto 0);
begin

    dataArray(0) <= data0;
    dataArray(1) <= data1;
    dataArray(2) <= data2;
    dataArray(3) <= data3;
    dataArray(4) <= data4;
    dataArray(5) <= data5;
    dataArray(6) <= data6;
    dataArray(7) <= data7;

    process is
        variable operationSelector   : integer := 0;
        variable dataAddress         : integer := 0;
        variable buff_dataOutAddress : std_logic_vector(7 downto 0);
    begin
        wait until rising_edge(CLK);

        case operationSelector is

            when 0 =>
                if dataAddress >= amount then
                    dataAddress := 0;
                end if;
                selDevAddr          <= '0';
                selDevData          <= '0';
                buff_dataOutAddress := (others => '0');

            when waitCLK =>
                dataOut    <= (others => '0');
                selDevAddr <= '1';

            when 2*waitCLK =>
                selDevAddr <= '0';

            when 3*waitCLK =>
                dataOut    <= dataArray(dataAddress);
                selDevData <= '1';

            when 4*waitCLK =>
                selDevData <= '0';

            when 5*waitCLK =>
                buff_dataOutAddress(dataAddress) := '1';
                dataOut                          <= buff_dataOutAddress;
                selDevAddr                       <= '1';
                dataAddress                      := dataAddress + 1;

            when others =>
                operationSelector := operationSelector+1;
                if operationSelector >= 6 then
                    operationSelector := 0;
                end if;

        end case;
    end process;


end Behavioral;
