-- vhdl-linter-disable type-resolved
-- vhdl-linter-disable port-declaration
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/12/2023 09:31:19 PM
-- Design Name: 
-- Module Name: FOC_regXADC - Behavioral
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

entity FOC_regXADC is
    generic(
        addr : integer
        );
    port (
--        CLK           : in  std_logic;
        addrRegXADC   : in  std_logic_vector(6 downto 0)  := (others => '0');
        dataRegXADC   : in  std_logic_vector(15 downto 0) := (others => '0');
        resultRegXADC : inout std_logic_vector(15 downto 0)
        );
end FOC_regXADC;

architecture Behavioral of FOC_regXADC is

begin

    with addrRegXADC select
        resultRegXADC <= dataRegXADC when std_logic_vector(to_unsigned(addr, addrRegXADC'length)),
        resultRegXADC                when others;

end Behavioral;
