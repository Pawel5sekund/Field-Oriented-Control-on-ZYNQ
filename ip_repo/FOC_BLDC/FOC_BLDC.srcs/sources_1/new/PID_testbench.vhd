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
        --sampling_time : real                             := 0.000000064;  --64ns
        fracBits      : integer                          := 17;
        intBits       : integer                          := 0;
        max_p_pid     : SFIXED(0 downto -17) := to_sfixed(0.9999, 0, -17);
        max_i_pid     : SFIXED(0 downto -17) := to_sfixed(0.9999, 0, -17);
        max_d_pid     : SFIXED(0 downto -17) := to_sfixed(0.9999, 0, -17);
        max_pid_pid   : SFIXED(0 downto -17) := to_sfixed(0.9999, 0, -17)
        );
    port (
        en       : in  std_logic;
        n_res    : in  std_logic;
        CLK      : in  std_logic;
        kp       : in  sfixed (0 downto -17);
        ki       : in  sfixed (0 downto -17);
        kd       : in  sfixed (0 downto -17);
        setpoint : in  sfixed (0 downto -17);
        reading  : in  sfixed (0 downto -17);
        pid_out  : out sfixed (0 downto -17) := (others => '0')
        );
    end component;

    constant fracBits : integer               := 17;
    constant intBits  : integer               := 17-fracBits;
    signal en         : std_logic := '1';
    signal n_res      : std_logic := '1';
    signal CLK        : std_logic;
    signal kp         : sfixed (intBits downto -fracBits);
    signal ki         : sfixed (intBits downto -fracBits);
    signal kd         : sfixed (intBits downto -fracBits);
    signal setpoint   : sfixed (0 downto -17);
    signal reading    : sfixed (0 downto -17);
    signal pid_out    : sfixed (0 downto -17) := (others => '0');

begin

    PID_inst : PID
        generic map(
            --sampling_time => 0.000000064,
            fracBits      => 17,
            intBits       => 0,
            max_p_pid     => to_sfixed(0.999, 0, -17),
            max_i_pid     => to_sfixed(0.999, 0, -17),
            max_d_pid     => to_sfixed(0.999, 0, -17),
            max_pid_pid   => to_sfixed(0.999, 0, -17)
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
        kp <= to_sfixed(0.1, kp'left, kp'right);
        ki <= to_sfixed(0.0, kp'left, kp'right);
        kd <= to_sfixed(0.0, kp'left, kp'right);
        setpoint <= to_sfixed(0.5, setpoint'left, setpoint'right);
        reading <= to_sfixed(0.25, reading'left, reading'right);
    end process;


end Behavioral;
