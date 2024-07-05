--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_5d6e.bd
--Design : bd_5d6e
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_5d6e is
  port (
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_5d6e : entity is "bd_5d6e,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_5d6e,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_5d6e : entity is "ebit_z7010_top_debug_bridge_0_0.hwdef";
end bd_5d6e;

architecture STRUCTURE of bd_5d6e is
  component bd_5d6e_axi_jtag_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    tck : out STD_LOGIC;
    tms : out STD_LOGIC;
    tdi : out STD_LOGIC;
    tdo : in STD_LOGIC
  );
  end component bd_5d6e_axi_jtag_0;
  component bd_5d6e_bsip_0 is
  port (
    drck : out STD_LOGIC;
    reset : out STD_LOGIC;
    sel : out STD_LOGIC;
    shift : out STD_LOGIC;
    tdi : out STD_LOGIC;
    update : out STD_LOGIC;
    capture : out STD_LOGIC;
    runtest : out STD_LOGIC;
    tck : out STD_LOGIC;
    tms : out STD_LOGIC;
    tap_tdo : out STD_LOGIC;
    tdo : in STD_LOGIC;
    tap_tdi : in STD_LOGIC;
    tap_tms : in STD_LOGIC;
    tap_tck : in STD_LOGIC
  );
  end component bd_5d6e_bsip_0;
  signal S_AXI_1_ARADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal S_AXI_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_1_ARREADY : STD_LOGIC;
  signal S_AXI_1_ARVALID : STD_LOGIC;
  signal S_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal S_AXI_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_1_AWREADY : STD_LOGIC;
  signal S_AXI_1_AWVALID : STD_LOGIC;
  signal S_AXI_1_BREADY : STD_LOGIC;
  signal S_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_1_BVALID : STD_LOGIC;
  signal S_AXI_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_1_RREADY : STD_LOGIC;
  signal S_AXI_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_1_RVALID : STD_LOGIC;
  signal S_AXI_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_1_WREADY : STD_LOGIC;
  signal S_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_1_WVALID : STD_LOGIC;
  signal axi_jtag_tck : STD_LOGIC;
  signal axi_jtag_tdi : STD_LOGIC;
  signal axi_jtag_tms : STD_LOGIC;
  signal bsip_tap_tdo : STD_LOGIC;
  signal s_axi_aclk_1 : STD_LOGIC;
  signal s_axi_aresetn_1 : STD_LOGIC;
  signal NLW_bsip_capture_UNCONNECTED : STD_LOGIC;
  signal NLW_bsip_drck_UNCONNECTED : STD_LOGIC;
  signal NLW_bsip_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_bsip_runtest_UNCONNECTED : STD_LOGIC;
  signal NLW_bsip_sel_UNCONNECTED : STD_LOGIC;
  signal NLW_bsip_shift_UNCONNECTED : STD_LOGIC;
  signal NLW_bsip_tck_UNCONNECTED : STD_LOGIC;
  signal NLW_bsip_tdi_UNCONNECTED : STD_LOGIC;
  signal NLW_bsip_tms_UNCONNECTED : STD_LOGIC;
  signal NLW_bsip_update_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_INFO of S_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of S_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of S_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME CLK.S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn:s_axi_lite_resetn, CLK_DOMAIN ebit_z7010_top_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME RST.S_AXI_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of S_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_PARAMETER of S_AXI_araddr : signal is "XIL_INTERFACENAME S_AXI, ADDR_WIDTH 16, ARUSER_WIDTH 0, ASSOCIATED_BUSIF S_AXI, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN ebit_z7010_top_processing_system7_0_0_FCLK_CLK0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of S_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of S_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of S_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of S_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of S_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of S_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of S_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  S_AXI_1_ARADDR(4 downto 0) <= S_AXI_araddr(4 downto 0);
  S_AXI_1_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  S_AXI_1_ARVALID <= S_AXI_arvalid;
  S_AXI_1_AWADDR(4 downto 0) <= S_AXI_awaddr(4 downto 0);
  S_AXI_1_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  S_AXI_1_AWVALID <= S_AXI_awvalid;
  S_AXI_1_BREADY <= S_AXI_bready;
  S_AXI_1_RREADY <= S_AXI_rready;
  S_AXI_1_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  S_AXI_1_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  S_AXI_1_WVALID <= S_AXI_wvalid;
  S_AXI_arready <= S_AXI_1_ARREADY;
  S_AXI_awready <= S_AXI_1_AWREADY;
  S_AXI_bresp(1 downto 0) <= S_AXI_1_BRESP(1 downto 0);
  S_AXI_bvalid <= S_AXI_1_BVALID;
  S_AXI_rdata(31 downto 0) <= S_AXI_1_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= S_AXI_1_RRESP(1 downto 0);
  S_AXI_rvalid <= S_AXI_1_RVALID;
  S_AXI_wready <= S_AXI_1_WREADY;
  s_axi_aclk_1 <= s_axi_aclk;
  s_axi_aresetn_1 <= s_axi_aresetn;
