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
        --sampling_time : real                             := 0.000000064;  --64ns
        fracBits      : integer                          := 17;
        intBits       : integer                          := 0;
        max_p_pid     : SFIXED(0 downto -17) := to_sfixed(0.9999, 0, -17);
        max_i_pid     : SFIXED(0 downto -17) := to_sfixed(0.9999, 0, -17);
        max_d_pid     : SFIXED(0 downto -17) := to_sfixed(0.9999, 0, -17);
        max_pid_pid   : SFIXED(0 downto -17) := to_sfixed(0.9999, 0, -17)
        );
    port (
        en       : in  std_logic;
        n_res    : in  std_logic;
        CLK      : in  std_logic;
        kp       : in  UFIXED (0 downto -17);
        ki       : in  UFIXED (0 downto -17);
        kd       : in  UFIXED (0 downto -17);
        setpoint : in  sfixed (0 downto -17);
        reading  : in  sfixed (0 downto -17);
        pid_out  : out sfixed (0 downto -17) := (others => '0')
        );
end PID;

architecture Behavioral of PID is
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

    constant amountDSP : integer                                     := 4;
    constant sampling_time : real                             := 0.000000064;  --64ns
    signal A_reg       : typeABD_DSPregisters (amountDSP-1 downto 0) := (others => (others => '0'));
    signal B_reg       : typeABD_DSPregisters (amountDSP-1 downto 0) := (others => (others => '0'));
    signal D_reg       : typeABD_DSPregisters (amountDSP-1 downto 0) := (others => (others => '0'));
    signal C_reg       : typeC_DSPregisters (amountDSP-1 downto 0)   := (others => (others => '0'));
    signal P_reg       : typeC_DSPregisters (amountDSP-1 downto 0)   := (others => (others => '0'));
begin
    DSP_instance : mpDSP
        generic map (
            amount     => amountDSP,
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

    PID_mpDSP : process
        variable error             : sfixed (setpoint'range)                := (others => '0');
        variable lastError         : sfixed (0 downto -17)                  := (others => '0');
        variable operationSelector : integer range 63 downto -1             := 0;
        variable last_P_P          : SFIXED((47-fracBits) downto -fracBits) := (others => '0');
        variable last_I_P          : SFIXED((47-fracBits) downto -fracBits) := (others => '0');
        variable last_D_P          : SFIXED((47-fracBits) downto -fracBits) := (others => '0');
        constant VECTOR_0          : std_logic_vector (47 downto 0)         := (others => '0');
        constant BITS_TP           : integer                                := clog2(sampling_time);
    begin
        wait until RISING_EDGE(CLK);
        case operationSelector is
            when 0 =>
                error := resize(setpoint - reading, error'left, error'right);  --calc error

                if (divByBits(vecToSfixed(P_reg(0), -fracBits), 1) < -max_p_pid) then  --check result of P
                    last_P_P := resize(-max_p_pid, last_P_P'left, last_P_P'right);
                elsif (divByBits(vecToSfixed(P_reg(0), -fracBits), 1) > max_p_pid) then
                    last_P_P := resize(max_p_pid, last_P_P'left, last_P_P'right);
                else
                    last_P_P := vecToSfixed(P_reg(0), -fracBits);
                end if;
--ERRORS IN THIS SECTION!!!! NULL VARIABLES!!!
                if (mulByBits(vecToSfixed(P_reg(1), -fracBits), BITS_TP+1) < -max_i_pid) then  --check result of I
                    last_I_P := resize(-max_i_pid, last_I_P'left, last_I_P'right);
                elsif (mulByBits(vecToSfixed(P_reg(1), -fracBits), BITS_TP+1) > max_i_pid) then
                    last_I_P := resize(max_i_pid, last_I_P'left, last_I_P'right);
                else
                    last_I_P := vecToSfixed(P_reg(1), -fracBits);
                end if;

                if (divByBits(vecToSfixed(P_reg(2), -fracBits), BITS_TP+1) < -max_p_pid) then  --check result of D
                    last_D_P := resize(-max_d_pid, last_D_P'left, last_D_P'right);
                elsif (divByBits(vecToSfixed(P_reg(2), -fracBits), BITS_TP+1) > max_d_pid) then
                    last_D_P := resize(max_d_pid, last_D_P'left, last_D_P'right);
                else
                    last_D_P := vecToSfixed(P_reg(2), -fracBits);
                end if;

                if (vecToSfixed(P_reg(3), -fracBits) < 0) then  --check result of the output of PID
                    pid_out <= to_sfixed(0, pid_out'left, pid_out'right);
                elsif (vecToSfixed(P_reg(3), -fracBits) > max_pid_pid) then
                    pid_out <= resize(max_pid_pid, intBits, -fracBits);
                else
                    pid_out <= resize(vecToSfixed(P_reg(3), -fracBits), intBits, -fracBits);
                end if;

                operationSelector := 1;
            when 1 =>
                A_reg(0) <= std_logic_vector(error);  --P
                B_reg(0) <= std_logic_vector(kp);
                C_reg(0) <= VECTOR_0;
                D_reg(0) <= std_logic_vector(lastError);

                A_reg(1) <= std_logic_vector(error);  --I
                B_reg(1) <= std_logic_vector(ki);
                C_reg(1) <= std_logic_vector(last_I_P);
                D_reg(1) <= std_logic_vector(lastError);

                A_reg(2) <= std_logic_vector(error);  --D
                B_reg(2) <= std_logic_vector(kd);
                C_reg(2) <= std_logic_vector(last_D_P);
                D_reg(2) <= std_logic_vector(resize(-lastError, lastError'left, lastError'right));

                A_reg(3) <= std_logic_vector(resize(divByBits(last_P_P, 1), intBits, -fracBits));
                B_reg(3) <= std_logic_vector(to_unsigned(1, 18));  --send 1
                C_reg(3) <= std_logic_vector(resize(divByBits(last_I_P, (BITS_TP+1)), C_reg(3)'left-fracBits, -fracBits)); --"dot" in wrong place
                D_reg(3) <= std_logic_vector(resize(mulByBits(last_D_P, (BITS_TP+1)), intBits, -fracBits));

                operationSelector := 2;
            when 2 =>
                lastError := error;

                operationSelector := 3;
            when others =>
                if (en = '0' and n_res = '0') then
                    operationSelector := - 1;
                elsif (operationSelector = BITS_TP) then
                    operationSelector := 0;
                else
                    operationSelector := operationSelector + 1;
                end if;
        end case;
    end process PID_mpDSP;
end Behavioral;
