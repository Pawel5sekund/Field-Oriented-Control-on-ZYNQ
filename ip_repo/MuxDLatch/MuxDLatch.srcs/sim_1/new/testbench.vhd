----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/11/2023 07:39:38 PM
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
use IEEE.STD_LOGIC_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity testbench is
--  Port ( );
end testbench;

architecture Behavioral of testbench is

    component MuxDLatch is
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
    end component;

    signal CLK        : std_logic := '0';
    signal selDevAddr : std_logic := '0';
    signal selDevData : std_logic := '0';
    signal dataOut    : std_logic_vector(7 downto 0);
begin

    u1 : MuxDLatch 
    generic map (
        amount => 4
    )
    port map (
        CLK        => CLK,
        selDevAddr => selDevAddr,
        selDevData => selDevData,
        dataOut    => dataOut,
        data0      => std_logic_vector(to_unsigned(0, 8)),
        data1      => std_logic_vector(to_unsigned(1, 8)),
        data2      => std_logic_vector(to_unsigned(2, 8)),
        data3      => std_logic_vector(to_unsigned(3, 8))
        );

    process is
        variable operationSelector : integer := 0;
    begin

        wait for 10ns;

        case operationSelector is

            when 0 =>
                CLK <= '1';
                operationSelector := 1;

            when 1 =>
                CLK               <= '0';
                operationSelector := 0;

            when others =>
                CLK               <= '0';
                operationSelector := 0;

        end case;

    end process;

end Behavioral;
