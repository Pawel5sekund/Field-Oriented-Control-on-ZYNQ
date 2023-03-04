----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/01/2023 08:30:42 PM
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
library work;
use IEEE.STD_LOGIC_1164.all;

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
    signal CLK : std_logic := '0';
    signal VECTOR0_16bit : std_logic_vector(15 downto 0) := (others=>'0');
    signal VECTOR0_7bit : std_logic_vector(6 downto 0) := (others=>'0');
    signal DRDY : std_logic := '0';

    component CORE
        generic (
            regAddrStart         : integer := 10;
            regAddrEnd           : integer := 31;
            resultInterfaceDelay : integer := 1
            );
        port(
            CLK        : in  std_logic;
            daddr_out  : out std_logic_vector(6 downto 0);
            den_out    : out std_logic;
            di_in      : in  std_logic_vector(15 downto 0);
            do_out     : out std_logic_vector(15 downto 0);
            drdy_in    : in  std_logic;
            dwe_out    : out std_logic;
            --result
            resultAddr : out std_logic_vector(6 downto 0);
            resultData : out std_logic_vector(15 downto 0)
            );
--  Port ( );
    end component CORE;

begin

    REG : CORE 
    port map(
        CLK => CLK,
        di_in => VECTOR0_16bit,
        drdy_in => DRDY
    );

    process is

    begin


        wait for 10ns;
        CLK <= '1';
        wait for 10ns;
        CLK <= '0';

        wait for 10ns;
        CLK <= '1';
        wait for 10ns;
        CLK <= '0';

        wait for 10ns;
        CLK <= '1';
        wait for 10ns;
        CLK <= '0';

        wait for 10ns;
        CLK <= '1';
        wait for 10ns;
        CLK <= '0';

        wait for 10ns;
        CLK <= '1';
        wait for 10ns;
        CLK <= '0';

        wait for 10ns;
        CLK <= '1';
        wait for 10ns;
        CLK <= '0';

        wait for 10ns;
        CLK <= '1';
        wait for 10ns;
        CLK <= '0';

        wait for 10ns;
        CLK <= '1';
        wait for 10ns;
        CLK <= '0';

        wait for 10ns;
        CLK <= '1';
        wait for 10ns;
        CLK <= '0';

        wait for 10ns;
        CLK <= '1';
        wait for 10ns;
        CLK <= '0';

        wait for 10ns;
        CLK <= '1';
        wait for 10ns;
        CLK <= '0';

        wait for 10ns;
        CLK <= '1';
        wait for 10ns;
        CLK <= '0';



    end process;


end Behavioral;
