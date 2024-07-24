library ieee;
library foc_lib;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use foc_lib.foc_types.all;
use ieee.fixed_pkg.all;


entity PWM is
    generic (
        PWMPeriod : integer := 4095
        );
    port (
        CLK           : in  std_logic;
        electricBrake : in  std_logic;
        PWMValues     : in  type_PWM_register(2 downto 0);
        PWM_CH_U      : out std_logic_vector(1 downto 0);
        PWM_CH_W      : out std_logic_vector(1 downto 0);
        PWM_CH_V      : out std_logic_vector(1 downto 0)
        );
end PWM;

architecture Behavioral of PWM is
    signal sig_CNT : integer range 0 to PWMPeriod := 0;
begin
    process is
        variable CNT     : integer range 0 to PWMPeriod := 0;
        variable CNT_DIR : integer                      := 1;
    begin
        wait until rising_edge(CLK);

        sig_CNT <= CNT;

        case CNT is
            when PWMPeriod =>
                CNT_DIR := -1;
                CNT     := PWMPeriod - 1;
            when 0 =>
                CNT_DIR := 1;
                CNT     := 1;
            when others =>
                CNT := CNT + CNT_DIR;
        end case;
    end process;

    process is
    begin
        wait until rising_edge(CLK);

        if (electricBrake = '1') then
            PWM_CH_U <= "00";
        elsif (sig_CNT < PWMValues(0)) then
            PWM_CH_U <= "10";
        else
            PWM_CH_U <= "01";
        end if;

        if (electricBrake = '1') then
            PWM_CH_V <= "00";
        elsif (sig_CNT < PWMValues(1)) then
            PWM_CH_V <= "10";
        else
            PWM_CH_V <= "01";
        end if;

        if (electricBrake = '1') then
            PWM_CH_W <= "00";
        elsif (sig_CNT < PWMValues(2)) then
            PWM_CH_W <= "10";
        else
            PWM_CH_W <= "01";
        end if;
    end process;
end Behavioral;
