library ieee;
library foc_lib;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use foc_lib.foc_types.all;
use ieee.fixed_pkg.all;

entity testbench_torqueVectorGenerator is
    --  Port ( );
end testbench_torqueVectorGenerator;

architecture Behavioral of testbench_torqueVectorGenerator is

    component FOC_torqueVectorGenerator is
        generic(
            amountScalingParameters : integer               := 1;
            positionScaler          : sfixed (0 downto -17) := resize(to_sfixed(1.0/1024.0, 0, -17), 0, -17)  --1/(encoder pulses per electrical rotationn
        );
        port (
            CLK               : in  std_logic;
            position          : in  signed (17 downto 0);
            vectorPosition    : in  sfixed (0 downto -17);
            scalingParameters : in  scalingParametersArray (amountScalingParameters-1 downto 0);
            PWMOutput         : out type_PWM_register(2 downto 0)
        );

    end component;

    signal CLK               :   std_logic;
    signal position          :   signed (17 downto 0);
    signal vectorPosition    :   sfixed (0 downto -17);
    signal scalingParameters :   scalingParametersArray (0 downto 0);
    signal PWMOutput         :   type_PWM_register(2 downto 0);

begin

    torqueVectorGenerator: FOC_torqueVectorGenerator
        generic map(
            amountScalingParameters => 1,
            positionScaler => resize(to_sfixed(1.0/1024.0, 0, -17), 0, -17)  --1/(encoder pulses per electrical rotationn
        )
        port map (
            CLK => CLK,
            position => position,
            vectorPosition => vectorPosition,
            scalingParameters => scalingParameters,
            PWMOutput => PWMOutput
        );

    CLK_process : process
    begin
        for i in 0 to 1000000 loop
            wait for 10ns;
            CLK <= '1';
            wait for 10ns;
            CLK <= '0';
        end loop;
    end process CLK_process;

    send_data: process
        variable CNT : integer := 0;
    begin
        wait until rising_edge(CLK);
        if CNT < 100 then
            position <= to_signed(0, 18);
            vectorPosition <= resize(to_sfixed(0.0/1024.0, 0, -17), 0, -17);
            scalingParameters(0) <= to_sfixed(1.0, 0, -17);
        elsif CNT = 100 then
            position <= to_signed(0, 18);
            vectorPosition <= to_sfixed(1.0, 0, -17);
            scalingParameters(0) <= to_sfixed(1.0, 0, -17);
        elsif CNT = 200 then
            position <= to_signed(2047, 18);
            vectorPosition <= to_sfixed(1.0, 0, -17);
            scalingParameters(0) <= to_sfixed(1.0, 0, -17);
        end if;

        CNT := CNT + 1;
    end process send_data;


end Behavioral;
