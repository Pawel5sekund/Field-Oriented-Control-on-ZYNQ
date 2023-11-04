library ieee;

library foc_lib;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use foc_lib.foc_types.all;
use ieee.fixed_pkg.all;

entity FOC_3levelHisteresis is
    port(
        triggerPlus: in sfixed(0 downto 17);
        triggerMinus: in sfixed(0 downto 17);
        outputPlus: in sfixed(0 downto 17);
        outputMinus: in sfixed(0 downto 17);
        outputMid: in sfixed(0 downto 17);
        reading: in sfixed(0 downto 17);
        setpoint: in sfixed(0 downto 17);
        output: out sfixed(0 downto 17)
    );
end FOC_3levelHisteresis;

architecture Behavioral of FOC_3levelHisteresis is

begin
    process
        variable error: sfixed(0 downto 17);
    begin
        error := setpoint - reading;

        if error > triggerPlus then
            output := outputPlus;
        elsif error < triggerMinus then
            output := outputMinus;
        else
            output := outputMid;
        end if;

    end process;

end Behavioral;
