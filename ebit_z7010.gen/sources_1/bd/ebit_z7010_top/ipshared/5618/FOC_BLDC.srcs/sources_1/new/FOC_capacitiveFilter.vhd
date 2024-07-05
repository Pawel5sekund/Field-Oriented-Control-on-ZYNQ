library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FOC_capacitiveFilter is
    generic (
        capacity : integer := 10;
        histeresis : integer := 4
        );
    port (
        CLK    : in  std_logic;
        INPUT  : in  std_logic;
        OUTPUT : out std_logic
        );
end FOC_capacitiveFilter;

architecture Behavioral of FOC_capacitiveFilter is

begin
    process
        variable CNT : integer range 0 to capacity := 0;
        variable buff_OUTPUT : std_logic := '0';
    begin
        wait until RISING_EDGE(CLK);

        case INPUT is
            when '0' =>
                if CNT /= 0 then
                    CNT := CNT - 1;
                end if;
            when '1' =>
                if CNT /= capacity then
                    CNT := CNT + 1;
                end if;
            when others =>
        end case;

        if CNT >= (capacity/2+histeresis/2) then
            buff_OUTPUT := '1';
        elsif CNT <= (capacity/2-histeresis/2) then 
            buff_OUTPUT := '0';
        end if; 

        OUTPUT <= buff_OUTPUT;

    end process;


end Behavioral;
