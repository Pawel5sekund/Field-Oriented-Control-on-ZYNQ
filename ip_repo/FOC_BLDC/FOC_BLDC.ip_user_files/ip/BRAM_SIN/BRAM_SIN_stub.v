// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Wed Jun 29 20:22:01 2022
// Host        : LAPTOP-QKPB5NLF running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top BRAM_SIN -prefix
//               BRAM_SIN_ BRAM_SIN_stub.v
// Design      : BRAM_SIN
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *)
module BRAM_SIN(clka, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,addra[10:0],douta[11:0]" */;
  input clka;
  input [10:0]addra;
  output [11:0]douta;
endmodule
