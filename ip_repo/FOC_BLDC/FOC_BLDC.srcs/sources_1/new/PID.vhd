----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/09/2023 09:10:29 PM
-- Design Name: 
-- Module Name: PID - Behavioral
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
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.fixed_pkg.all;
use foc_lib.foc_types.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PID is
    generic (
        sampling_time : real    := 0.000000064;  --64ns
        fracBits      : integer := 8;
        intBits       : integer := 17-fracBits;
        max_p_pid     : SFIXED(intBits downto -fracBits);
        max_i_pid     : SFIXED(intBits downto -fracBits);
        max_d_pid     : SFIXED(intBits downto -fracBits);
        max_pid_pid   : SFIXED(intBits downto -fracBits)
        );
    port (
        en       : in std_logic;
        n_res    : in std_logic;
        CLK      : in std_logic;
        kp       : in UFIXED (intBits downto -fracBits);
        ki       : in UFIXED (intBits downto -fracBits);
        kd       : in UFIXED (intBits downto -fracBits);
        setpoint : in sfixed (0 downto -11);
        reading  : in sfixed (0 downto -11)
        );
end PID;



architecture Behavioral of PID is
    component pid_dsp is
        port (
            clk : in  std_logic;
            sel : in  std_logic_vector(1 downto 0);
            a   : in  std_logic_vector(17 downto 0);
            b   : in  std_logic_vector(17 downto 0);
            c   : in  std_logic_vector(47 downto 0);
            d   : in  std_logic_vector(17 downto 0);
            p   : out std_logic_vector(47 downto 0)
            );
    end component;

    signal pid_sel : std_logic_vector(1 downto 0)  := (others => '0');
    signal pid_a   : std_logic_vector(17 downto 0) := (others => '0');
    signal pid_b   : std_logic_vector(17 downto 0) := (others => '0');
    signal pid_c   : std_logic_vector(47 downto 0) := (others => '0');
    signal pid_d   : std_logic_vector(17 downto 0) := (others => '0');
    signal pid_p   : std_logic_vector(47 downto 0) := (others => '0');
    signal pid_out : std_logic_vector(17 downto 0) := (others => '0');
begin

    pid_calc_dsp : component pid_dsp
        port map(
            clk => CLK,
            sel => pid_sel,
            a   => pid_a,
            b   => pid_b,
            c   => pid_c,
            d   => pid_d,
            p   => pid_p
            );

    pid : process is
        variable operationSelector : integer range 63 downto -1                     := - 1;
        variable error             : signed (17 downto 0);
        variable lastError         : signed (17 downto 0);
        variable last_P_P          : SFIXED((pid_p'left-fracBits) downto -fracBits) := (others => '0');
        variable last_I_P          : SFIXED((pid_p'left-fracBits) downto -fracBits) := (others => '0');
        variable last_D_P          : SFIXED((pid_p'left-fracBits) downto -fracBits) := (others => '0');
        constant VECTOR_0          : std_logic_vector (47 downto 0)                 := (others => '0');
        constant BITS_TP           : integer                                        := clog2(sampling_time);
    begin

        wait until rising_edge(CLK);

        case operationSelector is

            when -1 =>

                lastError := (others => '0');
                last_P_P  := (others => '0');
                last_I_P  := (others => '0');
                last_D_P  := (others => '0');

                if (en = '1') then
                    operationSelector := 0;
                end if;

            when 0 =>

                error   := resize(unToSigned(setpoint) - unToSigned(reading), error'length);
                pid_sel <= "00";
                pid_d   <= std_logic_vector(error);
                pid_a   <= std_logic_vector(lastError);
                pid_b   <= std_logic_vector(kp);
                pid_c   <= VECTOR_0;

                operationSelector := 1;

            when 12 =>

                if (divByBits(vecToSfixed(pid_p, -fracBits), 1) < -max_p_pid) then
                    last_P_P := resize(-max_p_pid, last_P_P'left, last_P_P'right);
                elsif (divByBits(vecToSfixed(pid_p, -fracBits), 1) > max_p_pid) then
                    last_P_P := resize(max_p_pid, last_P_P'left, last_P_P'right);
                else
                    last_P_P := vecToSfixed(pid_p, -fracBits);
                end if;

                pid_sel           <= "01";
                pid_b             <= std_logic_vector(ki);
                pid_c             <= std_logic_vector(last_I_P);
                operationSelector := 13;

            when 24 =>

                if (mulByBits(vecToSfixed(pid_p, -fracBits), BITS_TP+1) < -max_i_pid) then
                    last_I_P := resize(-max_i_pid, last_I_P'left, last_I_P'right);
                elsif (mulByBits(vecToSfixed(pid_p, -fracBits), BITS_TP+1) > max_i_pid) then
                    last_I_P := resize(max_i_pid, last_I_P'left, last_I_P'right);
                else
                    last_I_P := vecToSfixed(pid_p, -fracBits);
                end if;

                pid_sel           <= "10";
                pid_b             <= std_logic_vector(kd);
                pid_c             <= std_logic_vector(last_D_P);
                operationSelector := 25;

            when 36 =>

                if (divByBits(vecToSfixed(pid_p, -fracBits), BITS_TP+1) < -max_p_pid) then
                    last_D_P := resize(-max_d_pid, last_D_P'left, last_D_P'right);
                elsif (divByBits(vecToSfixed(pid_p, -fracBits), BITS_TP+1) > max_d_pid) then
                    last_D_P := resize(max_d_pid, last_D_P'left, last_D_P'right);
                else
                    last_D_P := vecToSfixed(pid_p, -fracBits);
                end if;

                pid_sel           <= "11";
                pid_b             <= std_logic_vector(to_unsigned(1, pid_b'length));  --send 1
                pid_a             <= std_logic_vector(resize(divByBits(last_P_P, 1), intBits, -fracBits));  --make a function for this sfixedToVec
                pid_d             <= std_logic_vector(resize(mulByBits(last_D_P, (BITS_TP+1)), intBits, -fracBits));
                pid_c             <= (intBits+fracBits downto 0 => std_logic_vector(resize(divByBits(last_I_P, (BITS_TP+1)), intBits, -fracBits)), others => '0');  --"dot" in wrong place
                operationSelector := 37;

            when 48 =>

                if (vecToSfixed(pid_p, fracBits) < 0) then
                    pid_out <= std_logic_vector(to_SIGNED(0, pid_out'length));
                elsif (vecToSfixed(pid_p, fracBits) > max_pid_pid) then
                    pid_out <= std_logic_vector(resize(max_pid_pid, intBits, -fracBits));
                else
                    pid_out <= std_logic_vector(resize(vecToSfixed(pid_p, fracBits), intBits, -fracBits));
                end if;

                lastError         := error;
                operationSelector := 49;

            when others =>

                pid_a   <= pid_a;
                pid_b   <= pid_b;
                pid_c   <= pid_c;
                pid_d   <= pid_d;
                pid_sel <= pid_sel;

                if (en = '0' and n_res = '0') then
                    operationSelector := - 1;
                elsif (operationSelector = 63) then
                    operationSelector := 0;
                else
                    operationSelector := operationSelector + 1;
                end if;

        end case;

    end process pid;

end Behavioral;
