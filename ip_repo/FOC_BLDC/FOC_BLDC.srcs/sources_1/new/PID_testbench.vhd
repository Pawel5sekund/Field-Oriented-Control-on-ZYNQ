----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/09/2023 08:35:25 PM
-- Design Name: 
-- Module Name: PID_testbench - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
library foc_lib;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.fixed_pkg.all;
use foc_lib.foc_types.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PID_testbench is
--  Port ( );
end PID_testbench;

architecture Behavioral of PID_testbench is

    component PID is
        generic (
            sampling_time : real    := 0.000000064;  --64ns
            fracBits      : integer := 8;
            intBits       : integer := 17-fracBits;
            max_p_pid     : SFIXED(intBits downto -fracBits);
            max_i_pid     : SFIXED(intBits downto -fracBits);
            max_d_pid     : SFIXED(intBits downto -fracBits);
            max_pid_pid   : SFIXED(intBits downto -fracBits)
            );
        port (
            en       : in  std_logic;
            n_res    : in  std_logic;
            CLK      : in  std_logic;
            kp       : in  UFIXED (intBits downto -fracBits);
            ki       : in  UFIXED (intBits downto -fracBits);
            kd       : in  UFIXED (intBits downto -fracBits);
            setpoint : in  sfixed (0 downto -11);
            reading  : in  sfixed (0 downto -11);
            pid_out  : out sfixed (0 downto -17) := (others => '0')
            );
    end component;

    constant fracBits : integer               := 8;
    constant intBits  : integer               := 17-fracBits;
    signal en         : std_logic;
    signal n_res      : std_logic;
    signal CLK        : std_logic;
    signal kp         : UFIXED (intBits downto -fracBits);
    signal ki         : UFIXED (intBits downto -fracBits);
    signal kd         : UFIXED (intBits downto -fracBits);
    signal setpoint   : sfixed (0 downto -11);
    signal reading    : sfixed (0 downto -11);
    signal pid_out    : sfixed (0 downto -17) := (others => '0');

begin

    PID_inst : PID
        generic map(
            sampling_time => 0.000000064,
            fracBits      => 8,
            intBits       => 17-fracBits,
            max_p_pid     => to_sfixed(1.0, 0, 17),
            max_i_pid     => to_sfixed(1.0, 0, 17),
            max_d_pid     => to_sfixed(1.0, 0, 17),
            max_pid_pid   => to_sfixed(1.0, 0, 17)
            )
        port map(
            en       => en,
            n_res    => n_res,
            CLK      => CLK,
            kp       => kp,
            ki       => ki,
            kd       => kd,
            setpoint => setpoint,
            reading  => reading,
            pid_out  => pid_out
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

    data_send : process

    begin
        wait until RISING_EDGE(CLK);

    end process;


end Behavioral;
