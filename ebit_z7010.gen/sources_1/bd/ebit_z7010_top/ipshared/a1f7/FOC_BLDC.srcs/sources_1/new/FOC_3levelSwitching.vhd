library ieee;

library foc_lib;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use foc_lib.foc_types.all;
use ieee.fixed_pkg.all;

entity FOC_3levelSwitching is
    port(
        CLK          : in  std_logic;
        triggerPlus  : in  sfixed(0 downto -17);
        triggerMinus : in  sfixed(0 downto -17);
        outputPlus   : in  sfixed(0 downto -17);
        outputMinus  : in  sfixed(0 downto -17);
        outputMid    : in  sfixed(0 downto -17);
        reading      : in  sfixed(0 downto -17);
        setpoint     : in  sfixed(0 downto -17);
        output       : out sfixed(0 downto -17)
        );
end FOC_3levelSwitching;

architecture Behavioral of FOC_3levelSwitching is

begin
    process
        variable error             : sfixed(0 downto -17);
        variable operationSelector : integer range 0 to 1 := 0;
    begin
        wait until rising_edge(CLK);
        case operationSelector is
            when 0 =>
                error := resize(setpoint - reading, error'left, error'right);

                operationSelector := 1;
            when 1 =>
                if error > triggerPlus then
                    output <= outputPlus;
                elsif error < triggerMinus then
                    output <= outputMinus;
                else
                    output <= outputMid;
                end if;
                
                operationSelector := 0;
            when others =>
                operationSelector := 0;
        end case;
    end process;

end Behavioral;
