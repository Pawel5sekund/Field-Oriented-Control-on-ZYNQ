library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FOC_deadTimeMOSFETsHandler is
    generic (
        deadTime : integer := 255
        );
    port(
        CLK   : in  std_logic;
        A_in  : in  std_logic;
        B_in  : in  std_logic;
        A_out : out std_logic;
        B_out : out std_logic
        );
end FOC_deadTimeMOSFETsHandler;

architecture Behavioral of FOC_deadTimeMOSFETsHandler is

begin
    process
        variable CNT_A : integer range 0 to deadTime := 0;
        variable CNT_B : integer range 0 to deadTime := 0;
    begin
        wait until RISING_EDGE(CLK);
        case A_IN is
            when '1' =>
                CNT_A := 0;
            when '0' =>
                if CNT_A /= deadTime then
                    CNT_A := CNT_A+1;
                end if;
            when others =>
        end case;

        case B_IN is
            when '1' =>
                CNT_B := 0;
            when '0' =>
                if CNT_B /= deadTime then
                    CNT_B := CNT_B+1;
                end if;
            when others =>
        end case;

        if CNT_A = deadTime then
            B_out <= B_in;
        else
            B_out <= '0';
        end if;

        if CNT_B = deadTime then
            A_out <= A_in;
        else
            A_out <= '0';
        end if;
    end process;

end Behavioral;
