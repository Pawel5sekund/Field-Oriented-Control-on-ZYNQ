// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Wed Jun 29 20:21:53 2022
// Host        : LAPTOP-QKPB5NLF running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top PID_DSP -prefix
//               PID_DSP_ PID_DSP_stub.v
// Design      : PID_DSP
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dsp_macro_v1_0_2,Vivado 2022.1" *)
module PID_DSP(CLK, SEL, A, B, C, D, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,SEL[1:0],A[17:0],B[17:0],C[47:0],D[17:0],P[47:0]" */;
  input CLK;
  input [1:0]SEL;
  input [17:0]A;
  input [17:0]B;
  input [47:0]C;
  input [17:0]D;
  output [47:0]P;
endmodule
