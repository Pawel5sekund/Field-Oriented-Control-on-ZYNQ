// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sat Jul 27 14:58:21 2024
// Host        : LAPTOP-PAWEL running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_FOC_top_0_0/ebit_z7010_top_FOC_top_0_0_stub.v
// Design      : ebit_z7010_top_FOC_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "FOC_top,Vivado 2022.1" *)
module ebit_z7010_top_FOC_top_0_0(S_AXI_ACLK, S_AXI_ARESETN, S_AXI_AWADDR, 
  S_AXI_AWPROT, S_AXI_AWVALID, S_AXI_AWREADY, S_AXI_WDATA, S_AXI_WSTRB, S_AXI_WVALID, 
  S_AXI_WREADY, S_AXI_BRESP, S_AXI_BVALID, S_AXI_BREADY, S_AXI_ARADDR, S_AXI_ARPROT, 
  S_AXI_ARVALID, S_AXI_ARREADY, S_AXI_RDATA, S_AXI_RRESP, S_AXI_RVALID, S_AXI_RREADY, 
  addrRegXADC, dataRegXADC, CLK, encoder, STEP, DIR, PWM_CH_U, PWM_CH_W, PWM_CH_V)
/* synthesis syn_black_box black_box_pad_pin="S_AXI_ACLK,S_AXI_ARESETN,S_AXI_AWADDR[3:0],S_AXI_AWPROT[2:0],S_AXI_AWVALID,S_AXI_AWREADY,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WVALID,S_AXI_WREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_BREADY,S_AXI_ARADDR[3:0],S_AXI_ARPROT[2:0],S_AXI_ARVALID,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_RREADY,addrRegXADC[6:0],dataRegXADC[15:0],CLK,encoder[1:0],STEP,DIR,PWM_CH_U[1:0],PWM_CH_W[1:0],PWM_CH_V[1:0]" */;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [3:0]S_AXI_AWADDR;
  input [2:0]S_AXI_AWPROT;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [3:0]S_AXI_ARADDR;
  input [2:0]S_AXI_ARPROT;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RVALID;
  input S_AXI_RREADY;
  input [6:0]addrRegXADC;
  input [15:0]dataRegXADC;
  input CLK;
  input [1:0]encoder;
  input STEP;
  input DIR;
  output [1:0]PWM_CH_U;
  output [1:0]PWM_CH_W;
  output [1:0]PWM_CH_V;
endmodule
