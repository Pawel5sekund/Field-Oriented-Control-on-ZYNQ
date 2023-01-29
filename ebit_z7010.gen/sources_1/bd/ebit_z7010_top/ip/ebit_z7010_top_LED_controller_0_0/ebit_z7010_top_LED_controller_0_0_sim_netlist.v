// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Mon Oct 31 18:21:37 2022
// Host        : LAPTOP-QKPB5NLF running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/pawel5sekund/VivadoProjects/EBAZ4205/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_LED_controller_0_0/ebit_z7010_top_LED_controller_0_0_sim_netlist.v
// Design      : ebit_z7010_top_LED_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ebit_z7010_top_LED_controller_0_0,LED_controller_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "LED_controller_v1_0,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module ebit_z7010_top_LED_controller_0_0
   (LED_GREEN_OUT,
    LED_RED_OUT,
    clk_LED,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  output LED_GREEN_OUT;
  output LED_RED_OUT;
  input clk_LED;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN ebit_z7010_top_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN ebit_z7010_top_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARADDR" *) input [3:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RREADY" *) input s00_axi_rready;

  wire \<const0> ;
  wire LED_GREEN_OUT;
  wire LED_RED_OUT;
  wire clk_LED;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  ebit_z7010_top_LED_controller_0_0_LED_controller_v1_0 U0
       (.LED_GREEN_OUT(LED_GREEN_OUT),
        .LED_RED_OUT(LED_RED_OUT),
        .S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .clk_LED(clk_LED),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "LED_controller_v1_0" *) 
