library IEEE;
library foc_lib;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.fixed_pkg.all;
use foc_lib.foc_types.all;

entity FOC_fuzzyPID is
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
end FOC_fuzzyPID;

architecture Behavioral of FOC_fuzzyPID is

    component FOC_fuzzyLogic is
        port (
            CLK       : in  std_logic;
            reading1  : in  sfixed(0 downto -17);
            reading2  : in  sfixed(0 downto -17);
            output    : out sfixed(0 downto -17);
            Kin1      : in  sfixed(12 downto -22);
            Kin2      : in  sfixed(12 downto -22);
            maxError1 : in  sfixed (0 downto -17);
            minError1 : in  sfixed (0 downto -17);
            maxError2 : in  sfixed (0 downto -17);
            minError2 : in  sfixed (0 downto -17);
            Kout      : in  sfixed(12 downto -22);
            maxOut    : in  sfixed (0 downto -17);
            minOut    : in  sfixed (0 downto -17);
            setpoint1 : in  sfixed(0 downto -17);
            setpoint2 : in  sfixed(0 downto -17)
            );
    end component;

    signal integral        : sfixed(0 downto -17);
    signal derivation      : sfixed (0 downto -17);
    signal output_PI      : sfixed (0 downto -17);
    signal output_PD      : sfixed (0 downto -17);
    constant sampling_time : real := 0.000000064;  --640ns
begin

    PI: FOC_fuzzyLogic
        port map (
            CLK       => CLK,
            reading1  => reading,
            reading2  => resize(-integral, 0, -17),
            output    => output_PI,
            Kin1      => kp,
            Kin2      => ki,
            maxError1 => max_p_pid,
            minError1 => min_p_pid,
            maxError2 => max_i_pid,
            minError2 => min_i_pid,
            Kout      => to_sfixed(1.0, 12, -22),
            maxOut    => max_pid_pid,
            minOut    => min_pid_pid,
            setpoint1 => setpoint,
            setpoint2 => to_sfixed(0.0, 0, -17)
            );

    PD: FOC_fuzzyLogic
        port map (
            CLK       => CLK,
            reading1  => reading,
            reading2  => resize(-derivation, 0, -17),
            output    => output_PD,
            Kin1      => kp,
            Kin2      => kd,
            maxError1 => max_p_pid,
            minError1 => min_p_pid,
            maxError2 => max_d_pid,
            minError2 => min_d_pid,
            Kout      => to_sfixed(1.0, 12, -22),
            maxOut    => max_pid_pid,
            minOut    => min_pid_pid,
            setpoint1 => setpoint,
            setpoint2 => to_sfixed(0.0, 0, -17)
            );

    process
        variable error             : sfixed(0 downto -17)       := (others => '0');
        variable lastError         : sfixed(0 downto -17)       := (others => '0');
        variable dError            : sfixed(76 downto -17)      := (others => '0');
        variable sumError          : sfixed(76 downto-17)       := (others => '0');
        variable operationSelector : integer range 63 downto -1 := -1;
        variable outputSum : sfixed(1 downto -17) := (others => '0');
        constant BITS_TP           : integer                    := -clog2(sampling_time);
    begin
        wait until RISING_EDGE(CLK);
        case operationSelector is
            when 0 =>
                error := resize(setpoint - reading, 0, -17);

                operationSelector := 1;
            when 1 =>
                dError   := resize(lastError - error, dError'left, dError'right);
                sumError := resize(sumError + error, sumError'left, sumError'right);

                operationSelector := 2;
            when 2 =>
                lastError := error;

                operationSelector := 3;

            when 3 =>
                integral   <= resize(divByBits(sumError, BITS_TP), integral'left, integral'right);
                derivation <= resize(mulByBits(dError, BITS_TP), derivation'left, derivation'right);
                outputSum := output_PI + output_PD;
                operationSelector := 4;

            when 4 =>
                if (outputSum > max_pid_pid) then
                    pid_out <= max_pid_pid;
                elsif(outputSum < min_pid_pid) then
                    pid_out <= min_pid_pid;
                else
                    pid_out <= resize(outputSum, pid_out'left, pid_out'right);
                end if;

                operationSelector := 5;
            when others =>
                if (operationSelector = BITS_TP) then
                    operationSelector := 0;
                elsif (en = '1' and n_res = '0') then
                    operationSelector := operationSelector + 1;
                else
                    operationSelector := -1;
                end if;
        end case;
    end process;

end Behavioral;
