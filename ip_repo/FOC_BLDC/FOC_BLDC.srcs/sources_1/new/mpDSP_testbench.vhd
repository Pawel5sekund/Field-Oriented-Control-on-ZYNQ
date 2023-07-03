----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/27/2023 10:57:41 PM
-- Design Name: 
-- Module Name: mpDSP_testbench - Behavioral
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
library foc_lib;
use IEEE.STD_LOGIC_1164.all;
use foc_lib.foc_types.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mpDSP_testbench is
    generic (
        amount : integer := 8
        );
--  Port ( );
end mpDSP_testbench;

architecture Behavioral of mpDSP_testbench is

    component mpDSP is
        generic (
            amount     : integer := 8;
            waitCycles : integer := 3
            );
        port (
            CLK   : in  std_logic;
            A_reg : in  typeABD_DSPregisters (amount-1 downto 0);
            B_reg : in  typeABD_DSPregisters (amount-1 downto 0);
            D_reg : in  typeABD_DSPregisters (amount-1 downto 0);
            C_reg : in  typeC_DSPregisters (amount-1 downto 0);
            P_reg : out typeC_DSPregisters (amount-1 downto 0)
            );
    end component;

    signal CLK   : std_logic;
    signal A_reg : typeABD_DSPregisters (amount-1 downto 0) := (others => (others => '0'));
    signal B_reg : typeABD_DSPregisters (amount-1 downto 0) := (others => (others => '0'));
    signal D_reg : typeABD_DSPregisters (amount-1 downto 0) := (others => (others => '0'));
    signal C_reg : typeC_DSPregisters (amount-1 downto 0)   := (others => (others => '0'));
    signal P_reg : typeC_DSPregisters (amount-1 downto 0)   := (others => (others => '0'));

begin

    inst : mpDSP
        generic map (
            amount     => 8,
            waitCycles => 3
            )
        port map (
            CLK   => CLK,
            A_reg => A_reg,
            B_reg => B_reg,
            D_reg => D_reg,
            C_reg => C_reg,
            P_reg => P_reg
            );

    CLK_process : process
    begin
        for i in 0 to 1000000 loop
            wait for 10ns;
            CLK <= '1';
            wait for 10ns;
            CLK <= '0';
        end loop;
    end process CLK_process;

    data_process : process
    begin
        wait until RISING_EDGE(CLK);
        A_reg(0) <= std_logic_vector(to_signed(1, 18));
        B_reg(0) <= std_logic_vector(to_signed(5, 18));
        D_reg(0) <= std_logic_vector(to_signed(10, 18));
        C_reg(0) <= std_logic_vector(to_signed(3, 48));

        A_reg(5) <= std_logic_vector(to_signed(2, 18));
        B_reg(5) <= std_logic_vector(to_signed(3, 18));
        D_reg(5) <= std_logic_vector(to_signed(6, 18));
        C_reg(5) <= std_logic_vector(to_signed(1, 48));
    end process;
end Behavioral;