module ebit_z7010_top_LED_controller_0_0_LED_controller_v1_0
   (LED_GREEN_OUT,
    LED_RED_OUT,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_wdata,
    clk_LED,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output LED_GREEN_OUT;
  output LED_RED_OUT;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input clk_LED;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire LED_GREEN_OUT;
  wire LED_RED_OUT;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire clk_LED;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  ebit_z7010_top_LED_controller_0_0_LED_controller_v1_0_S00_AXI LED_controller_v1_0_S00_AXI_inst
       (.LED_GREEN_OUT(LED_GREEN_OUT),
        .LED_RED_OUT(LED_RED_OUT),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .clk_LED(clk_LED),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "LED_controller_v1_0_S00_AXI" *) 
module ebit_z7010_top_LED_controller_0_0_LED_controller_v1_0_S00_AXI
   (LED_GREEN_OUT,
    LED_RED_OUT,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_wdata,
    clk_LED,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output LED_GREEN_OUT;
  output LED_RED_OUT;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input clk_LED;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire LED_GREEN_OUT;
  wire LED_RED_OUT;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire clk_LED;
  wire [1:0]p_0_in;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire slv_reg_rden;
  wire slv_reg_wren__2;

  LUT6 #(
    .INIT(64'hBFFFBF00BF00BF00)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(S_AXI_AWREADY),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(S_AXI_AWREADY),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg1[0]),
        .I1(slv_reg0[0]),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg1[10]),
        .I1(slv_reg0[10]),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg1[11]),
        .I1(slv_reg0[11]),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg1[12]),
        .I1(slv_reg0[12]),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg1[13]),
        .I1(slv_reg0[13]),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg1[14]),
        .I1(slv_reg0[14]),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg1[15]),
        .I1(slv_reg0[15]),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1[16]),
        .I1(slv_reg0[16]),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(slv_reg0[17]),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg1[18]),
        .I1(slv_reg0[18]),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg1[19]),
        .I1(slv_reg0[19]),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg1[1]),
        .I1(slv_reg0[1]),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1[20]),
        .I1(slv_reg0[20]),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg1[21]),
        .I1(slv_reg0[21]),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(slv_reg0[22]),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(slv_reg0[23]),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(slv_reg0[24]),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg1[25]),
        .I1(slv_reg0[25]),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1[26]),
        .I1(slv_reg0[26]),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg1[27]),
        .I1(slv_reg0[27]),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg1[28]),
        .I1(slv_reg0[28]),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg1[29]),
        .I1(slv_reg0[29]),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg1[2]),
        .I1(slv_reg0[2]),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1[30]),
        .I1(slv_reg0[30]),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[30]),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[31]_i_2 
       (.I0(slv_reg1[31]),
        .I1(slv_reg0[31]),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg1[3]),
        .I1(slv_reg0[3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg1[4]),
        .I1(slv_reg0[4]),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg1[5]),
        .I1(slv_reg0[5]),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg1[6]),
        .I1(slv_reg0[6]),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg1[7]),
        .I1(slv_reg0[7]),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg1[8]),
        .I1(slv_reg0[8]),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg1[9]),
        .I1(slv_reg0[9]),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  ebit_z7010_top_LED_controller_0_0_counter_ON_OFF counter_ON_OFF_inst
       (.\GREEN.bit_ON_OFF_reg_0 (LED_GREEN_OUT),
        .Q(slv_reg0),
        .\RED.bit_ON_OFF_reg_0 (LED_RED_OUT),
        .bit_ON_OFF1_carry__2_0(slv_reg1),
        .\bit_ON_OFF1_inferred__0/i__carry__2_0 (slv_reg3),
        .clk_LED(clk_LED),
        .\counter1_inferred__0/i__carry__2_0 (slv_reg2));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg1[31]_i_2 
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__2));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[7]));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "counter_ON_OFF" *) 
module ebit_z7010_top_LED_controller_0_0_counter_ON_OFF
   (\GREEN.bit_ON_OFF_reg_0 ,
    \RED.bit_ON_OFF_reg_0 ,
    clk_LED,
    Q,
    bit_ON_OFF1_carry__2_0,
    \counter1_inferred__0/i__carry__2_0 ,
    \bit_ON_OFF1_inferred__0/i__carry__2_0 );
  output \GREEN.bit_ON_OFF_reg_0 ;
  output \RED.bit_ON_OFF_reg_0 ;
  input clk_LED;
  input [31:0]Q;
  input [31:0]bit_ON_OFF1_carry__2_0;
  input [31:0]\counter1_inferred__0/i__carry__2_0 ;
  input [31:0]\bit_ON_OFF1_inferred__0/i__carry__2_0 ;

  wire \GREEN.bit_ON_OFF_i_1_n_0 ;
  wire \GREEN.bit_ON_OFF_reg_0 ;
  wire \GREEN.counter_reg_n_0_[0] ;
  wire \GREEN.counter_reg_n_0_[10] ;
  wire \GREEN.counter_reg_n_0_[11] ;
  wire \GREEN.counter_reg_n_0_[12] ;
  wire \GREEN.counter_reg_n_0_[13] ;
  wire \GREEN.counter_reg_n_0_[14] ;
  wire \GREEN.counter_reg_n_0_[15] ;
  wire \GREEN.counter_reg_n_0_[16] ;
  wire \GREEN.counter_reg_n_0_[17] ;
  wire \GREEN.counter_reg_n_0_[18] ;
  wire \GREEN.counter_reg_n_0_[19] ;
  wire \GREEN.counter_reg_n_0_[1] ;
  wire \GREEN.counter_reg_n_0_[20] ;
  wire \GREEN.counter_reg_n_0_[21] ;
  wire \GREEN.counter_reg_n_0_[22] ;
  wire \GREEN.counter_reg_n_0_[23] ;
  wire \GREEN.counter_reg_n_0_[24] ;
  wire \GREEN.counter_reg_n_0_[25] ;
  wire \GREEN.counter_reg_n_0_[26] ;
  wire \GREEN.counter_reg_n_0_[27] ;
  wire \GREEN.counter_reg_n_0_[28] ;
  wire \GREEN.counter_reg_n_0_[29] ;
  wire \GREEN.counter_reg_n_0_[2] ;
  wire \GREEN.counter_reg_n_0_[30] ;
  wire \GREEN.counter_reg_n_0_[31] ;
  wire \GREEN.counter_reg_n_0_[3] ;
  wire \GREEN.counter_reg_n_0_[4] ;
  wire \GREEN.counter_reg_n_0_[5] ;
  wire \GREEN.counter_reg_n_0_[6] ;
  wire \GREEN.counter_reg_n_0_[7] ;
  wire \GREEN.counter_reg_n_0_[8] ;
  wire \GREEN.counter_reg_n_0_[9] ;
  wire [31:0]Q;
  wire \RED.bit_ON_OFF_i_1_n_0 ;
  wire \RED.bit_ON_OFF_reg_0 ;
  wire \RED.counter[0]_i_1_n_0 ;
  wire \RED.counter_reg_n_0_[0] ;
  wire \RED.counter_reg_n_0_[10] ;
  wire \RED.counter_reg_n_0_[11] ;
  wire \RED.counter_reg_n_0_[12] ;
  wire \RED.counter_reg_n_0_[13] ;
  wire \RED.counter_reg_n_0_[14] ;
  wire \RED.counter_reg_n_0_[15] ;
  wire \RED.counter_reg_n_0_[16] ;
  wire \RED.counter_reg_n_0_[17] ;
  wire \RED.counter_reg_n_0_[18] ;
  wire \RED.counter_reg_n_0_[19] ;
  wire \RED.counter_reg_n_0_[1] ;
  wire \RED.counter_reg_n_0_[20] ;
  wire \RED.counter_reg_n_0_[21] ;
  wire \RED.counter_reg_n_0_[22] ;
  wire \RED.counter_reg_n_0_[23] ;
  wire \RED.counter_reg_n_0_[24] ;
  wire \RED.counter_reg_n_0_[25] ;
  wire \RED.counter_reg_n_0_[26] ;
  wire \RED.counter_reg_n_0_[27] ;
  wire \RED.counter_reg_n_0_[28] ;
  wire \RED.counter_reg_n_0_[29] ;
  wire \RED.counter_reg_n_0_[2] ;
  wire \RED.counter_reg_n_0_[30] ;
  wire \RED.counter_reg_n_0_[31] ;
  wire \RED.counter_reg_n_0_[3] ;
  wire \RED.counter_reg_n_0_[4] ;
  wire \RED.counter_reg_n_0_[5] ;
  wire \RED.counter_reg_n_0_[6] ;
  wire \RED.counter_reg_n_0_[7] ;
  wire \RED.counter_reg_n_0_[8] ;
  wire \RED.counter_reg_n_0_[9] ;
  wire bit_ON_OFF1_carry__0_i_1_n_0;
  wire bit_ON_OFF1_carry__0_i_2_n_0;
  wire bit_ON_OFF1_carry__0_i_3_n_0;
  wire bit_ON_OFF1_carry__0_i_4_n_0;
  wire bit_ON_OFF1_carry__0_i_5_n_0;
  wire bit_ON_OFF1_carry__0_i_6_n_0;
  wire bit_ON_OFF1_carry__0_i_7_n_0;
  wire bit_ON_OFF1_carry__0_i_8_n_0;
  wire bit_ON_OFF1_carry__0_n_0;
  wire bit_ON_OFF1_carry__0_n_1;
  wire bit_ON_OFF1_carry__0_n_2;
  wire bit_ON_OFF1_carry__0_n_3;
  wire bit_ON_OFF1_carry__1_i_1_n_0;
  wire bit_ON_OFF1_carry__1_i_2_n_0;
  wire bit_ON_OFF1_carry__1_i_3_n_0;
  wire bit_ON_OFF1_carry__1_i_4_n_0;
  wire bit_ON_OFF1_carry__1_i_5_n_0;
  wire bit_ON_OFF1_carry__1_i_6_n_0;
  wire bit_ON_OFF1_carry__1_i_7_n_0;
  wire bit_ON_OFF1_carry__1_i_8_n_0;
  wire bit_ON_OFF1_carry__1_n_0;
  wire bit_ON_OFF1_carry__1_n_1;
  wire bit_ON_OFF1_carry__1_n_2;
  wire bit_ON_OFF1_carry__1_n_3;
  wire [31:0]bit_ON_OFF1_carry__2_0;
  wire bit_ON_OFF1_carry__2_i_1_n_0;
  wire bit_ON_OFF1_carry__2_i_2_n_0;
  wire bit_ON_OFF1_carry__2_i_3_n_0;
  wire bit_ON_OFF1_carry__2_i_4_n_0;
  wire bit_ON_OFF1_carry__2_i_5_n_0;
  wire bit_ON_OFF1_carry__2_i_6_n_0;
  wire bit_ON_OFF1_carry__2_i_7_n_0;
  wire bit_ON_OFF1_carry__2_i_8_n_0;
  wire bit_ON_OFF1_carry__2_n_0;
  wire bit_ON_OFF1_carry__2_n_1;
  wire bit_ON_OFF1_carry__2_n_2;
  wire bit_ON_OFF1_carry__2_n_3;
  wire bit_ON_OFF1_carry_i_1_n_0;
  wire bit_ON_OFF1_carry_i_2_n_0;
  wire bit_ON_OFF1_carry_i_3_n_0;
  wire bit_ON_OFF1_carry_i_4_n_0;
  wire bit_ON_OFF1_carry_i_5_n_0;
  wire bit_ON_OFF1_carry_i_6_n_0;
  wire bit_ON_OFF1_carry_i_7_n_0;
  wire bit_ON_OFF1_carry_i_8_n_0;
  wire bit_ON_OFF1_carry_n_0;
  wire bit_ON_OFF1_carry_n_1;
  wire bit_ON_OFF1_carry_n_2;
  wire bit_ON_OFF1_carry_n_3;
  wire \bit_ON_OFF1_inferred__0/i__carry__0_n_0 ;
  wire \bit_ON_OFF1_inferred__0/i__carry__0_n_1 ;
  wire \bit_ON_OFF1_inferred__0/i__carry__0_n_2 ;
  wire \bit_ON_OFF1_inferred__0/i__carry__0_n_3 ;
  wire \bit_ON_OFF1_inferred__0/i__carry__1_n_0 ;
  wire \bit_ON_OFF1_inferred__0/i__carry__1_n_1 ;
  wire \bit_ON_OFF1_inferred__0/i__carry__1_n_2 ;
  wire \bit_ON_OFF1_inferred__0/i__carry__1_n_3 ;
  wire [31:0]\bit_ON_OFF1_inferred__0/i__carry__2_0 ;
  wire \bit_ON_OFF1_inferred__0/i__carry__2_n_0 ;
  wire \bit_ON_OFF1_inferred__0/i__carry__2_n_1 ;
  wire \bit_ON_OFF1_inferred__0/i__carry__2_n_2 ;
  wire \bit_ON_OFF1_inferred__0/i__carry__2_n_3 ;
  wire \bit_ON_OFF1_inferred__0/i__carry_n_0 ;
  wire \bit_ON_OFF1_inferred__0/i__carry_n_1 ;
  wire \bit_ON_OFF1_inferred__0/i__carry_n_2 ;
  wire \bit_ON_OFF1_inferred__0/i__carry_n_3 ;
  wire clk_LED;
  wire counter1_carry__0_i_1_n_0;
  wire counter1_carry__0_i_2_n_0;
  wire counter1_carry__0_i_3_n_0;
  wire counter1_carry__0_i_4_n_0;
  wire counter1_carry__0_i_5_n_0;
  wire counter1_carry__0_i_6_n_0;
  wire counter1_carry__0_i_7_n_0;
  wire counter1_carry__0_i_8_n_0;
  wire counter1_carry__0_n_0;
  wire counter1_carry__0_n_1;
  wire counter1_carry__0_n_2;
  wire counter1_carry__0_n_3;
  wire counter1_carry__1_i_1_n_0;
  wire counter1_carry__1_i_2_n_0;
  wire counter1_carry__1_i_3_n_0;
  wire counter1_carry__1_i_4_n_0;
  wire counter1_carry__1_i_5_n_0;
  wire counter1_carry__1_i_6_n_0;
  wire counter1_carry__1_i_7_n_0;
  wire counter1_carry__1_i_8_n_0;
  wire counter1_carry__1_n_0;
  wire counter1_carry__1_n_1;
  wire counter1_carry__1_n_2;
  wire counter1_carry__1_n_3;
  wire counter1_carry__2_i_1_n_0;
  wire counter1_carry__2_i_2_n_0;
  wire counter1_carry__2_i_3_n_0;
  wire counter1_carry__2_i_4_n_0;
  wire counter1_carry__2_i_5_n_0;
  wire counter1_carry__2_i_6_n_0;
  wire counter1_carry__2_i_7_n_0;
  wire counter1_carry__2_i_8_n_0;
  wire counter1_carry__2_n_0;
  wire counter1_carry__2_n_1;
  wire counter1_carry__2_n_2;
  wire counter1_carry__2_n_3;
  wire counter1_carry_i_1_n_0;
  wire counter1_carry_i_2_n_0;
  wire counter1_carry_i_3_n_0;
  wire counter1_carry_i_4_n_0;
  wire counter1_carry_i_5_n_0;
  wire counter1_carry_i_6_n_0;
  wire counter1_carry_i_7_n_0;
  wire counter1_carry_i_8_n_0;
  wire counter1_carry_n_0;
  wire counter1_carry_n_1;
  wire counter1_carry_n_2;
  wire counter1_carry_n_3;
  wire \counter1_inferred__0/i__carry__0_n_0 ;
  wire \counter1_inferred__0/i__carry__0_n_1 ;
  wire \counter1_inferred__0/i__carry__0_n_2 ;
  wire \counter1_inferred__0/i__carry__0_n_3 ;
  wire \counter1_inferred__0/i__carry__1_n_0 ;
  wire \counter1_inferred__0/i__carry__1_n_1 ;
  wire \counter1_inferred__0/i__carry__1_n_2 ;
  wire \counter1_inferred__0/i__carry__1_n_3 ;
  wire [31:0]\counter1_inferred__0/i__carry__2_0 ;
  wire \counter1_inferred__0/i__carry__2_n_0 ;
  wire \counter1_inferred__0/i__carry__2_n_1 ;
  wire \counter1_inferred__0/i__carry__2_n_2 ;
  wire \counter1_inferred__0/i__carry__2_n_3 ;
  wire \counter1_inferred__0/i__carry_n_0 ;
  wire \counter1_inferred__0/i__carry_n_1 ;
  wire \counter1_inferred__0/i__carry_n_2 ;
  wire \counter1_inferred__0/i__carry_n_3 ;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3__1_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4__1_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5__0_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6__0_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7__0_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8__0_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1__1_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2__1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3__1_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4__0_n_0;
  wire i__carry__1_i_4__1_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5__0_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6__0_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7__0_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8__0_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry__2_i_1__0_n_0;
  wire i__carry__2_i_1__1_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2__0_n_0;
  wire i__carry__2_i_2__1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3__0_n_0;
  wire i__carry__2_i_3__1_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4__0_n_0;
  wire i__carry__2_i_4__1_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__2_i_5__0_n_0;
  wire i__carry__2_i_5_n_0;
  wire i__carry__2_i_6__0_n_0;
  wire i__carry__2_i_6_n_0;
  wire i__carry__2_i_7__0_n_0;
  wire i__carry__2_i_7_n_0;
  wire i__carry__2_i_8__0_n_0;
  wire i__carry__2_i_8_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry__4_i_4_n_0;
  wire i__carry__5_i_1_n_0;
  wire i__carry__5_i_2_n_0;
  wire i__carry__5_i_3_n_0;
  wire i__carry__5_i_4_n_0;
  wire i__carry__6_i_1_n_0;
  wire i__carry__6_i_2_n_0;
  wire i__carry__6_i_3_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5__1_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8_n_0;
  wire [31:0]plusOp;
  wire plusOp_carry__0_i_1_n_0;
  wire plusOp_carry__0_i_2_n_0;
  wire plusOp_carry__0_i_3_n_0;
  wire plusOp_carry__0_i_4_n_0;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_i_1_n_0;
  wire plusOp_carry__1_i_2_n_0;
  wire plusOp_carry__1_i_3_n_0;
  wire plusOp_carry__1_i_4_n_0;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_i_1_n_0;
  wire plusOp_carry__2_i_2_n_0;
  wire plusOp_carry__2_i_3_n_0;
  wire plusOp_carry__2_i_4_n_0;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__3_i_1_n_0;
  wire plusOp_carry__3_i_2_n_0;
  wire plusOp_carry__3_i_3_n_0;
  wire plusOp_carry__3_i_4_n_0;
  wire plusOp_carry__3_n_0;
  wire plusOp_carry__3_n_1;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry__4_i_1_n_0;
  wire plusOp_carry__4_i_2_n_0;
  wire plusOp_carry__4_i_3_n_0;
  wire plusOp_carry__4_i_4_n_0;
  wire plusOp_carry__4_n_0;
  wire plusOp_carry__4_n_1;
  wire plusOp_carry__4_n_2;
  wire plusOp_carry__4_n_3;
  wire plusOp_carry__5_i_1_n_0;
  wire plusOp_carry__5_i_2_n_0;
  wire plusOp_carry__5_i_3_n_0;
  wire plusOp_carry__5_i_4_n_0;
  wire plusOp_carry__5_n_0;
  wire plusOp_carry__5_n_1;
  wire plusOp_carry__5_n_2;
  wire plusOp_carry__5_n_3;
  wire plusOp_carry__6_i_1_n_0;
  wire plusOp_carry__6_i_2_n_0;
  wire plusOp_carry__6_i_3_n_0;
  wire plusOp_carry__6_n_2;
  wire plusOp_carry__6_n_3;
  wire plusOp_carry_i_1_n_0;
  wire plusOp_carry_i_2_n_0;
  wire plusOp_carry_i_3_n_0;
  wire plusOp_carry_i_4_n_0;
  wire plusOp_carry_i_5_n_0;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire \plusOp_inferred__0/i__carry__0_n_0 ;
  wire \plusOp_inferred__0/i__carry__0_n_1 ;
  wire \plusOp_inferred__0/i__carry__0_n_2 ;
  wire \plusOp_inferred__0/i__carry__0_n_3 ;
  wire \plusOp_inferred__0/i__carry__0_n_4 ;
  wire \plusOp_inferred__0/i__carry__0_n_5 ;
  wire \plusOp_inferred__0/i__carry__0_n_6 ;
  wire \plusOp_inferred__0/i__carry__0_n_7 ;
  wire \plusOp_inferred__0/i__carry__1_n_0 ;
  wire \plusOp_inferred__0/i__carry__1_n_1 ;
  wire \plusOp_inferred__0/i__carry__1_n_2 ;
  wire \plusOp_inferred__0/i__carry__1_n_3 ;
  wire \plusOp_inferred__0/i__carry__1_n_4 ;
  wire \plusOp_inferred__0/i__carry__1_n_5 ;
  wire \plusOp_inferred__0/i__carry__1_n_6 ;
  wire \plusOp_inferred__0/i__carry__1_n_7 ;
  wire \plusOp_inferred__0/i__carry__2_n_0 ;
  wire \plusOp_inferred__0/i__carry__2_n_1 ;
  wire \plusOp_inferred__0/i__carry__2_n_2 ;
  wire \plusOp_inferred__0/i__carry__2_n_3 ;
  wire \plusOp_inferred__0/i__carry__2_n_4 ;
  wire \plusOp_inferred__0/i__carry__2_n_5 ;
  wire \plusOp_inferred__0/i__carry__2_n_6 ;
  wire \plusOp_inferred__0/i__carry__2_n_7 ;
  wire \plusOp_inferred__0/i__carry__3_n_0 ;
  wire \plusOp_inferred__0/i__carry__3_n_1 ;
  wire \plusOp_inferred__0/i__carry__3_n_2 ;
  wire \plusOp_inferred__0/i__carry__3_n_3 ;
  wire \plusOp_inferred__0/i__carry__3_n_4 ;
  wire \plusOp_inferred__0/i__carry__3_n_5 ;
  wire \plusOp_inferred__0/i__carry__3_n_6 ;
  wire \plusOp_inferred__0/i__carry__3_n_7 ;
  wire \plusOp_inferred__0/i__carry__4_n_0 ;
  wire \plusOp_inferred__0/i__carry__4_n_1 ;
  wire \plusOp_inferred__0/i__carry__4_n_2 ;
  wire \plusOp_inferred__0/i__carry__4_n_3 ;
  wire \plusOp_inferred__0/i__carry__4_n_4 ;
  wire \plusOp_inferred__0/i__carry__4_n_5 ;
  wire \plusOp_inferred__0/i__carry__4_n_6 ;
  wire \plusOp_inferred__0/i__carry__4_n_7 ;
  wire \plusOp_inferred__0/i__carry__5_n_0 ;
  wire \plusOp_inferred__0/i__carry__5_n_1 ;
  wire \plusOp_inferred__0/i__carry__5_n_2 ;
  wire \plusOp_inferred__0/i__carry__5_n_3 ;
  wire \plusOp_inferred__0/i__carry__5_n_4 ;
  wire \plusOp_inferred__0/i__carry__5_n_5 ;
  wire \plusOp_inferred__0/i__carry__5_n_6 ;
  wire \plusOp_inferred__0/i__carry__5_n_7 ;
  wire \plusOp_inferred__0/i__carry__6_n_2 ;
  wire \plusOp_inferred__0/i__carry__6_n_3 ;
  wire \plusOp_inferred__0/i__carry__6_n_5 ;
  wire \plusOp_inferred__0/i__carry__6_n_6 ;
  wire \plusOp_inferred__0/i__carry__6_n_7 ;
  wire \plusOp_inferred__0/i__carry_n_0 ;
  wire \plusOp_inferred__0/i__carry_n_1 ;
  wire \plusOp_inferred__0/i__carry_n_2 ;
  wire \plusOp_inferred__0/i__carry_n_3 ;
  wire \plusOp_inferred__0/i__carry_n_4 ;
  wire \plusOp_inferred__0/i__carry_n_5 ;
  wire \plusOp_inferred__0/i__carry_n_6 ;
  wire \plusOp_inferred__0/i__carry_n_7 ;
  wire [3:0]NLW_bit_ON_OFF1_carry_O_UNCONNECTED;
  wire [3:0]NLW_bit_ON_OFF1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_bit_ON_OFF1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_bit_ON_OFF1_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_bit_ON_OFF1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_bit_ON_OFF1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_bit_ON_OFF1_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_bit_ON_OFF1_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:0]NLW_counter1_carry_O_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_counter1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_counter1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_counter1_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_counter1_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:2]NLW_plusOp_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__6_O_UNCONNECTED;
  wire [3:2]\NLW_plusOp_inferred__0/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_plusOp_inferred__0/i__carry__6_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \GREEN.bit_ON_OFF_i_1 
       (.I0(bit_ON_OFF1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(counter1_carry__2_n_0),
        .O(\GREEN.bit_ON_OFF_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.bit_ON_OFF_reg 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\GREEN.bit_ON_OFF_i_1_n_0 ),
        .Q(\GREEN.bit_ON_OFF_reg_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFD5D)) 
    \GREEN.counter[0]_i_1 
       (.I0(\GREEN.counter_reg_n_0_[0] ),
        .I1(bit_ON_OFF1_carry__2_n_0),
        .I2(\GREEN.bit_ON_OFF_reg_0 ),
        .I3(counter1_carry__2_n_0),
        .O(plusOp[0]));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[0] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\GREEN.counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[10] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[10]),
        .Q(\GREEN.counter_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[11] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[11]),
        .Q(\GREEN.counter_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[12] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[12]),
        .Q(\GREEN.counter_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[13] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[13]),
        .Q(\GREEN.counter_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[14] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[14]),
        .Q(\GREEN.counter_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[15] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[15]),
        .Q(\GREEN.counter_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[16] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[16]),
        .Q(\GREEN.counter_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[17] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[17]),
        .Q(\GREEN.counter_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[18] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[18]),
        .Q(\GREEN.counter_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[19] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[19]),
        .Q(\GREEN.counter_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[1] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\GREEN.counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[20] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[20]),
        .Q(\GREEN.counter_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[21] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[21]),
        .Q(\GREEN.counter_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[22] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[22]),
        .Q(\GREEN.counter_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[23] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[23]),
        .Q(\GREEN.counter_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[24] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[24]),
        .Q(\GREEN.counter_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[25] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[25]),
        .Q(\GREEN.counter_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[26] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[26]),
        .Q(\GREEN.counter_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[27] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[27]),
        .Q(\GREEN.counter_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[28] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[28]),
        .Q(\GREEN.counter_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[29] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[29]),
        .Q(\GREEN.counter_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[2] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\GREEN.counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[30] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[30]),
        .Q(\GREEN.counter_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[31] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[31]),
        .Q(\GREEN.counter_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[3] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\GREEN.counter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[4] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\GREEN.counter_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[5] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(\GREEN.counter_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[6] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(\GREEN.counter_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[7] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[7]),
        .Q(\GREEN.counter_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[8] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[8]),
        .Q(\GREEN.counter_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN.counter_reg[9] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(plusOp[9]),
        .Q(\GREEN.counter_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \RED.bit_ON_OFF_i_1 
       (.I0(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\counter1_inferred__0/i__carry__2_n_0 ),
        .O(\RED.bit_ON_OFF_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RED.bit_ON_OFF_reg 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\RED.bit_ON_OFF_i_1_n_0 ),
        .Q(\RED.bit_ON_OFF_reg_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFD5D)) 
    \RED.counter[0]_i_1 
       (.I0(\RED.counter_reg_n_0_[0] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I2(\RED.bit_ON_OFF_reg_0 ),
        .I3(\counter1_inferred__0/i__carry__2_n_0 ),
        .O(\RED.counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[0] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\RED.counter[0]_i_1_n_0 ),
        .Q(\RED.counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[10] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry__1_n_6 ),
        .Q(\RED.counter_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[11] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry__1_n_5 ),
        .Q(\RED.counter_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[12] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry__1_n_4 ),
        .Q(\RED.counter_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[13] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry__2_n_7 ),
        .Q(\RED.counter_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[14] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry__2_n_6 ),
        .Q(\RED.counter_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[15] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry__2_n_5 ),
        .Q(\RED.counter_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[16] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry__2_n_4 ),
        .Q(\RED.counter_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[17] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry__3_n_7 ),
        .Q(\RED.counter_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[18] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry__3_n_6 ),
        .Q(\RED.counter_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[19] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry__3_n_5 ),
        .Q(\RED.counter_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[1] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry_n_7 ),
        .Q(\RED.counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[20] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry__3_n_4 ),
        .Q(\RED.counter_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[21] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry__4_n_7 ),
        .Q(\RED.counter_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[22] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry__4_n_6 ),
        .Q(\RED.counter_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[23] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry__4_n_5 ),
        .Q(\RED.counter_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[24] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry__4_n_4 ),
        .Q(\RED.counter_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[25] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry__5_n_7 ),
        .Q(\RED.counter_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[26] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry__5_n_6 ),
        .Q(\RED.counter_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[27] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry__5_n_5 ),
        .Q(\RED.counter_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[28] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry__5_n_4 ),
        .Q(\RED.counter_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[29] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry__6_n_7 ),
        .Q(\RED.counter_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[2] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry_n_6 ),
        .Q(\RED.counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[30] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry__6_n_6 ),
        .Q(\RED.counter_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[31] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry__6_n_5 ),
        .Q(\RED.counter_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[3] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry_n_5 ),
        .Q(\RED.counter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[4] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry_n_4 ),
        .Q(\RED.counter_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[5] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry__0_n_7 ),
        .Q(\RED.counter_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[6] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry__0_n_6 ),
        .Q(\RED.counter_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[7] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry__0_n_5 ),
        .Q(\RED.counter_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[8] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry__0_n_4 ),
        .Q(\RED.counter_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RED.counter_reg[9] 
       (.C(clk_LED),
        .CE(1'b1),
        .D(\plusOp_inferred__0/i__carry__1_n_7 ),
        .Q(\RED.counter_reg_n_0_[9] ),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 bit_ON_OFF1_carry
       (.CI(1'b0),
        .CO({bit_ON_OFF1_carry_n_0,bit_ON_OFF1_carry_n_1,bit_ON_OFF1_carry_n_2,bit_ON_OFF1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({bit_ON_OFF1_carry_i_1_n_0,bit_ON_OFF1_carry_i_2_n_0,bit_ON_OFF1_carry_i_3_n_0,bit_ON_OFF1_carry_i_4_n_0}),
        .O(NLW_bit_ON_OFF1_carry_O_UNCONNECTED[3:0]),
        .S({bit_ON_OFF1_carry_i_5_n_0,bit_ON_OFF1_carry_i_6_n_0,bit_ON_OFF1_carry_i_7_n_0,bit_ON_OFF1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 bit_ON_OFF1_carry__0
       (.CI(bit_ON_OFF1_carry_n_0),
        .CO({bit_ON_OFF1_carry__0_n_0,bit_ON_OFF1_carry__0_n_1,bit_ON_OFF1_carry__0_n_2,bit_ON_OFF1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({bit_ON_OFF1_carry__0_i_1_n_0,bit_ON_OFF1_carry__0_i_2_n_0,bit_ON_OFF1_carry__0_i_3_n_0,bit_ON_OFF1_carry__0_i_4_n_0}),
        .O(NLW_bit_ON_OFF1_carry__0_O_UNCONNECTED[3:0]),
        .S({bit_ON_OFF1_carry__0_i_5_n_0,bit_ON_OFF1_carry__0_i_6_n_0,bit_ON_OFF1_carry__0_i_7_n_0,bit_ON_OFF1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    bit_ON_OFF1_carry__0_i_1
       (.I0(\GREEN.counter_reg_n_0_[14] ),
        .I1(bit_ON_OFF1_carry__2_0[14]),
        .I2(bit_ON_OFF1_carry__2_0[15]),
        .I3(\GREEN.counter_reg_n_0_[15] ),
        .O(bit_ON_OFF1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    bit_ON_OFF1_carry__0_i_2
       (.I0(\GREEN.counter_reg_n_0_[12] ),
        .I1(bit_ON_OFF1_carry__2_0[12]),
        .I2(bit_ON_OFF1_carry__2_0[13]),
        .I3(\GREEN.counter_reg_n_0_[13] ),
        .O(bit_ON_OFF1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    bit_ON_OFF1_carry__0_i_3
       (.I0(\GREEN.counter_reg_n_0_[10] ),
        .I1(bit_ON_OFF1_carry__2_0[10]),
        .I2(bit_ON_OFF1_carry__2_0[11]),
        .I3(\GREEN.counter_reg_n_0_[11] ),
        .O(bit_ON_OFF1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    bit_ON_OFF1_carry__0_i_4
       (.I0(\GREEN.counter_reg_n_0_[8] ),
        .I1(bit_ON_OFF1_carry__2_0[8]),
        .I2(bit_ON_OFF1_carry__2_0[9]),
        .I3(\GREEN.counter_reg_n_0_[9] ),
        .O(bit_ON_OFF1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bit_ON_OFF1_carry__0_i_5
       (.I0(\GREEN.counter_reg_n_0_[14] ),
        .I1(bit_ON_OFF1_carry__2_0[14]),
        .I2(\GREEN.counter_reg_n_0_[15] ),
        .I3(bit_ON_OFF1_carry__2_0[15]),
        .O(bit_ON_OFF1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bit_ON_OFF1_carry__0_i_6
       (.I0(\GREEN.counter_reg_n_0_[12] ),
        .I1(bit_ON_OFF1_carry__2_0[12]),
        .I2(\GREEN.counter_reg_n_0_[13] ),
        .I3(bit_ON_OFF1_carry__2_0[13]),
        .O(bit_ON_OFF1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bit_ON_OFF1_carry__0_i_7
       (.I0(\GREEN.counter_reg_n_0_[10] ),
        .I1(bit_ON_OFF1_carry__2_0[10]),
        .I2(\GREEN.counter_reg_n_0_[11] ),
        .I3(bit_ON_OFF1_carry__2_0[11]),
        .O(bit_ON_OFF1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bit_ON_OFF1_carry__0_i_8
       (.I0(\GREEN.counter_reg_n_0_[8] ),
        .I1(bit_ON_OFF1_carry__2_0[8]),
        .I2(\GREEN.counter_reg_n_0_[9] ),
        .I3(bit_ON_OFF1_carry__2_0[9]),
        .O(bit_ON_OFF1_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 bit_ON_OFF1_carry__1
       (.CI(bit_ON_OFF1_carry__0_n_0),
        .CO({bit_ON_OFF1_carry__1_n_0,bit_ON_OFF1_carry__1_n_1,bit_ON_OFF1_carry__1_n_2,bit_ON_OFF1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({bit_ON_OFF1_carry__1_i_1_n_0,bit_ON_OFF1_carry__1_i_2_n_0,bit_ON_OFF1_carry__1_i_3_n_0,bit_ON_OFF1_carry__1_i_4_n_0}),
        .O(NLW_bit_ON_OFF1_carry__1_O_UNCONNECTED[3:0]),
        .S({bit_ON_OFF1_carry__1_i_5_n_0,bit_ON_OFF1_carry__1_i_6_n_0,bit_ON_OFF1_carry__1_i_7_n_0,bit_ON_OFF1_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    bit_ON_OFF1_carry__1_i_1
       (.I0(\GREEN.counter_reg_n_0_[22] ),
        .I1(bit_ON_OFF1_carry__2_0[22]),
        .I2(bit_ON_OFF1_carry__2_0[23]),
        .I3(\GREEN.counter_reg_n_0_[23] ),
        .O(bit_ON_OFF1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    bit_ON_OFF1_carry__1_i_2
       (.I0(\GREEN.counter_reg_n_0_[20] ),
        .I1(bit_ON_OFF1_carry__2_0[20]),
        .I2(bit_ON_OFF1_carry__2_0[21]),
        .I3(\GREEN.counter_reg_n_0_[21] ),
        .O(bit_ON_OFF1_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    bit_ON_OFF1_carry__1_i_3
       (.I0(\GREEN.counter_reg_n_0_[18] ),
        .I1(bit_ON_OFF1_carry__2_0[18]),
        .I2(bit_ON_OFF1_carry__2_0[19]),
        .I3(\GREEN.counter_reg_n_0_[19] ),
        .O(bit_ON_OFF1_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    bit_ON_OFF1_carry__1_i_4
       (.I0(\GREEN.counter_reg_n_0_[16] ),
        .I1(bit_ON_OFF1_carry__2_0[16]),
        .I2(bit_ON_OFF1_carry__2_0[17]),
        .I3(\GREEN.counter_reg_n_0_[17] ),
        .O(bit_ON_OFF1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bit_ON_OFF1_carry__1_i_5
       (.I0(\GREEN.counter_reg_n_0_[22] ),
        .I1(bit_ON_OFF1_carry__2_0[22]),
        .I2(\GREEN.counter_reg_n_0_[23] ),
        .I3(bit_ON_OFF1_carry__2_0[23]),
        .O(bit_ON_OFF1_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bit_ON_OFF1_carry__1_i_6
       (.I0(\GREEN.counter_reg_n_0_[20] ),
        .I1(bit_ON_OFF1_carry__2_0[20]),
        .I2(\GREEN.counter_reg_n_0_[21] ),
        .I3(bit_ON_OFF1_carry__2_0[21]),
        .O(bit_ON_OFF1_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bit_ON_OFF1_carry__1_i_7
       (.I0(\GREEN.counter_reg_n_0_[18] ),
        .I1(bit_ON_OFF1_carry__2_0[18]),
        .I2(\GREEN.counter_reg_n_0_[19] ),
        .I3(bit_ON_OFF1_carry__2_0[19]),
        .O(bit_ON_OFF1_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bit_ON_OFF1_carry__1_i_8
       (.I0(\GREEN.counter_reg_n_0_[16] ),
        .I1(bit_ON_OFF1_carry__2_0[16]),
        .I2(\GREEN.counter_reg_n_0_[17] ),
        .I3(bit_ON_OFF1_carry__2_0[17]),
        .O(bit_ON_OFF1_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 bit_ON_OFF1_carry__2
       (.CI(bit_ON_OFF1_carry__1_n_0),
        .CO({bit_ON_OFF1_carry__2_n_0,bit_ON_OFF1_carry__2_n_1,bit_ON_OFF1_carry__2_n_2,bit_ON_OFF1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({bit_ON_OFF1_carry__2_i_1_n_0,bit_ON_OFF1_carry__2_i_2_n_0,bit_ON_OFF1_carry__2_i_3_n_0,bit_ON_OFF1_carry__2_i_4_n_0}),
        .O(NLW_bit_ON_OFF1_carry__2_O_UNCONNECTED[3:0]),
        .S({bit_ON_OFF1_carry__2_i_5_n_0,bit_ON_OFF1_carry__2_i_6_n_0,bit_ON_OFF1_carry__2_i_7_n_0,bit_ON_OFF1_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    bit_ON_OFF1_carry__2_i_1
       (.I0(\GREEN.counter_reg_n_0_[30] ),
        .I1(bit_ON_OFF1_carry__2_0[30]),
        .I2(bit_ON_OFF1_carry__2_0[31]),
        .I3(\GREEN.counter_reg_n_0_[31] ),
        .O(bit_ON_OFF1_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    bit_ON_OFF1_carry__2_i_2
       (.I0(\GREEN.counter_reg_n_0_[28] ),
        .I1(bit_ON_OFF1_carry__2_0[28]),
        .I2(bit_ON_OFF1_carry__2_0[29]),
        .I3(\GREEN.counter_reg_n_0_[29] ),
        .O(bit_ON_OFF1_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    bit_ON_OFF1_carry__2_i_3
       (.I0(\GREEN.counter_reg_n_0_[26] ),
        .I1(bit_ON_OFF1_carry__2_0[26]),
        .I2(bit_ON_OFF1_carry__2_0[27]),
        .I3(\GREEN.counter_reg_n_0_[27] ),
        .O(bit_ON_OFF1_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    bit_ON_OFF1_carry__2_i_4
       (.I0(\GREEN.counter_reg_n_0_[24] ),
        .I1(bit_ON_OFF1_carry__2_0[24]),
        .I2(bit_ON_OFF1_carry__2_0[25]),
        .I3(\GREEN.counter_reg_n_0_[25] ),
        .O(bit_ON_OFF1_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bit_ON_OFF1_carry__2_i_5
       (.I0(\GREEN.counter_reg_n_0_[30] ),
        .I1(bit_ON_OFF1_carry__2_0[30]),
        .I2(\GREEN.counter_reg_n_0_[31] ),
        .I3(bit_ON_OFF1_carry__2_0[31]),
        .O(bit_ON_OFF1_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bit_ON_OFF1_carry__2_i_6
       (.I0(\GREEN.counter_reg_n_0_[28] ),
        .I1(bit_ON_OFF1_carry__2_0[28]),
        .I2(\GREEN.counter_reg_n_0_[29] ),
        .I3(bit_ON_OFF1_carry__2_0[29]),
        .O(bit_ON_OFF1_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bit_ON_OFF1_carry__2_i_7
       (.I0(\GREEN.counter_reg_n_0_[26] ),
        .I1(bit_ON_OFF1_carry__2_0[26]),
        .I2(\GREEN.counter_reg_n_0_[27] ),
        .I3(bit_ON_OFF1_carry__2_0[27]),
        .O(bit_ON_OFF1_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bit_ON_OFF1_carry__2_i_8
       (.I0(\GREEN.counter_reg_n_0_[24] ),
        .I1(bit_ON_OFF1_carry__2_0[24]),
        .I2(\GREEN.counter_reg_n_0_[25] ),
        .I3(bit_ON_OFF1_carry__2_0[25]),
        .O(bit_ON_OFF1_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    bit_ON_OFF1_carry_i_1
       (.I0(\GREEN.counter_reg_n_0_[6] ),
        .I1(bit_ON_OFF1_carry__2_0[6]),
        .I2(bit_ON_OFF1_carry__2_0[7]),
        .I3(\GREEN.counter_reg_n_0_[7] ),
        .O(bit_ON_OFF1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    bit_ON_OFF1_carry_i_2
       (.I0(\GREEN.counter_reg_n_0_[4] ),
        .I1(bit_ON_OFF1_carry__2_0[4]),
        .I2(bit_ON_OFF1_carry__2_0[5]),
        .I3(\GREEN.counter_reg_n_0_[5] ),
        .O(bit_ON_OFF1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    bit_ON_OFF1_carry_i_3
       (.I0(\GREEN.counter_reg_n_0_[2] ),
        .I1(bit_ON_OFF1_carry__2_0[2]),
        .I2(bit_ON_OFF1_carry__2_0[3]),
        .I3(\GREEN.counter_reg_n_0_[3] ),
        .O(bit_ON_OFF1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    bit_ON_OFF1_carry_i_4
       (.I0(\GREEN.counter_reg_n_0_[0] ),
        .I1(bit_ON_OFF1_carry__2_0[0]),
        .I2(bit_ON_OFF1_carry__2_0[1]),
        .I3(\GREEN.counter_reg_n_0_[1] ),
        .O(bit_ON_OFF1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bit_ON_OFF1_carry_i_5
       (.I0(\GREEN.counter_reg_n_0_[6] ),
        .I1(bit_ON_OFF1_carry__2_0[6]),
        .I2(\GREEN.counter_reg_n_0_[7] ),
        .I3(bit_ON_OFF1_carry__2_0[7]),
        .O(bit_ON_OFF1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bit_ON_OFF1_carry_i_6
       (.I0(\GREEN.counter_reg_n_0_[4] ),
        .I1(bit_ON_OFF1_carry__2_0[4]),
        .I2(\GREEN.counter_reg_n_0_[5] ),
        .I3(bit_ON_OFF1_carry__2_0[5]),
        .O(bit_ON_OFF1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bit_ON_OFF1_carry_i_7
       (.I0(\GREEN.counter_reg_n_0_[2] ),
        .I1(bit_ON_OFF1_carry__2_0[2]),
        .I2(\GREEN.counter_reg_n_0_[3] ),
        .I3(bit_ON_OFF1_carry__2_0[3]),
        .O(bit_ON_OFF1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bit_ON_OFF1_carry_i_8
       (.I0(\GREEN.counter_reg_n_0_[0] ),
        .I1(bit_ON_OFF1_carry__2_0[0]),
        .I2(\GREEN.counter_reg_n_0_[1] ),
        .I3(bit_ON_OFF1_carry__2_0[1]),
        .O(bit_ON_OFF1_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \bit_ON_OFF1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\bit_ON_OFF1_inferred__0/i__carry_n_0 ,\bit_ON_OFF1_inferred__0/i__carry_n_1 ,\bit_ON_OFF1_inferred__0/i__carry_n_2 ,\bit_ON_OFF1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_bit_ON_OFF1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \bit_ON_OFF1_inferred__0/i__carry__0 
       (.CI(\bit_ON_OFF1_inferred__0/i__carry_n_0 ),
        .CO({\bit_ON_OFF1_inferred__0/i__carry__0_n_0 ,\bit_ON_OFF1_inferred__0/i__carry__0_n_1 ,\bit_ON_OFF1_inferred__0/i__carry__0_n_2 ,\bit_ON_OFF1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}),
        .O(\NLW_bit_ON_OFF1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5__0_n_0,i__carry__0_i_6__0_n_0,i__carry__0_i_7__0_n_0,i__carry__0_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \bit_ON_OFF1_inferred__0/i__carry__1 
       (.CI(\bit_ON_OFF1_inferred__0/i__carry__0_n_0 ),
        .CO({\bit_ON_OFF1_inferred__0/i__carry__1_n_0 ,\bit_ON_OFF1_inferred__0/i__carry__1_n_1 ,\bit_ON_OFF1_inferred__0/i__carry__1_n_2 ,\bit_ON_OFF1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4__0_n_0}),
        .O(\NLW_bit_ON_OFF1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5__0_n_0,i__carry__1_i_6__0_n_0,i__carry__1_i_7__0_n_0,i__carry__1_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \bit_ON_OFF1_inferred__0/i__carry__2 
       (.CI(\bit_ON_OFF1_inferred__0/i__carry__1_n_0 ),
        .CO({\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ,\bit_ON_OFF1_inferred__0/i__carry__2_n_1 ,\bit_ON_OFF1_inferred__0/i__carry__2_n_2 ,\bit_ON_OFF1_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1__0_n_0,i__carry__2_i_2__0_n_0,i__carry__2_i_3__0_n_0,i__carry__2_i_4__0_n_0}),
        .O(\NLW_bit_ON_OFF1_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5__0_n_0,i__carry__2_i_6__0_n_0,i__carry__2_i_7__0_n_0,i__carry__2_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 counter1_carry
       (.CI(1'b0),
        .CO({counter1_carry_n_0,counter1_carry_n_1,counter1_carry_n_2,counter1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({counter1_carry_i_1_n_0,counter1_carry_i_2_n_0,counter1_carry_i_3_n_0,counter1_carry_i_4_n_0}),
        .O(NLW_counter1_carry_O_UNCONNECTED[3:0]),
        .S({counter1_carry_i_5_n_0,counter1_carry_i_6_n_0,counter1_carry_i_7_n_0,counter1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 counter1_carry__0
       (.CI(counter1_carry_n_0),
        .CO({counter1_carry__0_n_0,counter1_carry__0_n_1,counter1_carry__0_n_2,counter1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({counter1_carry__0_i_1_n_0,counter1_carry__0_i_2_n_0,counter1_carry__0_i_3_n_0,counter1_carry__0_i_4_n_0}),
        .O(NLW_counter1_carry__0_O_UNCONNECTED[3:0]),
        .S({counter1_carry__0_i_5_n_0,counter1_carry__0_i_6_n_0,counter1_carry__0_i_7_n_0,counter1_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    counter1_carry__0_i_1
       (.I0(\GREEN.counter_reg_n_0_[14] ),
        .I1(Q[14]),
        .I2(Q[15]),
        .I3(\GREEN.bit_ON_OFF_reg_0 ),
        .I4(\GREEN.counter_reg_n_0_[15] ),
        .I5(bit_ON_OFF1_carry__2_n_0),
        .O(counter1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    counter1_carry__0_i_2
       (.I0(\GREEN.counter_reg_n_0_[12] ),
        .I1(Q[12]),
        .I2(Q[13]),
        .I3(\GREEN.bit_ON_OFF_reg_0 ),
        .I4(\GREEN.counter_reg_n_0_[13] ),
        .I5(bit_ON_OFF1_carry__2_n_0),
        .O(counter1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    counter1_carry__0_i_3
       (.I0(\GREEN.counter_reg_n_0_[10] ),
        .I1(Q[10]),
        .I2(Q[11]),
        .I3(\GREEN.bit_ON_OFF_reg_0 ),
        .I4(\GREEN.counter_reg_n_0_[11] ),
        .I5(bit_ON_OFF1_carry__2_n_0),
        .O(counter1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    counter1_carry__0_i_4
       (.I0(\GREEN.counter_reg_n_0_[8] ),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(\GREEN.bit_ON_OFF_reg_0 ),
        .I4(\GREEN.counter_reg_n_0_[9] ),
        .I5(bit_ON_OFF1_carry__2_n_0),
        .O(counter1_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    counter1_carry__0_i_5
       (.I0(\GREEN.counter_reg_n_0_[14] ),
        .I1(Q[14]),
        .I2(\GREEN.bit_ON_OFF_reg_0 ),
        .I3(\GREEN.counter_reg_n_0_[15] ),
        .I4(bit_ON_OFF1_carry__2_n_0),
        .I5(Q[15]),
        .O(counter1_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    counter1_carry__0_i_6
       (.I0(\GREEN.counter_reg_n_0_[12] ),
        .I1(Q[12]),
        .I2(\GREEN.bit_ON_OFF_reg_0 ),
        .I3(\GREEN.counter_reg_n_0_[13] ),
        .I4(bit_ON_OFF1_carry__2_n_0),
        .I5(Q[13]),
        .O(counter1_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    counter1_carry__0_i_7
       (.I0(\GREEN.counter_reg_n_0_[10] ),
        .I1(Q[10]),
        .I2(\GREEN.bit_ON_OFF_reg_0 ),
        .I3(\GREEN.counter_reg_n_0_[11] ),
        .I4(bit_ON_OFF1_carry__2_n_0),
        .I5(Q[11]),
        .O(counter1_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    counter1_carry__0_i_8
       (.I0(\GREEN.counter_reg_n_0_[8] ),
        .I1(Q[8]),
        .I2(\GREEN.bit_ON_OFF_reg_0 ),
        .I3(\GREEN.counter_reg_n_0_[9] ),
        .I4(bit_ON_OFF1_carry__2_n_0),
        .I5(Q[9]),
        .O(counter1_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 counter1_carry__1
       (.CI(counter1_carry__0_n_0),
        .CO({counter1_carry__1_n_0,counter1_carry__1_n_1,counter1_carry__1_n_2,counter1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({counter1_carry__1_i_1_n_0,counter1_carry__1_i_2_n_0,counter1_carry__1_i_3_n_0,counter1_carry__1_i_4_n_0}),
        .O(NLW_counter1_carry__1_O_UNCONNECTED[3:0]),
        .S({counter1_carry__1_i_5_n_0,counter1_carry__1_i_6_n_0,counter1_carry__1_i_7_n_0,counter1_carry__1_i_8_n_0}));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    counter1_carry__1_i_1
       (.I0(\GREEN.counter_reg_n_0_[22] ),
        .I1(Q[22]),
        .I2(Q[23]),
        .I3(\GREEN.bit_ON_OFF_reg_0 ),
        .I4(\GREEN.counter_reg_n_0_[23] ),
        .I5(bit_ON_OFF1_carry__2_n_0),
        .O(counter1_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    counter1_carry__1_i_2
       (.I0(\GREEN.counter_reg_n_0_[20] ),
        .I1(Q[20]),
        .I2(Q[21]),
        .I3(\GREEN.bit_ON_OFF_reg_0 ),
        .I4(\GREEN.counter_reg_n_0_[21] ),
        .I5(bit_ON_OFF1_carry__2_n_0),
        .O(counter1_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    counter1_carry__1_i_3
       (.I0(\GREEN.counter_reg_n_0_[18] ),
        .I1(Q[18]),
        .I2(Q[19]),
        .I3(\GREEN.bit_ON_OFF_reg_0 ),
        .I4(\GREEN.counter_reg_n_0_[19] ),
        .I5(bit_ON_OFF1_carry__2_n_0),
        .O(counter1_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    counter1_carry__1_i_4
       (.I0(\GREEN.counter_reg_n_0_[16] ),
        .I1(Q[16]),
        .I2(Q[17]),
        .I3(\GREEN.bit_ON_OFF_reg_0 ),
        .I4(\GREEN.counter_reg_n_0_[17] ),
        .I5(bit_ON_OFF1_carry__2_n_0),
        .O(counter1_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    counter1_carry__1_i_5
       (.I0(\GREEN.counter_reg_n_0_[22] ),
        .I1(Q[22]),
        .I2(\GREEN.bit_ON_OFF_reg_0 ),
        .I3(\GREEN.counter_reg_n_0_[23] ),
        .I4(bit_ON_OFF1_carry__2_n_0),
        .I5(Q[23]),
        .O(counter1_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    counter1_carry__1_i_6
       (.I0(\GREEN.counter_reg_n_0_[20] ),
        .I1(Q[20]),
        .I2(\GREEN.bit_ON_OFF_reg_0 ),
        .I3(\GREEN.counter_reg_n_0_[21] ),
        .I4(bit_ON_OFF1_carry__2_n_0),
        .I5(Q[21]),
        .O(counter1_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    counter1_carry__1_i_7
       (.I0(\GREEN.counter_reg_n_0_[18] ),
        .I1(Q[18]),
        .I2(\GREEN.bit_ON_OFF_reg_0 ),
        .I3(\GREEN.counter_reg_n_0_[19] ),
        .I4(bit_ON_OFF1_carry__2_n_0),
        .I5(Q[19]),
        .O(counter1_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    counter1_carry__1_i_8
       (.I0(\GREEN.counter_reg_n_0_[16] ),
        .I1(Q[16]),
        .I2(\GREEN.bit_ON_OFF_reg_0 ),
        .I3(\GREEN.counter_reg_n_0_[17] ),
        .I4(bit_ON_OFF1_carry__2_n_0),
        .I5(Q[17]),
        .O(counter1_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 counter1_carry__2
       (.CI(counter1_carry__1_n_0),
        .CO({counter1_carry__2_n_0,counter1_carry__2_n_1,counter1_carry__2_n_2,counter1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({counter1_carry__2_i_1_n_0,counter1_carry__2_i_2_n_0,counter1_carry__2_i_3_n_0,counter1_carry__2_i_4_n_0}),
        .O(NLW_counter1_carry__2_O_UNCONNECTED[3:0]),
        .S({counter1_carry__2_i_5_n_0,counter1_carry__2_i_6_n_0,counter1_carry__2_i_7_n_0,counter1_carry__2_i_8_n_0}));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    counter1_carry__2_i_1
       (.I0(\GREEN.counter_reg_n_0_[30] ),
        .I1(Q[30]),
        .I2(Q[31]),
        .I3(\GREEN.bit_ON_OFF_reg_0 ),
        .I4(\GREEN.counter_reg_n_0_[31] ),
        .I5(bit_ON_OFF1_carry__2_n_0),
        .O(counter1_carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    counter1_carry__2_i_2
       (.I0(\GREEN.counter_reg_n_0_[28] ),
        .I1(Q[28]),
        .I2(Q[29]),
        .I3(\GREEN.bit_ON_OFF_reg_0 ),
        .I4(\GREEN.counter_reg_n_0_[29] ),
        .I5(bit_ON_OFF1_carry__2_n_0),
        .O(counter1_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    counter1_carry__2_i_3
       (.I0(\GREEN.counter_reg_n_0_[26] ),
        .I1(Q[26]),
        .I2(Q[27]),
        .I3(\GREEN.bit_ON_OFF_reg_0 ),
        .I4(\GREEN.counter_reg_n_0_[27] ),
        .I5(bit_ON_OFF1_carry__2_n_0),
        .O(counter1_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    counter1_carry__2_i_4
       (.I0(\GREEN.counter_reg_n_0_[24] ),
        .I1(Q[24]),
        .I2(Q[25]),
        .I3(\GREEN.bit_ON_OFF_reg_0 ),
        .I4(\GREEN.counter_reg_n_0_[25] ),
        .I5(bit_ON_OFF1_carry__2_n_0),
        .O(counter1_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    counter1_carry__2_i_5
       (.I0(\GREEN.counter_reg_n_0_[30] ),
        .I1(Q[30]),
        .I2(\GREEN.bit_ON_OFF_reg_0 ),
        .I3(\GREEN.counter_reg_n_0_[31] ),
        .I4(bit_ON_OFF1_carry__2_n_0),
        .I5(Q[31]),
        .O(counter1_carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    counter1_carry__2_i_6
       (.I0(\GREEN.counter_reg_n_0_[28] ),
        .I1(Q[28]),
        .I2(\GREEN.bit_ON_OFF_reg_0 ),
        .I3(\GREEN.counter_reg_n_0_[29] ),
        .I4(bit_ON_OFF1_carry__2_n_0),
        .I5(Q[29]),
        .O(counter1_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    counter1_carry__2_i_7
       (.I0(\GREEN.counter_reg_n_0_[26] ),
        .I1(Q[26]),
        .I2(\GREEN.bit_ON_OFF_reg_0 ),
        .I3(\GREEN.counter_reg_n_0_[27] ),
        .I4(bit_ON_OFF1_carry__2_n_0),
        .I5(Q[27]),
        .O(counter1_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    counter1_carry__2_i_8
       (.I0(\GREEN.counter_reg_n_0_[24] ),
        .I1(Q[24]),
        .I2(\GREEN.bit_ON_OFF_reg_0 ),
        .I3(\GREEN.counter_reg_n_0_[25] ),
        .I4(bit_ON_OFF1_carry__2_n_0),
        .I5(Q[25]),
        .O(counter1_carry__2_i_8_n_0));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    counter1_carry_i_1
       (.I0(\GREEN.counter_reg_n_0_[6] ),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(\GREEN.bit_ON_OFF_reg_0 ),
        .I4(\GREEN.counter_reg_n_0_[7] ),
        .I5(bit_ON_OFF1_carry__2_n_0),
        .O(counter1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    counter1_carry_i_2
       (.I0(\GREEN.counter_reg_n_0_[4] ),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(\GREEN.bit_ON_OFF_reg_0 ),
        .I4(\GREEN.counter_reg_n_0_[5] ),
        .I5(bit_ON_OFF1_carry__2_n_0),
        .O(counter1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    counter1_carry_i_3
       (.I0(\GREEN.counter_reg_n_0_[2] ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\GREEN.bit_ON_OFF_reg_0 ),
        .I4(\GREEN.counter_reg_n_0_[3] ),
        .I5(bit_ON_OFF1_carry__2_n_0),
        .O(counter1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    counter1_carry_i_4
       (.I0(\GREEN.counter_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\GREEN.bit_ON_OFF_reg_0 ),
        .I4(\GREEN.counter_reg_n_0_[1] ),
        .I5(bit_ON_OFF1_carry__2_n_0),
        .O(counter1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    counter1_carry_i_5
       (.I0(\GREEN.counter_reg_n_0_[6] ),
        .I1(Q[6]),
        .I2(\GREEN.bit_ON_OFF_reg_0 ),
        .I3(\GREEN.counter_reg_n_0_[7] ),
        .I4(bit_ON_OFF1_carry__2_n_0),
        .I5(Q[7]),
        .O(counter1_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    counter1_carry_i_6
       (.I0(\GREEN.counter_reg_n_0_[4] ),
        .I1(Q[4]),
        .I2(\GREEN.bit_ON_OFF_reg_0 ),
        .I3(\GREEN.counter_reg_n_0_[5] ),
        .I4(bit_ON_OFF1_carry__2_n_0),
        .I5(Q[5]),
        .O(counter1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    counter1_carry_i_7
       (.I0(\GREEN.counter_reg_n_0_[2] ),
        .I1(Q[2]),
        .I2(\GREEN.bit_ON_OFF_reg_0 ),
        .I3(\GREEN.counter_reg_n_0_[3] ),
        .I4(bit_ON_OFF1_carry__2_n_0),
        .I5(Q[3]),
        .O(counter1_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    counter1_carry_i_8
       (.I0(\GREEN.counter_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(\GREEN.bit_ON_OFF_reg_0 ),
        .I3(\GREEN.counter_reg_n_0_[1] ),
        .I4(bit_ON_OFF1_carry__2_n_0),
        .I5(Q[1]),
        .O(counter1_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \counter1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\counter1_inferred__0/i__carry_n_0 ,\counter1_inferred__0/i__carry_n_1 ,\counter1_inferred__0/i__carry_n_2 ,\counter1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_counter1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \counter1_inferred__0/i__carry__0 
       (.CI(\counter1_inferred__0/i__carry_n_0 ),
        .CO({\counter1_inferred__0/i__carry__0_n_0 ,\counter1_inferred__0/i__carry__0_n_1 ,\counter1_inferred__0/i__carry__0_n_2 ,\counter1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(\NLW_counter1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \counter1_inferred__0/i__carry__1 
       (.CI(\counter1_inferred__0/i__carry__0_n_0 ),
        .CO({\counter1_inferred__0/i__carry__1_n_0 ,\counter1_inferred__0/i__carry__1_n_1 ,\counter1_inferred__0/i__carry__1_n_2 ,\counter1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}),
        .O(\NLW_counter1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \counter1_inferred__0/i__carry__2 
       (.CI(\counter1_inferred__0/i__carry__1_n_0 ),
        .CO({\counter1_inferred__0/i__carry__2_n_0 ,\counter1_inferred__0/i__carry__2_n_1 ,\counter1_inferred__0/i__carry__2_n_2 ,\counter1_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}),
        .O(\NLW_counter1_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5_n_0,i__carry__2_i_6_n_0,i__carry__2_i_7_n_0,i__carry__2_i_8_n_0}));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    i__carry__0_i_1
       (.I0(\RED.counter_reg_n_0_[14] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [14]),
        .I2(\counter1_inferred__0/i__carry__2_0 [15]),
        .I3(\RED.bit_ON_OFF_reg_0 ),
        .I4(\RED.counter_reg_n_0_[15] ),
        .I5(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_1__0
       (.I0(\RED.counter_reg_n_0_[14] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [14]),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_0 [15]),
        .I3(\RED.counter_reg_n_0_[15] ),
        .O(i__carry__0_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry__0_i_1__1
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[8] ),
        .O(i__carry__0_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    i__carry__0_i_2
       (.I0(\RED.counter_reg_n_0_[12] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [12]),
        .I2(\counter1_inferred__0/i__carry__2_0 [13]),
        .I3(\RED.bit_ON_OFF_reg_0 ),
        .I4(\RED.counter_reg_n_0_[13] ),
        .I5(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .O(i__carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_2__0
       (.I0(\RED.counter_reg_n_0_[12] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [12]),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_0 [13]),
        .I3(\RED.counter_reg_n_0_[13] ),
        .O(i__carry__0_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry__0_i_2__1
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[7] ),
        .O(i__carry__0_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    i__carry__0_i_3
       (.I0(\RED.counter_reg_n_0_[10] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [10]),
        .I2(\counter1_inferred__0/i__carry__2_0 [11]),
        .I3(\RED.bit_ON_OFF_reg_0 ),
        .I4(\RED.counter_reg_n_0_[11] ),
        .I5(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .O(i__carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_3__0
       (.I0(\RED.counter_reg_n_0_[10] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [10]),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_0 [11]),
        .I3(\RED.counter_reg_n_0_[11] ),
        .O(i__carry__0_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry__0_i_3__1
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[6] ),
        .O(i__carry__0_i_3__1_n_0));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    i__carry__0_i_4
       (.I0(\RED.counter_reg_n_0_[8] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [8]),
        .I2(\counter1_inferred__0/i__carry__2_0 [9]),
        .I3(\RED.bit_ON_OFF_reg_0 ),
        .I4(\RED.counter_reg_n_0_[9] ),
        .I5(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_4__0
       (.I0(\RED.counter_reg_n_0_[8] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [8]),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_0 [9]),
        .I3(\RED.counter_reg_n_0_[9] ),
        .O(i__carry__0_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry__0_i_4__1
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[5] ),
        .O(i__carry__0_i_4__1_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    i__carry__0_i_5
       (.I0(\RED.counter_reg_n_0_[14] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [14]),
        .I2(\RED.bit_ON_OFF_reg_0 ),
        .I3(\RED.counter_reg_n_0_[15] ),
        .I4(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I5(\counter1_inferred__0/i__carry__2_0 [15]),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5__0
       (.I0(\RED.counter_reg_n_0_[14] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [14]),
        .I2(\RED.counter_reg_n_0_[15] ),
        .I3(\bit_ON_OFF1_inferred__0/i__carry__2_0 [15]),
        .O(i__carry__0_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    i__carry__0_i_6
       (.I0(\RED.counter_reg_n_0_[12] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [12]),
        .I2(\RED.bit_ON_OFF_reg_0 ),
        .I3(\RED.counter_reg_n_0_[13] ),
        .I4(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I5(\counter1_inferred__0/i__carry__2_0 [13]),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6__0
       (.I0(\RED.counter_reg_n_0_[12] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [12]),
        .I2(\RED.counter_reg_n_0_[13] ),
        .I3(\bit_ON_OFF1_inferred__0/i__carry__2_0 [13]),
        .O(i__carry__0_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    i__carry__0_i_7
       (.I0(\RED.counter_reg_n_0_[10] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [10]),
        .I2(\RED.bit_ON_OFF_reg_0 ),
        .I3(\RED.counter_reg_n_0_[11] ),
        .I4(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I5(\counter1_inferred__0/i__carry__2_0 [11]),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7__0
       (.I0(\RED.counter_reg_n_0_[10] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [10]),
        .I2(\RED.counter_reg_n_0_[11] ),
        .I3(\bit_ON_OFF1_inferred__0/i__carry__2_0 [11]),
        .O(i__carry__0_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    i__carry__0_i_8
       (.I0(\RED.counter_reg_n_0_[8] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [8]),
        .I2(\RED.bit_ON_OFF_reg_0 ),
        .I3(\RED.counter_reg_n_0_[9] ),
        .I4(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I5(\counter1_inferred__0/i__carry__2_0 [9]),
        .O(i__carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8__0
       (.I0(\RED.counter_reg_n_0_[8] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [8]),
        .I2(\RED.counter_reg_n_0_[9] ),
        .I3(\bit_ON_OFF1_inferred__0/i__carry__2_0 [9]),
        .O(i__carry__0_i_8__0_n_0));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    i__carry__1_i_1
       (.I0(\RED.counter_reg_n_0_[22] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [22]),
        .I2(\counter1_inferred__0/i__carry__2_0 [23]),
        .I3(\RED.bit_ON_OFF_reg_0 ),
        .I4(\RED.counter_reg_n_0_[23] ),
        .I5(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .O(i__carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_1__0
       (.I0(\RED.counter_reg_n_0_[22] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [22]),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_0 [23]),
        .I3(\RED.counter_reg_n_0_[23] ),
        .O(i__carry__1_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry__1_i_1__1
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[12] ),
        .O(i__carry__1_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    i__carry__1_i_2
       (.I0(\RED.counter_reg_n_0_[20] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [20]),
        .I2(\counter1_inferred__0/i__carry__2_0 [21]),
        .I3(\RED.bit_ON_OFF_reg_0 ),
        .I4(\RED.counter_reg_n_0_[21] ),
        .I5(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .O(i__carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_2__0
       (.I0(\RED.counter_reg_n_0_[20] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [20]),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_0 [21]),
        .I3(\RED.counter_reg_n_0_[21] ),
        .O(i__carry__1_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry__1_i_2__1
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[11] ),
        .O(i__carry__1_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    i__carry__1_i_3
       (.I0(\RED.counter_reg_n_0_[18] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [18]),
        .I2(\counter1_inferred__0/i__carry__2_0 [19]),
        .I3(\RED.bit_ON_OFF_reg_0 ),
        .I4(\RED.counter_reg_n_0_[19] ),
        .I5(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .O(i__carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_3__0
       (.I0(\RED.counter_reg_n_0_[18] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [18]),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_0 [19]),
        .I3(\RED.counter_reg_n_0_[19] ),
        .O(i__carry__1_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry__1_i_3__1
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[10] ),
        .O(i__carry__1_i_3__1_n_0));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    i__carry__1_i_4
       (.I0(\RED.counter_reg_n_0_[16] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [16]),
        .I2(\counter1_inferred__0/i__carry__2_0 [17]),
        .I3(\RED.bit_ON_OFF_reg_0 ),
        .I4(\RED.counter_reg_n_0_[17] ),
        .I5(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .O(i__carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_4__0
       (.I0(\RED.counter_reg_n_0_[16] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [16]),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_0 [17]),
        .I3(\RED.counter_reg_n_0_[17] ),
        .O(i__carry__1_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry__1_i_4__1
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[9] ),
        .O(i__carry__1_i_4__1_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    i__carry__1_i_5
       (.I0(\RED.counter_reg_n_0_[22] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [22]),
        .I2(\RED.bit_ON_OFF_reg_0 ),
        .I3(\RED.counter_reg_n_0_[23] ),
        .I4(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I5(\counter1_inferred__0/i__carry__2_0 [23]),
        .O(i__carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_5__0
       (.I0(\RED.counter_reg_n_0_[22] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [22]),
        .I2(\RED.counter_reg_n_0_[23] ),
        .I3(\bit_ON_OFF1_inferred__0/i__carry__2_0 [23]),
        .O(i__carry__1_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    i__carry__1_i_6
       (.I0(\RED.counter_reg_n_0_[20] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [20]),
        .I2(\RED.bit_ON_OFF_reg_0 ),
        .I3(\RED.counter_reg_n_0_[21] ),
        .I4(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I5(\counter1_inferred__0/i__carry__2_0 [21]),
        .O(i__carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6__0
       (.I0(\RED.counter_reg_n_0_[20] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [20]),
        .I2(\RED.counter_reg_n_0_[21] ),
        .I3(\bit_ON_OFF1_inferred__0/i__carry__2_0 [21]),
        .O(i__carry__1_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    i__carry__1_i_7
       (.I0(\RED.counter_reg_n_0_[18] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [18]),
        .I2(\RED.bit_ON_OFF_reg_0 ),
        .I3(\RED.counter_reg_n_0_[19] ),
        .I4(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I5(\counter1_inferred__0/i__carry__2_0 [19]),
        .O(i__carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7__0
       (.I0(\RED.counter_reg_n_0_[18] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [18]),
        .I2(\RED.counter_reg_n_0_[19] ),
        .I3(\bit_ON_OFF1_inferred__0/i__carry__2_0 [19]),
        .O(i__carry__1_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    i__carry__1_i_8
       (.I0(\RED.counter_reg_n_0_[16] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [16]),
        .I2(\RED.bit_ON_OFF_reg_0 ),
        .I3(\RED.counter_reg_n_0_[17] ),
        .I4(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I5(\counter1_inferred__0/i__carry__2_0 [17]),
        .O(i__carry__1_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8__0
       (.I0(\RED.counter_reg_n_0_[16] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [16]),
        .I2(\RED.counter_reg_n_0_[17] ),
        .I3(\bit_ON_OFF1_inferred__0/i__carry__2_0 [17]),
        .O(i__carry__1_i_8__0_n_0));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    i__carry__2_i_1
       (.I0(\RED.counter_reg_n_0_[30] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [30]),
        .I2(\counter1_inferred__0/i__carry__2_0 [31]),
        .I3(\RED.bit_ON_OFF_reg_0 ),
        .I4(\RED.counter_reg_n_0_[31] ),
        .I5(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .O(i__carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_1__0
       (.I0(\RED.counter_reg_n_0_[30] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [30]),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_0 [31]),
        .I3(\RED.counter_reg_n_0_[31] ),
        .O(i__carry__2_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry__2_i_1__1
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[16] ),
        .O(i__carry__2_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    i__carry__2_i_2
       (.I0(\RED.counter_reg_n_0_[28] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [28]),
        .I2(\counter1_inferred__0/i__carry__2_0 [29]),
        .I3(\RED.bit_ON_OFF_reg_0 ),
        .I4(\RED.counter_reg_n_0_[29] ),
        .I5(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .O(i__carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_2__0
       (.I0(\RED.counter_reg_n_0_[28] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [28]),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_0 [29]),
        .I3(\RED.counter_reg_n_0_[29] ),
        .O(i__carry__2_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry__2_i_2__1
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[15] ),
        .O(i__carry__2_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    i__carry__2_i_3
       (.I0(\RED.counter_reg_n_0_[26] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [26]),
        .I2(\counter1_inferred__0/i__carry__2_0 [27]),
        .I3(\RED.bit_ON_OFF_reg_0 ),
        .I4(\RED.counter_reg_n_0_[27] ),
        .I5(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .O(i__carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_3__0
       (.I0(\RED.counter_reg_n_0_[26] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [26]),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_0 [27]),
        .I3(\RED.counter_reg_n_0_[27] ),
        .O(i__carry__2_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry__2_i_3__1
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[14] ),
        .O(i__carry__2_i_3__1_n_0));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    i__carry__2_i_4
       (.I0(\RED.counter_reg_n_0_[24] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [24]),
        .I2(\counter1_inferred__0/i__carry__2_0 [25]),
        .I3(\RED.bit_ON_OFF_reg_0 ),
        .I4(\RED.counter_reg_n_0_[25] ),
        .I5(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .O(i__carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_4__0
       (.I0(\RED.counter_reg_n_0_[24] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [24]),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_0 [25]),
        .I3(\RED.counter_reg_n_0_[25] ),
        .O(i__carry__2_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry__2_i_4__1
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[13] ),
        .O(i__carry__2_i_4__1_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    i__carry__2_i_5
       (.I0(\RED.counter_reg_n_0_[30] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [30]),
        .I2(\RED.bit_ON_OFF_reg_0 ),
        .I3(\RED.counter_reg_n_0_[31] ),
        .I4(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I5(\counter1_inferred__0/i__carry__2_0 [31]),
        .O(i__carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_5__0
       (.I0(\RED.counter_reg_n_0_[30] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [30]),
        .I2(\RED.counter_reg_n_0_[31] ),
        .I3(\bit_ON_OFF1_inferred__0/i__carry__2_0 [31]),
        .O(i__carry__2_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    i__carry__2_i_6
       (.I0(\RED.counter_reg_n_0_[28] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [28]),
        .I2(\RED.bit_ON_OFF_reg_0 ),
        .I3(\RED.counter_reg_n_0_[29] ),
        .I4(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I5(\counter1_inferred__0/i__carry__2_0 [29]),
        .O(i__carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_6__0
       (.I0(\RED.counter_reg_n_0_[28] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [28]),
        .I2(\RED.counter_reg_n_0_[29] ),
        .I3(\bit_ON_OFF1_inferred__0/i__carry__2_0 [29]),
        .O(i__carry__2_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    i__carry__2_i_7
       (.I0(\RED.counter_reg_n_0_[26] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [26]),
        .I2(\RED.bit_ON_OFF_reg_0 ),
        .I3(\RED.counter_reg_n_0_[27] ),
        .I4(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I5(\counter1_inferred__0/i__carry__2_0 [27]),
        .O(i__carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_7__0
       (.I0(\RED.counter_reg_n_0_[26] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [26]),
        .I2(\RED.counter_reg_n_0_[27] ),
        .I3(\bit_ON_OFF1_inferred__0/i__carry__2_0 [27]),
        .O(i__carry__2_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    i__carry__2_i_8
       (.I0(\RED.counter_reg_n_0_[24] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [24]),
        .I2(\RED.bit_ON_OFF_reg_0 ),
        .I3(\RED.counter_reg_n_0_[25] ),
        .I4(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I5(\counter1_inferred__0/i__carry__2_0 [25]),
        .O(i__carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_8__0
       (.I0(\RED.counter_reg_n_0_[24] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [24]),
        .I2(\RED.counter_reg_n_0_[25] ),
        .I3(\bit_ON_OFF1_inferred__0/i__carry__2_0 [25]),
        .O(i__carry__2_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry__3_i_1
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[20] ),
        .O(i__carry__3_i_1_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry__3_i_2
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[19] ),
        .O(i__carry__3_i_2_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry__3_i_3
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[18] ),
        .O(i__carry__3_i_3_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry__3_i_4
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[17] ),
        .O(i__carry__3_i_4_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry__4_i_1
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[24] ),
        .O(i__carry__4_i_1_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry__4_i_2
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[23] ),
        .O(i__carry__4_i_2_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry__4_i_3
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[22] ),
        .O(i__carry__4_i_3_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry__4_i_4
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[21] ),
        .O(i__carry__4_i_4_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry__5_i_1
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[28] ),
        .O(i__carry__5_i_1_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry__5_i_2
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[27] ),
        .O(i__carry__5_i_2_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry__5_i_3
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[26] ),
        .O(i__carry__5_i_3_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry__5_i_4
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[25] ),
        .O(i__carry__5_i_4_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry__6_i_1
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[31] ),
        .O(i__carry__6_i_1_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry__6_i_2
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[30] ),
        .O(i__carry__6_i_2_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry__6_i_3
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[29] ),
        .O(i__carry__6_i_3_n_0));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    i__carry_i_1
       (.I0(\RED.counter_reg_n_0_[6] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [6]),
        .I2(\counter1_inferred__0/i__carry__2_0 [7]),
        .I3(\RED.bit_ON_OFF_reg_0 ),
        .I4(\RED.counter_reg_n_0_[7] ),
        .I5(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__0
       (.I0(\RED.counter_reg_n_0_[6] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [6]),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_0 [7]),
        .I3(\RED.counter_reg_n_0_[7] ),
        .O(i__carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry_i_1__1
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[0] ),
        .O(i__carry_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    i__carry_i_2
       (.I0(\RED.counter_reg_n_0_[4] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [4]),
        .I2(\counter1_inferred__0/i__carry__2_0 [5]),
        .I3(\RED.bit_ON_OFF_reg_0 ),
        .I4(\RED.counter_reg_n_0_[5] ),
        .I5(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__0
       (.I0(\RED.counter_reg_n_0_[4] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [4]),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_0 [5]),
        .I3(\RED.counter_reg_n_0_[5] ),
        .O(i__carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry_i_2__1
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[4] ),
        .O(i__carry_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    i__carry_i_3
       (.I0(\RED.counter_reg_n_0_[2] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [2]),
        .I2(\counter1_inferred__0/i__carry__2_0 [3]),
        .I3(\RED.bit_ON_OFF_reg_0 ),
        .I4(\RED.counter_reg_n_0_[3] ),
        .I5(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__0
       (.I0(\RED.counter_reg_n_0_[2] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [2]),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_0 [3]),
        .I3(\RED.counter_reg_n_0_[3] ),
        .O(i__carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry_i_3__1
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[3] ),
        .O(i__carry_i_3__1_n_0));
  LUT6 #(
    .INIT(64'h2F0002002F2F0202)) 
    i__carry_i_4
       (.I0(\RED.counter_reg_n_0_[0] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [0]),
        .I2(\counter1_inferred__0/i__carry__2_0 [1]),
        .I3(\RED.bit_ON_OFF_reg_0 ),
        .I4(\RED.counter_reg_n_0_[1] ),
        .I5(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__0
       (.I0(\RED.counter_reg_n_0_[0] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [0]),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_0 [1]),
        .I3(\RED.counter_reg_n_0_[1] ),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry_i_4__1
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[2] ),
        .O(i__carry_i_4__1_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    i__carry_i_5
       (.I0(\RED.counter_reg_n_0_[6] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [6]),
        .I2(\RED.bit_ON_OFF_reg_0 ),
        .I3(\RED.counter_reg_n_0_[7] ),
        .I4(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I5(\counter1_inferred__0/i__carry__2_0 [7]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__0
       (.I0(\RED.counter_reg_n_0_[6] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [6]),
        .I2(\RED.counter_reg_n_0_[7] ),
        .I3(\bit_ON_OFF1_inferred__0/i__carry__2_0 [7]),
        .O(i__carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    i__carry_i_5__1
       (.I0(\counter1_inferred__0/i__carry__2_n_0 ),
        .I1(\RED.bit_ON_OFF_reg_0 ),
        .I2(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I3(\RED.counter_reg_n_0_[1] ),
        .O(i__carry_i_5__1_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    i__carry_i_6
       (.I0(\RED.counter_reg_n_0_[4] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [4]),
        .I2(\RED.bit_ON_OFF_reg_0 ),
        .I3(\RED.counter_reg_n_0_[5] ),
        .I4(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I5(\counter1_inferred__0/i__carry__2_0 [5]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__0
       (.I0(\RED.counter_reg_n_0_[4] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [4]),
        .I2(\RED.counter_reg_n_0_[5] ),
        .I3(\bit_ON_OFF1_inferred__0/i__carry__2_0 [5]),
        .O(i__carry_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    i__carry_i_7
       (.I0(\RED.counter_reg_n_0_[2] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [2]),
        .I2(\RED.bit_ON_OFF_reg_0 ),
        .I3(\RED.counter_reg_n_0_[3] ),
        .I4(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I5(\counter1_inferred__0/i__carry__2_0 [3]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__0
       (.I0(\RED.counter_reg_n_0_[2] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [2]),
        .I2(\RED.counter_reg_n_0_[3] ),
        .I3(\bit_ON_OFF1_inferred__0/i__carry__2_0 [3]),
        .O(i__carry_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h9000990003930099)) 
    i__carry_i_8
       (.I0(\RED.counter_reg_n_0_[0] ),
        .I1(\counter1_inferred__0/i__carry__2_0 [0]),
        .I2(\RED.bit_ON_OFF_reg_0 ),
        .I3(\RED.counter_reg_n_0_[1] ),
        .I4(\bit_ON_OFF1_inferred__0/i__carry__2_n_0 ),
        .I5(\counter1_inferred__0/i__carry__2_0 [1]),
        .O(i__carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__0
       (.I0(\RED.counter_reg_n_0_[0] ),
        .I1(\bit_ON_OFF1_inferred__0/i__carry__2_0 [0]),
        .I2(\RED.counter_reg_n_0_[1] ),
        .I3(\bit_ON_OFF1_inferred__0/i__carry__2_0 [1]),
        .O(i__carry_i_8__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(plusOp_carry_i_1_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[4:1]),
        .S({plusOp_carry_i_2_n_0,plusOp_carry_i_3_n_0,plusOp_carry_i_4_n_0,plusOp_carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S({plusOp_carry__0_i_1_n_0,plusOp_carry__0_i_2_n_0,plusOp_carry__0_i_3_n_0,plusOp_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry__0_i_1
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[8] ),
        .O(plusOp_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry__0_i_2
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[7] ),
        .O(plusOp_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry__0_i_3
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[6] ),
        .O(plusOp_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry__0_i_4
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[5] ),
        .O(plusOp_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[12:9]),
        .S({plusOp_carry__1_i_1_n_0,plusOp_carry__1_i_2_n_0,plusOp_carry__1_i_3_n_0,plusOp_carry__1_i_4_n_0}));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry__1_i_1
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[12] ),
        .O(plusOp_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry__1_i_2
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[11] ),
        .O(plusOp_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry__1_i_3
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[10] ),
        .O(plusOp_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry__1_i_4
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[9] ),
        .O(plusOp_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[16:13]),
        .S({plusOp_carry__2_i_1_n_0,plusOp_carry__2_i_2_n_0,plusOp_carry__2_i_3_n_0,plusOp_carry__2_i_4_n_0}));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry__2_i_1
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[16] ),
        .O(plusOp_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry__2_i_2
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[15] ),
        .O(plusOp_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry__2_i_3
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[14] ),
        .O(plusOp_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry__2_i_4
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[13] ),
        .O(plusOp_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[20:17]),
        .S({plusOp_carry__3_i_1_n_0,plusOp_carry__3_i_2_n_0,plusOp_carry__3_i_3_n_0,plusOp_carry__3_i_4_n_0}));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry__3_i_1
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[20] ),
        .O(plusOp_carry__3_i_1_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry__3_i_2
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[19] ),
        .O(plusOp_carry__3_i_2_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry__3_i_3
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[18] ),
        .O(plusOp_carry__3_i_3_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry__3_i_4
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[17] ),
        .O(plusOp_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO({plusOp_carry__4_n_0,plusOp_carry__4_n_1,plusOp_carry__4_n_2,plusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[24:21]),
        .S({plusOp_carry__4_i_1_n_0,plusOp_carry__4_i_2_n_0,plusOp_carry__4_i_3_n_0,plusOp_carry__4_i_4_n_0}));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry__4_i_1
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[24] ),
        .O(plusOp_carry__4_i_1_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry__4_i_2
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[23] ),
        .O(plusOp_carry__4_i_2_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry__4_i_3
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[22] ),
        .O(plusOp_carry__4_i_3_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry__4_i_4
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[21] ),
        .O(plusOp_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__5
       (.CI(plusOp_carry__4_n_0),
        .CO({plusOp_carry__5_n_0,plusOp_carry__5_n_1,plusOp_carry__5_n_2,plusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[28:25]),
        .S({plusOp_carry__5_i_1_n_0,plusOp_carry__5_i_2_n_0,plusOp_carry__5_i_3_n_0,plusOp_carry__5_i_4_n_0}));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry__5_i_1
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[28] ),
        .O(plusOp_carry__5_i_1_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry__5_i_2
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[27] ),
        .O(plusOp_carry__5_i_2_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry__5_i_3
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[26] ),
        .O(plusOp_carry__5_i_3_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry__5_i_4
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[25] ),
        .O(plusOp_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__6
       (.CI(plusOp_carry__5_n_0),
        .CO({NLW_plusOp_carry__6_CO_UNCONNECTED[3:2],plusOp_carry__6_n_2,plusOp_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__6_O_UNCONNECTED[3],plusOp[31:29]}),
        .S({1'b0,plusOp_carry__6_i_1_n_0,plusOp_carry__6_i_2_n_0,plusOp_carry__6_i_3_n_0}));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry__6_i_1
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[31] ),
        .O(plusOp_carry__6_i_1_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry__6_i_2
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[30] ),
        .O(plusOp_carry__6_i_2_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry__6_i_3
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[29] ),
        .O(plusOp_carry__6_i_3_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry_i_1
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[0] ),
        .O(plusOp_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry_i_2
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[4] ),
        .O(plusOp_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry_i_3
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[3] ),
        .O(plusOp_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry_i_4
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[2] ),
        .O(plusOp_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h4700)) 
    plusOp_carry_i_5
       (.I0(counter1_carry__2_n_0),
        .I1(\GREEN.bit_ON_OFF_reg_0 ),
        .I2(bit_ON_OFF1_carry__2_n_0),
        .I3(\GREEN.counter_reg_n_0_[1] ),
        .O(plusOp_carry_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__0/i__carry_n_0 ,\plusOp_inferred__0/i__carry_n_1 ,\plusOp_inferred__0/i__carry_n_2 ,\plusOp_inferred__0/i__carry_n_3 }),
        .CYINIT(i__carry_i_1__1_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry_n_4 ,\plusOp_inferred__0/i__carry_n_5 ,\plusOp_inferred__0/i__carry_n_6 ,\plusOp_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0,i__carry_i_5__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__0 
       (.CI(\plusOp_inferred__0/i__carry_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__0_n_0 ,\plusOp_inferred__0/i__carry__0_n_1 ,\plusOp_inferred__0/i__carry__0_n_2 ,\plusOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__0_n_4 ,\plusOp_inferred__0/i__carry__0_n_5 ,\plusOp_inferred__0/i__carry__0_n_6 ,\plusOp_inferred__0/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__1_n_0,i__carry__0_i_2__1_n_0,i__carry__0_i_3__1_n_0,i__carry__0_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__1 
       (.CI(\plusOp_inferred__0/i__carry__0_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__1_n_0 ,\plusOp_inferred__0/i__carry__1_n_1 ,\plusOp_inferred__0/i__carry__1_n_2 ,\plusOp_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__1_n_4 ,\plusOp_inferred__0/i__carry__1_n_5 ,\plusOp_inferred__0/i__carry__1_n_6 ,\plusOp_inferred__0/i__carry__1_n_7 }),
        .S({i__carry__1_i_1__1_n_0,i__carry__1_i_2__1_n_0,i__carry__1_i_3__1_n_0,i__carry__1_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__2 
       (.CI(\plusOp_inferred__0/i__carry__1_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__2_n_0 ,\plusOp_inferred__0/i__carry__2_n_1 ,\plusOp_inferred__0/i__carry__2_n_2 ,\plusOp_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__2_n_4 ,\plusOp_inferred__0/i__carry__2_n_5 ,\plusOp_inferred__0/i__carry__2_n_6 ,\plusOp_inferred__0/i__carry__2_n_7 }),
        .S({i__carry__2_i_1__1_n_0,i__carry__2_i_2__1_n_0,i__carry__2_i_3__1_n_0,i__carry__2_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__3 
       (.CI(\plusOp_inferred__0/i__carry__2_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__3_n_0 ,\plusOp_inferred__0/i__carry__3_n_1 ,\plusOp_inferred__0/i__carry__3_n_2 ,\plusOp_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__3_n_4 ,\plusOp_inferred__0/i__carry__3_n_5 ,\plusOp_inferred__0/i__carry__3_n_6 ,\plusOp_inferred__0/i__carry__3_n_7 }),
        .S({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__4 
       (.CI(\plusOp_inferred__0/i__carry__3_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__4_n_0 ,\plusOp_inferred__0/i__carry__4_n_1 ,\plusOp_inferred__0/i__carry__4_n_2 ,\plusOp_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__4_n_4 ,\plusOp_inferred__0/i__carry__4_n_5 ,\plusOp_inferred__0/i__carry__4_n_6 ,\plusOp_inferred__0/i__carry__4_n_7 }),
        .S({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__5 
       (.CI(\plusOp_inferred__0/i__carry__4_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__5_n_0 ,\plusOp_inferred__0/i__carry__5_n_1 ,\plusOp_inferred__0/i__carry__5_n_2 ,\plusOp_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__5_n_4 ,\plusOp_inferred__0/i__carry__5_n_5 ,\plusOp_inferred__0/i__carry__5_n_6 ,\plusOp_inferred__0/i__carry__5_n_7 }),
        .S({i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__6 
       (.CI(\plusOp_inferred__0/i__carry__5_n_0 ),
        .CO({\NLW_plusOp_inferred__0/i__carry__6_CO_UNCONNECTED [3:2],\plusOp_inferred__0/i__carry__6_n_2 ,\plusOp_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__0/i__carry__6_O_UNCONNECTED [3],\plusOp_inferred__0/i__carry__6_n_5 ,\plusOp_inferred__0/i__carry__6_n_6 ,\plusOp_inferred__0/i__carry__6_n_7 }),
        .S({1'b0,i__carry__6_i_1_n_0,i__carry__6_i_2_n_0,i__carry__6_i_3_n_0}));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
