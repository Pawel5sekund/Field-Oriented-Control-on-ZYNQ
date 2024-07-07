library IEEE;
library foc_lib;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.fixed_pkg.all;
use foc_lib.foc_types.all;

entity PID is
    generic (
        --sampling_time : real                             := 0.000000064;  --64ns
        fracBits : integer := 17;
        intBits  : integer := 0
        );
    port (
        en          : in  std_logic;
        n_res       : in  std_logic;
        CLK         : in  std_logic;
        kp          : in  sfixed (12 downto -22);
        ki          : in  sfixed (12 downto -22);
        kd          : in  sfixed (12 downto -22);
        max_p_pid   : in  SFIXED(0 downto -17)  := to_sfixed(0.9999, 0, -17);
        min_p_pid   : in  SFIXED(0 downto -17)  := to_sfixed(-0.9999, 0, -17);
        max_i_pid   : in  SFIXED(0 downto -17)  := to_sfixed(0.9999, 0, -17);
        min_i_pid   : in  SFIXED(0 downto -17)  := to_sfixed(-0.9999, 0, -17);
        max_d_pid   : in  SFIXED(0 downto -17)  := to_sfixed(0.9999, 0, -17);
        min_d_pid   : in  SFIXED(0 downto -17)  := to_sfixed(-0.9999, 0, -17);
        max_pid_pid : in  SFIXED(0 downto -17)  := to_sfixed(0.9999, 0, -17);
        min_pid_pid : in  SFIXED(0 downto -17)  := to_sfixed(-0.9999, 0, -17);
        setpoint    : in  sfixed (0 downto -17);
        reading     : in  sfixed (0 downto -17);
        pid_out     : out sfixed (0 downto -17) := (others => '0')
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

    constant amountDSP     : integer                                     := 10;
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
        variable error                          : sfixed (setpoint'range)                                             := (others => '0');
        variable lastError                      : sfixed (setpoint'range)                                             := (others => '0');
        variable operationSelector              : integer range 63 downto -1                                          := -1;
        variable proportional_P                 : SFIXED((64+reading'right+kp'right) downto (reading'right+kp'right)) := (others => '0');
        variable vec_sumError                   : std_logic_vector(93 downto 0)                                       := (others => '0');
        variable sumError                       : sfixed(93+reading'right downto reading'right)                       := (others => '0');
        variable sumErrorReducedQuantenized     : sfixed(0 downto -17)                                                := (others => '0');
        variable vec_sumErrorReducedQuantenized : std_logic_vector(17 downto 0);
        variable integral_I                     : SFIXED((64+reading'right+ki'right) downto (reading'right+ki'right)) := (others => '0');
        variable vec_integral_I                 : std_logic_vector(64 downto 0)                                       := (others => '0');
        variable vec_differential_D             : std_logic_vector(64 downto 0)                                       := (others => '0');
        variable differential_D                 : SFIXED((64+reading'right+kd'right) downto (reading'right+kd'right)) := (others => '0');
        variable vec_proportional_P             : std_logic_vector(64 downto 0)                                       := (others => '0');
        variable vec_kp                         : std_logic_vector (kp'left-kp'right downto 0)                        := (others => '0');
        variable vec_ki                         : std_logic_vector (kp'left-kp'right downto 0)                        := (others => '0');
        variable vec_kd                         : std_logic_vector (kp'left-kp'right downto 0)                        := (others => '0');
        variable sum_pid                        : sfixed (pid_out'left downto pid_out'right)                          := (others => '0');
        variable vec_error                      : std_logic_vector(17 downto 0)                                       := (others => '0');
        variable vec_lastError                  : std_logic_vector(17 downto 0)                                       := (others => '0');
        variable vec_negatedLastError           : std_logic_vector(17 downto 0)                                       := (others => '0');
        constant VECTOR_0                       : std_logic_vector (47 downto 0)                                      := (others => '0');
        constant BITS_TP                        : integer                                                             := -clog2(sampling_time);
        variable ONE                            : std_logic_vector(17 downto 0)                                       := std_logic_vector(to_unsigned(1, 18));
    begin
        wait until RISING_EDGE(CLK);
        case operationSelector is
            when 0 =>
                error     := resize(setpoint - reading, error'left, error'right);  --calc error
                vec_error := std_logic_vector(error);

                if (proportional_P < min_p_pid) then  --check result of P
                    proportional_P := resize(min_p_pid, proportional_P'left, proportional_P'right);
                elsif (proportional_P > max_p_pid) then
                    proportional_P := resize(max_p_pid, proportional_P'left, proportional_P'right);
                end if;

                if (integral_I < min_i_pid) then  --check result of I
                    integral_I := resize(min_i_pid, integral_I'left, integral_I'right);
                elsif (integral_I > max_i_pid) then
                    integral_I := resize(max_i_pid, integral_I'left, integral_I'right);
                end if;

                if (differential_D < min_d_pid) then  --check result of D
                    differential_D := resize(min_d_pid, differential_D'left, differential_D'right);
                elsif (differential_D > max_d_pid) then
                    differential_D := resize(max_d_pid, differential_D'left, differential_D'right);
                end if;

                if (vecToSfixed(P_reg(5), pid_out'right) < min_pid_pid) then  --check result of the output of PID
                    pid_out <= resize(min_pid_pid, pid_out'left, pid_out'right);
                elsif (vecToSfixed(P_reg(5), pid_out'right) > max_pid_pid) then
                    pid_out <= resize(max_pid_pid, pid_out'left, pid_out'right);
                else
                    pid_out <= resize(vecToSfixed(P_reg(5), pid_out'right), pid_out'left, pid_out'right);
                end if;

                operationSelector := 1;
            when 1 =>
                vec_kp         := std_logic_vector(kp);
                doubleMulDSPHandler(vec_proportional_P, vec_error, vec_kp, vec_lastError, C_reg(0), C_reg(6), B_reg(0), B_reg(6), A_reg(0), A_reg(6), D_reg(0), D_reg(6), P_reg(0), P_reg(6));
                proportional_P := divByBits(vecToSfixed(vec_proportional_P, proportional_P'right), 1);

                --A_reg(1)                                                        <= std_logic_vector(error);  --I
                --B_reg(1)                                                        <= std_logic_vector(ki);
                --D_reg(1)                                                        <= std_logic_vector(lastError);
                --vec_integral_I(vec_integral_I'left downto vec_integral_I'right) := std_logic_vector(integral_I(integral_I'left downto integral_I'right));
                --doubleSumDSPHandler(vec_integral_I, C_reg(1), C_reg(2), B_reg(2), A_reg(2), P_reg(1), P_reg(2));
                doubleSumDSPHandler(vec_sumError, vec_error, ONE, vec_lastError, C_reg(1), C_reg(2), B_reg(1), B_reg(2), A_reg(1), A_reg(2), D_reg(1), D_reg(2), P_reg(1), P_reg(2));
                --sumError            := divByBits(vecToSfixed(vec_sumError, sumError'right), BITS_TP+1);
                sumErrorReducedQuantenized     := resize(divByBits(vecToSfixed(vec_sumError, sumError'right), BITS_TP+1), sumErrorReducedQuantenized'left, sumErrorReducedQuantenized'right);
                vec_sumErrorReducedQuantenized := std_logic_vector(sumErrorReducedQuantenized);
                vec_ki                         := std_logic_vector(ki);
                doubleMulDSPHandler(vec_integral_I, vec_sumErrorReducedQuantenized, vec_ki, ONE, C_reg(7), C_reg(8), B_reg(7), B_reg(8), A_reg(7), A_reg(8), D_reg(7), D_reg(8), P_reg(7), P_reg(8));
                integral_I                     := vecToSfixed(vec_integral_I, integral_I'right);

                vec_kd         := std_logic_vector(kd);
                --A_reg(3)       <= std_logic_vector(error);  --D
                --B_reg(3)       <= std_logic_vector(kd);
                --D_reg(3)       <= std_logic_vector(-(signed(lastError)));
                --differential_D := resize(vecToSfixed(P_reg(3), differential_D'right), differential_D'left, differential_D'right);
                doubleMulDSPHandler(vec_differential_D, vec_error, vec_kd, vec_negatedLastError, C_reg(3), C_reg(4), B_reg(3), B_reg(4), A_reg(3), A_reg(4), D_reg(3), D_reg(4), P_reg(3), P_reg(4));
                differential_D := mulByBits(vecToSfixed(vec_differential_D, differential_D'right), BITS_TP-1);

                A_reg(5) <= std_logic_vector(resize(proportional_P, 0, -17));
                B_reg(5) <= std_logic_vector(to_unsigned(1, 18));  --send 1
                C_reg(5) <= std_logic_vector(resize(integral_I, C_reg(5)'left-17, -17));
                D_reg(5) <= std_logic_vector(resize(differential_D, 0, -17));
                --sum_pid := vecToSfixed(P_reg(5), sum_pid'right);

                operationSelector := 2;
            when 2 =>
                lastError            := error;
                vec_lastError        := std_logic_vector(error);
                vec_negatedLastError := std_logic_vector(-(signed(error)));

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
