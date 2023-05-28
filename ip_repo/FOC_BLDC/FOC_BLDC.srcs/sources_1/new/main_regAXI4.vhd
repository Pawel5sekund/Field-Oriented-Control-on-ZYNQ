----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/19/2023 09:05:40 PM
-- Design Name: 
-- Module Name: main_regAXI4 - Behavioral
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
use IEEE.STD_LOGIC_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

--kp                              : in  UFIXED (intBits downto -fracBits);
--ki                              : in  UFIXED (intBits downto -fracBits);
--kd                              : in  UFIXED (intBits downto -fracBits);
--current_setpoint_move           : in  unsigned (11 downto 0);  --tbd change to unsigned
--position_calibration            : in  signed (14 downto 0);
--position_calibration_set_signal : in  std_logic;

entity main_regAXI4 is
    generic (
        --start AXI4
        C_S_AXI_DATA_WIDTH : integer := 32
        );
    port (
        slv_reg0 : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := (others => '0');
        slv_reg1 : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := (others => '0');
        slv_reg2 : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := (others => '0');
        slv_reg3 : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := (others => '0')
        );
--  Port ( );
end main_regAXI4;

architecture Behavioral of main_regAXI4 is

begin


end Behavioral;
