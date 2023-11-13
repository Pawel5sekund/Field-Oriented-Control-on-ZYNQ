library IEEE;
library foc_lib;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.fixed_pkg.all;
use foc_lib.foc_types.all;
--inputs -> data from AXI4
--outputs -> data to AXI4

entity FOC_AXI4RegistersHandler is
    generic (
        C_S_AXI_DATA_WIDTH : integer := 32;
        -- Width of S_AXI address bus
        C_S_AXI_ADDR_WIDTH : integer := 4;
        valuesInputAmount  : integer := 16;
        valuesOutputAmount : integer := 16
        );
    port (
        CLK          : in  std_logic;
        ext_slv_reg0 : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);  --receive configuration
        ext_slv_reg1 : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);  --receive addres of the paramters, which need to be readen
        ext_slv_reg2 : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);  --sends value, which are on the addr from reg1
        ext_slv_reg3 : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);  --sends actual status of the regulator (e.g. errors)
        inputValues  : out valuesArrayAXI4 (valuesInputAmount-1 downto 0);
        outputValues : in  valuesArrayAXI4 (valuesOutputAmount-1 downto 0)
        );
end FOC_AXI4RegistersHandler;

architecture Behavioral of FOC_AXI4RegistersHandler is
begin
    inputs : process
        variable buff_inputValues : valuesArrayAXI4 (valuesInputAmount-1 downto 0);
        variable inAXIAddr        : integer range valuesInputAmount downto 0;
    begin
        wait until RISING_EDGE(CLK);
        inAXIAddr                   := to_integer(unsigned(ext_slv_reg0(C_S_AXI_DATA_WIDTH-1 downto C_S_AXI_DATA_WIDTH-1-7)));
        buff_inputValues(inAXIAddr) := ext_slv_reg0(17 downto 0);

        inputValues <= buff_inputValues;
    end process;

    outputs : process
        variable outAXIAddr : integer range valuesOutputAmount downto 0;
    begin
        wait until RISING_EDGE(CLK);
        outAXIAddr                                                       := to_integer(unsigned(ext_slv_reg1(7 downto 0)));
        ext_slv_reg2(17 downto 0)                                        <= outputValues(outAXIAddr);
        ext_slv_reg2(C_S_AXI_DATA_WIDTH-1 downto C_S_AXI_DATA_WIDTH-1-7) <= std_logic_vector(to_unsigned(outAXIAddr, 8));
        ext_slv_reg2(C_S_AXI_DATA_WIDTH-1-8 downto 18)                   <= (others => '0');
    end process;
end Behavioral;
