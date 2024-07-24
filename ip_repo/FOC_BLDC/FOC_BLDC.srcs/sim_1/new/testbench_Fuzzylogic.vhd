library ieee;

library foc_lib;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use foc_lib.foc_types.all;
use ieee.fixed_pkg.all;

entity testbench_Fuzzylogic is
--  Port ( );
end testbench_Fuzzylogic;

architecture Behavioral of testbench_Fuzzylogic is

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

    signal CLK       : std_logic;
    signal reading1  : sfixed(0 downto -17)  := (others => '0');
    signal reading2  : sfixed(0 downto -17)  := (others => '0');
    signal output    : sfixed(0 downto -17)  := (others => '0');
    signal Kin1      : sfixed(12 downto -22) := (others => '0');
    signal Kin2      : sfixed(12 downto -22) := (others => '0');
    signal maxError1 : sfixed (0 downto -17) := (others => '0');
    signal minError1 : sfixed (0 downto -17) := (others => '0');
    signal maxError2 : sfixed (0 downto -17) := (others => '0');
    signal minError2 : sfixed (0 downto -17) := (others => '0');
    signal Kout      : sfixed(12 downto -22) := (others => '0');
    signal maxOut    : sfixed (0 downto -17) := (others => '0');
    signal minOut    : sfixed (0 downto -17) := (others => '0');
    signal setpoint1 : sfixed(0 downto -17)  := (others => '0');
    signal setpoint2 : sfixed(0 downto -17)  := (others => '0');

begin

    core : FOC_fuzzyLogic
        port map (
            CLK       => CLK,
            reading1  => reading1,
            reading2  => reading2,
            output    => output,
            Kin1      => Kin1,
            Kin2      => Kin2,
            maxError1 => maxError1,
            minError1 => minError1,
            maxError2 => maxError2,
            minError2 => minError2,
            Kout      => kout,
            maxOut    => maxOut,
            minOut    => minOut,
            setpoint1 => setpoint1,
            setpoint2 => setpoint2
            );


    setpoint1 <= to_sfixed(0.0, 0, -17);
    setpoint2 <= to_sfixed(0.0, 0, -17);

    reading1 <= to_sfixed(0.0, 0, -17);
    reading2 <= to_sfixed(0.0, 0, -17);

    kin1 <= to_sfixed(1.0, kin1'left, kin1'right);
    kin2 <= to_sfixed(1.0, kin2'left, kin2'right);
    kout <= to_sfixed(1.0, kout'left, kout'right);

    maxError1 <= to_sfixed(1.0, 0, -17);
    maxError2 <= to_sfixed(1.0, 0, -17);

    minError1 <= to_sfixed(-1.0, 0, -17);
    minError2 <= to_sfixed(-1.0, 0, -17);

    maxOut <= to_sfixed(1.0, 0, -17);
    minOut <= to_sfixed(-1.0, 0, -17);

    CLK_process : process
    begin
        for i in 0 to 1000000 loop
            wait for 10ns;
            CLK <= '1';
            wait for 10ns;
            CLK <= '0';
        end loop;
    end process CLK_process;

end Behavioral;
