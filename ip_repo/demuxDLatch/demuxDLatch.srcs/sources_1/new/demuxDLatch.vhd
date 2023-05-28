-- vhdl-linter-disable port-declaration
-- vhdl-linter-disable type-resolved
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/11/2023 09:38:45 PM
-- Design Name: 
-- Module Name: demuxDLatch - Behavioral
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

entity demuxDLatch is
    generic (
        amount  : integer := 8;
        waitCLK : integer := 1
        );
    port (
        CLK        : in  std_logic;
        data0      : out std_logic_vector (7 downto 0) := (others => '0');
        data1      : out std_logic_vector (7 downto 0) := (others => '0');
        data2      : out std_logic_vector (7 downto 0) := (others => '0');
        data3      : out std_logic_vector (7 downto 0) := (others => '0');
        data4      : out std_logic_vector (7 downto 0) := (others => '0');
        data5      : out std_logic_vector (7 downto 0) := (others => '0');
        data6      : out std_logic_vector (7 downto 0) := (others => '0');
        data7      : out std_logic_vector (7 downto 0) := (others => '0');
        data8      : out std_logic_vector (7 downto 0) := (others => '0');
        data9      : out std_logic_vector (7 downto 0) := (others => '0');
        data10     : out std_logic_vector (7 downto 0) := (others => '0');
        data11     : out std_logic_vector (7 downto 0) := (others => '0');
        data12     : out std_logic_vector (7 downto 0) := (others => '0');
        data13     : out std_logic_vector (7 downto 0) := (others => '0');
        data14     : out std_logic_vector (7 downto 0) := (others => '0');
        data15     : out std_logic_vector (7 downto 0) := (others => '0');
        dataIn     : in  std_logic_vector (7 downto 0) := (others => '0');
        muxAddress : out std_logic_vector (3 downto 0) := (others => '0');
        muxOut     : out std_logic                     := '1'
        );
end demuxDLatch;

architecture Behavioral of demuxDLatch is
    signal dataArray : arrayReg(15 downto 0);
begin

    data0  <= dataArray(0);
    data1  <= dataArray(1);
    data2  <= dataArray(2);
    data3  <= dataArray(3);
    data4  <= dataArray(4);
    data5  <= dataArray(5);
    data6  <= dataArray(6);
    data7  <= dataArray(7);
    data8  <= dataArray(8);
    data9  <= dataArray(9);
    data10 <= dataArray(10);
    data11 <= dataArray(11);
    data12 <= dataArray(12);
    data13 <= dataArray(13);
    data14 <= dataArray(14);
    data15 <= dataArray(15);

    process is
        variable operationSelector : integer := 0;
        variable dataAddress       : integer := 0;
    begin

        case operationSelector is

            when 0 =>
                muxAddress        <= std_logic_vector(to_unsigned(dataAddress, muxAddress'length));
                muxOut            <= '0';
                operationSelector := operationSelector+1;

            when waitCLK =>
                dataArray(dataAddress) <= dataIn;
                if dataAddress >= amount then
                    dataAddress := 0;
                end if;
                operationSelector := operationSelector+1;

                if waitCLK = 1 then
                    operationSelector := 0;
                end if;

            when others =>
                operationSelector := operationSelector + 1;
                if operationSelector >= 2*waitCLK-1 then
                    operationSelector := 0;
                end if;

        end case;

    end process;


end Behavioral;
