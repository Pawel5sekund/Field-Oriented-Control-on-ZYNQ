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

    constant fracBits : integer               := 17;
    constant intBits  : integer               := 17-fracBits;
    signal en         : std_logic := '1';
    signal n_res      : std_logic := '0';
    signal CLK        : std_logic;
    signal kp         : sfixed (12 downto -22);
    signal ki         : sfixed (12 downto -22);
    signal kd         : sfixed (12 downto -22);
    signal setpoint   : sfixed (0 downto -17);
    signal reading    : sfixed (0 downto -17);
    signal pid_out    : sfixed (0 downto -17) := (others => '0');
begin

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
