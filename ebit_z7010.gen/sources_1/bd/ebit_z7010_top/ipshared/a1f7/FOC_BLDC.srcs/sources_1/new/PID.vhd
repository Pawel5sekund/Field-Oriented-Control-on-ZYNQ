library IEEE;
library foc_lib;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.fixed_pkg.all;
use foc_lib.foc_types.all;

entity PID is
    generic (
        --sampling_time : real                             := 0.000000064;  --64ns
        fracBits    : integer              := 17;
        intBits     : integer              := 0;
        max_p_pid   : SFIXED(0 downto -17) := to_sfixed(0.9999, 0, -17);
        min_p_pid   : SFIXED(0 downto -17) := to_sfixed(-0.9999, 0, -17);
        max_i_pid   : SFIXED(0 downto -17) := to_sfixed(0.9999, 0, -17);
        min_i_pid   : SFIXED(0 downto -17) := to_sfixed(-0.9999, 0, -17);
        max_d_pid   : SFIXED(0 downto -17) := to_sfixed(0.9999, 0, -17);
        min_d_pid   : SFIXED(0 downto -17) := to_sfixed(-0.9999, 0, -17);
        max_pid_pid : SFIXED(0 downto -17) := to_sfixed(0.9999, 0, -17);
        min_pid_pid : SFIXED(0 downto -17) := to_sfixed(-0.9999, 0, -17)
        );
    port (
        en       : in  std_logic;
        n_res    : in  std_logic;
        CLK      : in  std_logic;
        kp       : in  sfixed (0 downto -17);
        ki       : in  sfixed (0 downto -17);
        kd       : in  sfixed (0 downto -17);
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
            P_reg : out typeC_DSPregisters (amount-1 downto 0);
            RDY   : out std_logic
            );
    end component;

    constant amountDSP     : integer                                     := 6;
    constant sampling_time : real                                        := 0.000000064;  --640ns
    signal A_reg           : typeABD_DSPregisters (amountDSP-1 downto 0) := (others => (others => '0'));
    signal B_reg           : typeABD_DSPregisters (amountDSP-1 downto 0) := (others => (others => '0'));
    signal D_reg           : typeABD_DSPregisters (amountDSP-1 downto 0) := (others => (others => '0'));
    signal C_reg           : typeC_DSPregisters (amountDSP-1 downto 0)   := (others => (others => '0'));
    signal P_reg           : typeC_DSPregisters (amountDSP-1 downto 0)   := (others => (others => '0'));
    signal RDY             : std_logic;
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
            P_reg => P_reg,
            RDY   => RDY
            );

    PID_mpDSP : process
        variable error             : sfixed (setpoint'range)                                             := (others => '0');
        variable lastError         : sfixed (0 downto -17)                                               := (others => '0');
        variable operationSelector : integer range 63 downto -1                                          := -1;
        variable last_P_P          : SFIXED((47+reading'right+kp'right) downto (reading'right+kp'right)) := (others => '0');
        variable vec_last_I_p      : std_logic_vector(93 downto 0);
        variable last_I_P          : SFIXED((93+reading'right+ki'right) downto (reading'right+ki'right)) := (others => '0');
        variable last_D_P          : SFIXED((93+reading'right+kd'right) downto (reading'right+kd'right)) := (others => '0');
        variable vec_last_D_p      : std_logic_vector(93 downto 0);
        constant VECTOR_0          : std_logic_vector (47 downto 0)                                      := (others => '0');
        constant BITS_TP           : integer                                                             := -clog2(sampling_time);
    begin
        wait until RISING_EDGE(CLK);
        case operationSelector is
            when 0 =>
                error := resize(setpoint - reading, error'left, error'right);  --calc error

                if (divByBits(vecToSfixed(P_reg(0), last_P_P'right), 1) < min_p_pid) then  --check result of P
                    last_P_P := mulByBits(resize(min_p_pid, last_P_P'left, last_P_P'right), 1);
                elsif (divByBits(vecToSfixed(P_reg(0), last_P_P'right), 1) > max_p_pid) then
                    last_P_P := mulByBits(resize(max_p_pid, last_P_P'left, last_P_P'right), 1);
                else
                --last_P_P := vecToSfixed(P_reg(0), last_P_P'right); --do nothing
                end if;

                if (divByBits(last_I_P, BITS_TP+1) < min_i_pid) then  --check result of I
                    last_I_P := mulByBits(resize(min_i_pid, last_I_P'left, last_I_P'right), BITS_TP+1);
                elsif (divByBits(last_I_P, BITS_TP+1) > max_i_pid) then
                    last_I_P := mulByBits(resize(max_i_pid, last_I_P'left, last_I_P'right), BITS_TP+1);
                end if;

                if (mulByBits(last_D_P, BITS_TP-1) < min_d_pid) then  --check result of D
                    last_D_P := divByBits(resize(min_d_pid, last_D_P'left, last_D_P'right), BITS_TP-1);
                elsif (mulByBits(last_D_P, BITS_TP-1) > max_d_pid) then
                    last_D_P := divByBits(resize(max_d_pid, last_D_P'left, last_D_P'right), BITS_TP-1);
                end if;

                if (vecToSfixed(P_reg(5), -fracBits) < min_pid_pid) then  --check result of the output of PID
                    pid_out <= resize(min_pid_pid, pid_out'left, pid_out'right);
                elsif (vecToSfixed(P_reg(5), -fracBits) > max_pid_pid) then
                    pid_out <= resize(max_pid_pid, pid_out'left, pid_out'right);
                else
                    pid_out <= resize(vecToSfixed(P_reg(5), pid_out'right), pid_out'left, pid_out'right);
                end if;

                operationSelector := 1;
            when 1 =>
                A_reg(0) <= std_logic_vector(error);  --P
                B_reg(0) <= std_logic_vector(kp);
                C_reg(0) <= VECTOR_0;
                D_reg(0) <= std_logic_vector(lastError);

                A_reg(1)                                                  <= std_logic_vector(error);  --I
                B_reg(1)                                                  <= std_logic_vector(ki);
                D_reg(1)                                                  <= std_logic_vector(lastError);
                vec_last_I_p(vec_last_I_p'left downto vec_last_I_p'right) := std_logic_vector(last_I_P(last_I_P'left downto last_I_P'right));
                bigSumDSPHandler(vec_last_I_P, C_reg(1), C_reg(2), B_reg(2), A_reg(2), P_reg(1), P_reg(2));
                last_I_P                                                  := vecToSfixed(vec_last_I_p, last_I_P'right);

                A_reg(3)                                                  <= std_logic_vector(error);  --D
                B_reg(3)                                                  <= std_logic_vector(kd);
                D_reg(3)                                                  <= std_logic_vector(resize(-lastError, lastError'left, lastError'right));
                vec_last_D_p(vec_last_D_p'left downto vec_last_D_p'right) := std_logic_vector(last_D_P(last_D_P'left downto last_D_P'right));
                bigSumDSPHandler(vec_last_D_P, C_reg(1), C_reg(2), B_reg(2), A_reg(2), P_reg(1), P_reg(2));
                last_D_P                                                  := vecToSfixed(vec_last_D_p, last_D_P'right);

                A_reg(5) <= std_logic_vector(resize(divByBits(last_P_P, 1), kp'left, kp'right));
                B_reg(5) <= std_logic_vector(to_unsigned(1, 18));  --send 1
                C_reg(5) <= std_logic_vector(resize(divByBits(last_I_P, BITS_TP+1), C_reg(5)'left+ki'right, ki'right));
                D_reg(5) <= std_logic_vector(resize(mulByBits(last_D_P, BITS_TP-1), kd'left, kd'right));
                last_P_P  := vecToSfixed(P_reg(0), last_P_P'right);

                operationSelector := 2;
            when 2 =>
                lastError := error;

                operationSelector := 3;
            when others =>
                if (operationSelector = BITS_TP) then
                    operationSelector := 0;
                elsif (en = '1' and n_res = '0' and RDY = '1') then
                    operationSelector := operationSelector + 1;
                else
                    operationSelector := -1;
                end if;
        end case;
    end process PID_mpDSP;
end Behavioral;