axi_jtag: component bd_5d6e_axi_jtag_0
     port map (
      s_axi_aclk => s_axi_aclk_1,
      s_axi_araddr(4 downto 0) => S_AXI_1_ARADDR(4 downto 0),
      s_axi_aresetn => s_axi_aresetn_1,
      s_axi_arprot(2 downto 0) => S_AXI_1_ARPROT(2 downto 0),
      s_axi_arready => S_AXI_1_ARREADY,
      s_axi_arvalid => S_AXI_1_ARVALID,
      s_axi_awaddr(4 downto 0) => S_AXI_1_AWADDR(4 downto 0),
      s_axi_awprot(2 downto 0) => S_AXI_1_AWPROT(2 downto 0),
      s_axi_awready => S_AXI_1_AWREADY,
      s_axi_awvalid => S_AXI_1_AWVALID,
      s_axi_bready => S_AXI_1_BREADY,
      s_axi_bresp(1 downto 0) => S_AXI_1_BRESP(1 downto 0),
      s_axi_bvalid => S_AXI_1_BVALID,
      s_axi_rdata(31 downto 0) => S_AXI_1_RDATA(31 downto 0),
      s_axi_rready => S_AXI_1_RREADY,
      s_axi_rresp(1 downto 0) => S_AXI_1_RRESP(1 downto 0),
      s_axi_rvalid => S_AXI_1_RVALID,
      s_axi_wdata(31 downto 0) => S_AXI_1_WDATA(31 downto 0),
      s_axi_wready => S_AXI_1_WREADY,
      s_axi_wstrb(3 downto 0) => S_AXI_1_WSTRB(3 downto 0),
      s_axi_wvalid => S_AXI_1_WVALID,
      tck => axi_jtag_tck,
      tdi => axi_jtag_tdi,
      tdo => bsip_tap_tdo,
      tms => axi_jtag_tms
    );
bsip: component bd_5d6e_bsip_0
     port map (
      capture => NLW_bsip_capture_UNCONNECTED,
      drck => NLW_bsip_drck_UNCONNECTED,
      reset => NLW_bsip_reset_UNCONNECTED,
      runtest => NLW_bsip_runtest_UNCONNECTED,
      sel => NLW_bsip_sel_UNCONNECTED,
      shift => NLW_bsip_shift_UNCONNECTED,
      tap_tck => axi_jtag_tck,
      tap_tdi => axi_jtag_tdi,
      tap_tdo => bsip_tap_tdo,
      tap_tms => axi_jtag_tms,
      tck => NLW_bsip_tck_UNCONNECTED,
      tdi => NLW_bsip_tdi_UNCONNECTED,
      tdo => '0',
      tms => NLW_bsip_tms_UNCONNECTED,
      update => NLW_bsip_update_UNCONNECTED
    );
end STRUCTURE;
