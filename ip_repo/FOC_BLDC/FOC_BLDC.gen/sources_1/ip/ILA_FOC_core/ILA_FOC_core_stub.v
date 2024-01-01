// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Mon Jan  1 15:44:01 2024
// Host        : LAPTOP-PAWEL running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ip_repo/FOC_BLDC/FOC_BLDC.gen/sources_1/ip/ILA_FOC_core/ILA_FOC_core_stub.v
// Design      : ILA_FOC_core
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ila,Vivado 2022.1" *)
module ILA_FOC_core(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10, probe11, probe12, probe13, probe14, probe15)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[12:0],probe1[12:0],probe2[12:0],probe3[17:0],probe4[17:0],probe5[17:0],probe6[17:0],probe7[17:0],probe8[0:0],probe9[0:0],probe10[0:0],probe11[1:0],probe12[1:0],probe13[1:0],probe14[1:0],probe15[0:0]" */;
  input clk;
  input [12:0]probe0;
  input [12:0]probe1;
  input [12:0]probe2;
  input [17:0]probe3;
  input [17:0]probe4;
  input [17:0]probe5;
  input [17:0]probe6;
  input [17:0]probe7;
  input [0:0]probe8;
  input [0:0]probe9;
  input [0:0]probe10;
  input [1:0]probe11;
  input [1:0]probe12;
  input [1:0]probe13;
  input [1:0]probe14;
  input [0:0]probe15;
endmodule
