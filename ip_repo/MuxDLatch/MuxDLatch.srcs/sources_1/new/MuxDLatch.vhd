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
        amount  : integer := 8;
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
        data8      : in  std_logic_vector (7 downto 0) := (others => '0');
        data9      : in  std_logic_vector (7 downto 0) := (others => '0');
        data10     : in  std_logic_vector (7 downto 0) := (others => '0');
        data11     : in  std_logic_vector (7 downto 0) := (others => '0');
        data12     : in  std_logic_vector (7 downto 0) := (others => '0');
        data13     : in  std_logic_vector (7 downto 0) := (others => '0');
        data14     : in  std_logic_vector (7 downto 0) := (others => '0');
        data15     : in  std_logic_vector (7 downto 0) := (others => '0');
        dataOut    : out std_logic_vector (7 downto 0) := (others => '0');
        muxAddress : out std_logic_vector (3 downto 0) := (others => '0');
        muxOut     : out std_logic                     := '0'
        );
end MuxDLatch;

architecture Behavioral of MuxDLatch is
    signal dataArray : arrayReg(15 downto 0);
    signal priorytetizationArray : STD_LOGIC_VECTOR (dataArray'range) := (others => '0');
    signal updatePriorytetizationArray : STD_LOGIC_VECTOR (dataArray'range) := (others => '0');
begin

    dataArray(0)  <= data0;
    dataArray(1)  <= data1;
    dataArray(2)  <= data2;
    dataArray(3)  <= data3;
    dataArray(4)  <= data4;
    dataArray(5)  <= data5;
    dataArray(6)  <= data6;
    dataArray(7)  <= data7;
    dataArray(8)  <= data8;
    dataArray(9)  <= data9;
    dataArray(10) <= data10;
    dataArray(11) <= data11;
    dataArray(12) <= data12;
    dataArray(13) <= data13;
    dataArray(14) <= data14;
    dataArray(15) <= data15;

    process is
        variable operationSelector : integer := 0;
        variable dataAddress       : integer := 0;
        variable priorytetizationBase : integer := 0; 
    begin

        wait until rising_edge(CLK);

        case operationSelector is

            when 0 =>
                muxOut            <= '0'; --disable "update" PIN on D-Latch by MUX
                for i in dataArray'left to priorytetizationBase loop
                    if(priorytetizationArray(i) = '1') then
                        dataAddress := i; --select address to be update based on which one changed 
                        updatePriorytetizationArray <= (i => '1', others => '0'); --only one during cycle is updated
                        exit when i >= priorytetizationBase; --removing starvation of the chenages XDDD
                    end if;
                end loop;
                priorytetizationBase := priorytetizationBase+1;
                if priorytetizationBase >= amount then
                    priorytetizationBase := 0;
                end if;
                
                operationSelector := operationSelector+1;

            when waitCLK =>
                dataOut           <= dataArray(dataAddress); --write data to BUS for D-Latches
                muxAddress        <= std_logic_vector(to_unsigned(dataAddress, muxAddress'length)); --write address to MUX to select the proper D-Latch for updating value
                operationSelector := operationSelector+1;

            when 2*waitCLK =>
                muxOut      <= '1'; --enable "update" PIN on selected D-Latch by MUX
                operationSelector := operationSelector+1;

                if waitCLK = 1 then
                    operationSelector := 0;
                end if;

            when others =>
                operationSelector := operationSelector + 1;
                if operationSelector >= 3*waitCLK-1 then
                    operationSelector := 0;
                end if;

        end case;

    end process;

    prioritetization: process is
        variable lastDataArray : arrayReg(dataArray'range);
    begin
        wait until rising_edge(CLK);

        for i in dataArray'range loop
            if (lastDataArray(i) != dataArray (i)) then --look for array with changes in it
                priorytetizationArray(i) <= '1'; --set their priorytetization bit
            elsif (updatePriorytetizationArray(i) = '1') then --look for updated values
                priorytetizationArray(i) <= '0'; --reset their priorytetization bit
            end if;            

            lastDataArray(i) := dataArray(i);

        end loop;
    end process prioritetization;

end Behavioral;
