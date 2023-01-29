library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FOC_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface FOC_AXI
		C_FOC_AXI_DATA_WIDTH	: integer	:= 32;
		C_FOC_AXI_ADDR_WIDTH	: integer	:= 4
	);
	port (
		-- Users to add ports here
        CLK: in std_logic;
        --data input
        current_sensor: in std_logic_vector (11 downto 0);
        encoder: in std_logic_vector (1 downto 0);
        DIR: in std_logic;
        STEP: in std_logic;
        --data output
        PWM_CH_U: out std_logic_vector (1 downto 0);
        PWM_CH_W: out std_logic_vector (1 downto 0);
        PWM_CH_V: out std_logic_vector (1 downto 0);
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface FOC_AXI
		foc_axi_aclk	: in std_logic;
		foc_axi_aresetn	: in std_logic;
		foc_axi_awaddr	: in std_logic_vector(C_FOC_AXI_ADDR_WIDTH-1 downto 0);
		foc_axi_awprot	: in std_logic_vector(2 downto 0);
		foc_axi_awvalid	: in std_logic;
		foc_axi_awready	: out std_logic;
		foc_axi_wdata	: in std_logic_vector(C_FOC_AXI_DATA_WIDTH-1 downto 0);
		foc_axi_wstrb	: in std_logic_vector((C_FOC_AXI_DATA_WIDTH/8)-1 downto 0);
		foc_axi_wvalid	: in std_logic;
		foc_axi_wready	: out std_logic;
		foc_axi_bresp	: out std_logic_vector(1 downto 0);
		foc_axi_bvalid	: out std_logic;
		foc_axi_bready	: in std_logic;
		foc_axi_araddr	: in std_logic_vector(C_FOC_AXI_ADDR_WIDTH-1 downto 0);
		foc_axi_arprot	: in std_logic_vector(2 downto 0);
		foc_axi_arvalid	: in std_logic;
		foc_axi_arready	: out std_logic;
		foc_axi_rdata	: out std_logic_vector(C_FOC_AXI_DATA_WIDTH-1 downto 0);
		foc_axi_rresp	: out std_logic_vector(1 downto 0);
		foc_axi_rvalid	: out std_logic;
		foc_axi_rready	: in std_logic
	);
end FOC_v1_0;

architecture arch_imp of FOC_v1_0 is

	-- component declaration
	component FOC_v1_0_FOC_AXI is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 4
		);
		port (
		--porty uzytkownika
		CLK: in std_logic;
        --data input
        current_sensor: in std_logic_vector (11 downto 0);
        encoder: in std_logic_vector (1 downto 0);
        DIR: in std_logic;
        STEP: in std_logic;
        --data output
        PWM_CH_U: out std_logic_vector (1 downto 0);
        PWM_CH_W: out std_logic_vector (1 downto 0);
        PWM_CH_V: out std_logic_vector (1 downto 0);
		--porty systemu
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component FOC_v1_0_FOC_AXI;

begin

-- Instantiation of Axi Bus Interface FOC_AXI
FOC_v1_0_FOC_AXI_inst : FOC_v1_0_FOC_AXI
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_FOC_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_FOC_AXI_ADDR_WIDTH
	)
	port map (
		--porty uzytkownika
		CLK=>CLK,
        --data input
        current_sensor=>current_sensor,
        encoder=>encoder,
        DIR=>DIR,
        STEP=>STEP,
        --data output
        PWM_CH_U=>PWM_CH_U,
        PWM_CH_W=>PWM_CH_W,
        PWM_CH_V=>PWM_CH_V,
		--porty systemu
		S_AXI_ACLK	=> foc_axi_aclk,
		S_AXI_ARESETN	=> foc_axi_aresetn,
		S_AXI_AWADDR	=> foc_axi_awaddr,
		S_AXI_AWPROT	=> foc_axi_awprot,
		S_AXI_AWVALID	=> foc_axi_awvalid,
		S_AXI_AWREADY	=> foc_axi_awready,
		S_AXI_WDATA	=> foc_axi_wdata,
		S_AXI_WSTRB	=> foc_axi_wstrb,
		S_AXI_WVALID	=> foc_axi_wvalid,
		S_AXI_WREADY	=> foc_axi_wready,
		S_AXI_BRESP	=> foc_axi_bresp,
		S_AXI_BVALID	=> foc_axi_bvalid,
		S_AXI_BREADY	=> foc_axi_bready,
		S_AXI_ARADDR	=> foc_axi_araddr,
		S_AXI_ARPROT	=> foc_axi_arprot,
		S_AXI_ARVALID	=> foc_axi_arvalid,
		S_AXI_ARREADY	=> foc_axi_arready,
		S_AXI_RDATA	=> foc_axi_rdata,
		S_AXI_RRESP	=> foc_axi_rresp,
		S_AXI_RVALID	=> foc_axi_rvalid,
		S_AXI_RREADY	=> foc_axi_rready
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
