// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Thu Dec 21 19:06:49 2023
// Host        : LAPTOP-PAWEL running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top ebit_z7010_top_axi_gpio_0_5 -prefix
//               ebit_z7010_top_axi_gpio_0_5_ ebit_z7010_top_axi_gpio_0_4_sim_netlist.v
// Design      : ebit_z7010_top_axi_gpio_0_4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ebit_z7010_top_axi_gpio_0_5_GPIO_Core
   (gpio_io_o,
    ip2bus_wrack_i,
    ip2bus_rdack_i,
    D,
    rst,
    s_axi_aclk,
    bus2ip_cs,
    \Not_Dual.gpio_Data_Out_reg[0]_0 ,
    bus2ip_rnw,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ,
    Bus_RNW_reg,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg );
  output [0:0]gpio_io_o;
  output ip2bus_wrack_i;
  output ip2bus_rdack_i;
  output [1:0]D;
  input rst;
  input s_axi_aclk;
  input bus2ip_cs;
  input \Not_Dual.gpio_Data_Out_reg[0]_0 ;
  input bus2ip_rnw;
  input \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  input Bus_RNW_reg;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;

  wire Bus_RNW_reg;
  wire [1:0]D;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire GPIO_xferAck_i;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1[31]_i_1_n_0 ;
  wire \Not_Dual.gpio_Data_Out_reg[0]_0 ;
  wire bus2ip_cs;
  wire bus2ip_rnw;
  wire [0:0]gpio_io_o;
  wire gpio_xferAck_Reg;
  wire iGPIO_xferAck__0;
  wire ip2bus_rdack_i;
  wire ip2bus_wrack_i;
  wire [31:31]reg1;
  wire rst;
  wire s_axi_aclk;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1[31]_i_1 
       (.I0(gpio_io_o),
        .I1(gpio_xferAck_Reg),
        .I2(bus2ip_cs),
        .I3(GPIO_xferAck_i),
        .I4(bus2ip_rnw),
        .O(\Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1[31]_i_1_n_0 ));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1[31]_i_1_n_0 ),
        .Q(reg1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Not_Dual.gpio_Data_Out_reg[0]_0 ),
        .Q(gpio_io_o),
        .R(rst));
  FDRE gpio_xferAck_Reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(GPIO_xferAck_i),
        .Q(gpio_xferAck_Reg),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    iGPIO_xferAck
       (.I0(bus2ip_cs),
        .I1(gpio_xferAck_Reg),
        .I2(GPIO_xferAck_i),
        .O(iGPIO_xferAck__0));
  FDRE iGPIO_xferAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iGPIO_xferAck__0),
        .Q(GPIO_xferAck_i),
        .R(rst));
  LUT5 #(
    .INIT(32'h00001400)) 
    \ip2bus_data_i_D1[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0011000011400000)) 
    \ip2bus_data_i_D1[31]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(reg1),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ip2bus_rdack_i_D1_i_1
       (.I0(GPIO_xferAck_i),
        .I1(bus2ip_rnw),
        .O(ip2bus_rdack_i));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ip2bus_wrack_i_D1_i_1
       (.I0(GPIO_xferAck_i),
        .I1(bus2ip_rnw),
        .O(ip2bus_wrack_i));
endmodule

module ebit_z7010_top_axi_gpio_0_5_address_decoder
   (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    Bus_RNW_reg,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    s_axi_wdata_0_sp_1,
    ip2bus_rdack_i_D1_reg,
    ip2bus_wrack_i_D1_reg,
    Q,
    s_axi_aclk,
    \Not_Dual.gpio_Data_Out_reg[0] ,
    bus2ip_rnw,
    s_axi_wdata,
    gpio_io_o,
    s_axi_aresetn,
    ip2bus_rdack_i_D1,
    s_axi_arready,
    s_axi_arready_0,
    ip2bus_wrack_i_D1,
    s_axi_awready);
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  output Bus_RNW_reg;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  output s_axi_wdata_0_sp_1;
  output ip2bus_rdack_i_D1_reg;
  output ip2bus_wrack_i_D1_reg;
  input Q;
  input s_axi_aclk;
  input [2:0]\Not_Dual.gpio_Data_Out_reg[0] ;
  input bus2ip_rnw;
  input [1:0]s_axi_wdata;
  input [0:0]gpio_io_o;
  input s_axi_aresetn;
  input ip2bus_rdack_i_D1;
  input s_axi_arready;
  input [3:0]s_axi_arready_0;
  input ip2bus_wrack_i_D1;
  input s_axi_awready;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_i_1_n_0;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire [2:0]\Not_Dual.gpio_Data_Out_reg[0] ;
  wire Q;
  wire bus2ip_rnw;
  wire ce_expnd_i_0;
  wire ce_expnd_i_1;
  wire ce_expnd_i_2;
  wire ce_expnd_i_3;
  wire cs_ce_clr;
  wire \gpio_core_1/gpio_Data_Out0 ;
  wire [0:0]gpio_io_o;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire [3:0]s_axi_arready_0;
  wire s_axi_awready;
  wire [1:0]s_axi_wdata;
  wire s_axi_wdata_0_sn_1;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(bus2ip_rnw),
        .I1(Q),
        .I2(Bus_RNW_reg),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg),
        .R(1'b0));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_3),
        .Q(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .R(cs_ce_clr));
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(\Not_Dual.gpio_Data_Out_reg[0] [0]),
        .I1(\Not_Dual.gpio_Data_Out_reg[0] [1]),
        .O(ce_expnd_i_2));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_2),
        .Q(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_1),
        .Q(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .R(cs_ce_clr));
  LUT3 #(
    .INIT(8'hEF)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(ip2bus_rdack_i_D1_reg),
        .I2(s_axi_aresetn),
        .O(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2 
       (.I0(\Not_Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\Not_Dual.gpio_Data_Out_reg[0] [0]),
        .O(ce_expnd_i_0));
  FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_0),
        .Q(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .R(cs_ce_clr));
  ebit_z7010_top_axi_gpio_0_5_pselect_f \MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\Not_Dual.gpio_Data_Out_reg[0] [1:0]),
        .ce_expnd_i_3(ce_expnd_i_3));
  ebit_z7010_top_axi_gpio_0_5_pselect_f__parameterized1 \MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] (\Not_Dual.gpio_Data_Out_reg[0] [1:0]),
        .ce_expnd_i_1(ce_expnd_i_1));
  LUT5 #(
    .INIT(32'h000000E0)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I1(Q),
        .I2(s_axi_aresetn),
        .I3(ip2bus_rdack_i_D1_reg),
        .I4(ip2bus_wrack_i_D1_reg),
        .O(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ));
  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ),
        .Q(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \Not_Dual.gpio_Data_Out[0]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Not_Dual.gpio_Data_Out_reg[0] [1]),
        .I3(s_axi_wdata[1]),
        .I4(\gpio_core_1/gpio_Data_Out0 ),
        .I5(gpio_io_o),
        .O(s_axi_wdata_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \Not_Dual.gpio_Data_Out[0]_i_2 
       (.I0(\Not_Dual.gpio_Data_Out_reg[0] [1]),
        .I1(bus2ip_rnw),
        .I2(\Not_Dual.gpio_Data_Out_reg[0] [0]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I4(\Not_Dual.gpio_Data_Out_reg[0] [2]),
        .O(\gpio_core_1/gpio_Data_Out0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    s_axi_arready_INST_0
       (.I0(ip2bus_rdack_i_D1),
        .I1(s_axi_arready),
        .I2(s_axi_arready_0[2]),
        .I3(s_axi_arready_0[1]),
        .I4(s_axi_arready_0[3]),
        .I5(s_axi_arready_0[0]),
        .O(ip2bus_rdack_i_D1_reg));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    s_axi_wready_INST_0
       (.I0(ip2bus_wrack_i_D1),
        .I1(s_axi_awready),
        .I2(s_axi_arready_0[2]),
        .I3(s_axi_arready_0[1]),
        .I4(s_axi_arready_0[3]),
        .I5(s_axi_arready_0[0]),
        .O(ip2bus_wrack_i_D1_reg));
endmodule

(* C_ALL_INPUTS = "0" *) (* C_ALL_INPUTS_2 = "0" *) (* C_ALL_OUTPUTS = "1" *) 
(* C_ALL_OUTPUTS_2 = "0" *) (* C_DOUT_DEFAULT = "0" *) (* C_DOUT_DEFAULT_2 = "0" *) 
(* C_FAMILY = "zynq" *) (* C_GPIO2_WIDTH = "32" *) (* C_GPIO_WIDTH = "1" *) 
(* C_INTERRUPT_PRESENT = "0" *) (* C_IS_DUAL = "0" *) (* C_S_AXI_ADDR_WIDTH = "9" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_TRI_DEFAULT = "-1" *) (* C_TRI_DEFAULT_2 = "-1" *) 
(* downgradeipidentifiedwarnings = "yes" *) (* ip_group = "LOGICORE" *) 
module ebit_z7010_top_axi_gpio_0_5_axi_gpio
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    ip2intc_irpt,
    gpio_io_i,
    gpio_io_o,
    gpio_io_t,
    gpio2_io_i,
    gpio2_io_o,
    gpio2_io_t);
  (* sigis = "Clk" *) input s_axi_aclk;
  (* sigis = "Rst" *) input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  (* sigis = "INTR_LEVEL_HIGH" *) output ip2intc_irpt;
  input [0:0]gpio_io_i;
  output [0:0]gpio_io_o;
  output [0:0]gpio_io_t;
  input [31:0]gpio2_io_i;
  output [31:0]gpio2_io_o;
  output [31:0]gpio2_io_t;

  wire \<const0> ;
  wire AXI_LITE_IPIF_I_n_12;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire \I_SLAVE_ATTACHMENT/rst ;
  wire bus2ip_cs;
  wire bus2ip_rnw;
  wire [0:0]gpio_io_o;
  wire [0:31]ip2bus_data;
  wire [0:31]ip2bus_data_i_D1;
  wire ip2bus_rdack_i;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_wrack_i;
  wire ip2bus_wrack_i_D1;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [30:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wvalid;

  assign gpio2_io_o[31] = \<const0> ;
  assign gpio2_io_o[30] = \<const0> ;
  assign gpio2_io_o[29] = \<const0> ;
  assign gpio2_io_o[28] = \<const0> ;
  assign gpio2_io_o[27] = \<const0> ;
  assign gpio2_io_o[26] = \<const0> ;
  assign gpio2_io_o[25] = \<const0> ;
  assign gpio2_io_o[24] = \<const0> ;
  assign gpio2_io_o[23] = \<const0> ;
  assign gpio2_io_o[22] = \<const0> ;
  assign gpio2_io_o[21] = \<const0> ;
  assign gpio2_io_o[20] = \<const0> ;
  assign gpio2_io_o[19] = \<const0> ;
  assign gpio2_io_o[18] = \<const0> ;
  assign gpio2_io_o[17] = \<const0> ;
  assign gpio2_io_o[16] = \<const0> ;
  assign gpio2_io_o[15] = \<const0> ;
  assign gpio2_io_o[14] = \<const0> ;
  assign gpio2_io_o[13] = \<const0> ;
  assign gpio2_io_o[12] = \<const0> ;
  assign gpio2_io_o[11] = \<const0> ;
  assign gpio2_io_o[10] = \<const0> ;
  assign gpio2_io_o[9] = \<const0> ;
  assign gpio2_io_o[8] = \<const0> ;
  assign gpio2_io_o[7] = \<const0> ;
  assign gpio2_io_o[6] = \<const0> ;
  assign gpio2_io_o[5] = \<const0> ;
  assign gpio2_io_o[4] = \<const0> ;
  assign gpio2_io_o[3] = \<const0> ;
  assign gpio2_io_o[2] = \<const0> ;
  assign gpio2_io_o[1] = \<const0> ;
  assign gpio2_io_o[0] = \<const0> ;
  assign gpio2_io_t[31] = \<const0> ;
  assign gpio2_io_t[30] = \<const0> ;
  assign gpio2_io_t[29] = \<const0> ;
  assign gpio2_io_t[28] = \<const0> ;
  assign gpio2_io_t[27] = \<const0> ;
  assign gpio2_io_t[26] = \<const0> ;
  assign gpio2_io_t[25] = \<const0> ;
  assign gpio2_io_t[24] = \<const0> ;
  assign gpio2_io_t[23] = \<const0> ;
  assign gpio2_io_t[22] = \<const0> ;
  assign gpio2_io_t[21] = \<const0> ;
  assign gpio2_io_t[20] = \<const0> ;
  assign gpio2_io_t[19] = \<const0> ;
  assign gpio2_io_t[18] = \<const0> ;
  assign gpio2_io_t[17] = \<const0> ;
  assign gpio2_io_t[16] = \<const0> ;
  assign gpio2_io_t[15] = \<const0> ;
  assign gpio2_io_t[14] = \<const0> ;
  assign gpio2_io_t[13] = \<const0> ;
  assign gpio2_io_t[12] = \<const0> ;
  assign gpio2_io_t[11] = \<const0> ;
  assign gpio2_io_t[10] = \<const0> ;
  assign gpio2_io_t[9] = \<const0> ;
  assign gpio2_io_t[8] = \<const0> ;
  assign gpio2_io_t[7] = \<const0> ;
  assign gpio2_io_t[6] = \<const0> ;
  assign gpio2_io_t[5] = \<const0> ;
  assign gpio2_io_t[4] = \<const0> ;
  assign gpio2_io_t[3] = \<const0> ;
  assign gpio2_io_t[2] = \<const0> ;
  assign gpio2_io_t[1] = \<const0> ;
  assign gpio2_io_t[0] = \<const0> ;
  assign gpio_io_t[0] = \<const0> ;
  assign ip2intc_irpt = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \^s_axi_rdata [30];
  assign s_axi_rdata[30] = \^s_axi_rdata [30];
  assign s_axi_rdata[29] = \^s_axi_rdata [30];
  assign s_axi_rdata[28] = \^s_axi_rdata [30];
  assign s_axi_rdata[27] = \^s_axi_rdata [30];
  assign s_axi_rdata[26] = \^s_axi_rdata [30];
  assign s_axi_rdata[25] = \^s_axi_rdata [30];
  asTDEFn����l�c1n��- BF�+���x
��>z�"2�-{��'X�H^��r�Ѷ����A34�r�i�����
���Z`&{$%+�f;��L(W[e�k`���JϔЇr\�5���^L��P��.����[i��O���/����~(ϯ�6���HRf��ײ�j_x�QuN�뜃��n����B���\�P�5�|R;�~���]����4Х���Z�hD�o���n�Q�������GRJ�32�w�K�Dּ;\��(���>i��/��[�xb[Ύ���<L@]�@7J*P1�A��U��r:�N2����H�MՔ��;j#�y)���M���!���������w.�?�0fl3z�m.��=�Ib���"�]Yz!�j������n��@=�	�-�5��Š>��UJ��P���u��� ���q�G1��{ڷ�FqF�Ų={L;���q�T�����9��TU0�GEy�枰�UzT�`a����,hg� �$vd��٧l��]I.Έ@D��;0*� RQ9��=.r{��>S�g;ǌ�"N{`�8~�pb��!�7_$x�:��B�M�D�A�0f�n8�Bp��`;��:��#���4=a�?��l�n恩\\y���G�(�l��j/�]q�z�	t��4z����[��b�(<�&����0(��E;��;��)��1{M:����Yw����(�)�h�DP?�ɹq�ի�w�.�l�s���5ϱ�w
�H�jTa���BHD�'(�S����Bz<KM�h���!8�&� 8"�o'p��3~�ؙPs�+��%�u�W�kA�t�+-�R}�"D���ZN�z�{:�xl�|*�g�/���N��y��h2Bރ&�IW#Gj
��?rF�5W����0Q���"����ܜu�_*���l�\b�� �f����f��O�Dq*��#�F�u�	�5`L�Sfc��/9�(Q������b��
7�Od;я�����^n�dR�W8����H� ����<V,`>�_���FFF�l�Ȝ�	��CB�ǒ������U^����F��G
�x_+��#B�b|`������i�[7�t��Ő������B�M^�Tz�`éY˱O0����;C@��s�h��nj(��ţ���:ɑi�����u.���&P\��7r{�b�N�ǂ0���8���U۞P0HDu"�A1:7Ѳ�Ζ*Νݛc;��ޑ2��T}�v'Q��B�L����-�EPrJ��4�܀�m�Y8�V�Dk�P�k�ƍ�����%��� �~ZtJ%���͉nx����U�U�*8�;�VVkɁ:d?�����CLL=����������UBDM��u�AHJ�uD%��p�Y|Dz�Wn��e�K1�B��8�ˠ�n�[z�2��<�_�M�F���I(-�X^�MtA��u�ʫ���sD��S� �H�r@�����2̞*���F����R~���d���o�Ks/��xK �?��[S��,��c��_7���P'�j�*�%�L��mb��@���5m7ʵL�����O6d�(���� ��9S�:Y��`�T-���<\�D���M���,U�<���h�6��Fgۏj�F^�U���
8�;܅��!��7��ܤ)�皩���䬗 .9��?�<`��L �7-�],dp�TAMB�B���KGW�|8�9c��;��D�!R�Yh��֛[��1���[`�єB��)o��9��%�{HT��w�$O6�ez.Y��8��7����a��j1O,���z��S�dM�=���̄��L8��Т�y�)4����~g��� ���(nԈ_�@�%ڴ@����b��2��?<3ȍ��Y��w�.6��'	�q���6ߗ��_$�<�%��=�`١���p Ys���bj`tZ<��X�pD �r�����R{����T�\��#��5�����#<G�t�G@ui
�ڒ�����-�	�8k�����a[��φ��C���(6��'�mu���U�c]�$���/S���A�4.��[~������yױ��O(�+_����\��'D�莁��O�p�N�)ّ�K��ɖ��m��2xɒ-{�h����&,�LY�͔>�ѨH%��MO��A}U+��'~��$]@�q�̛a+�����G���\���ǵx�}��l���D
��i��f7!�v��cH��h�{2�������&^t4uVUb�8u���r����o�8��!D/��P'TqP�5�i�c�&#�
�/'G���I"��#)Q
̏7�5�Y�	�Я��a�l��S¿��W��kE�=�j
x,����J�+�&ݽ�{�T���aK`l0�)��>d�&]�6��TuK����q�'��Z��aɝE���9$�8!%.H�2g�ʲ˥jW� �(%B�3��`�����:�=���i��ǀy���ٲ�Y���km`d�`$Kvl��� ����'��q�S�>�h�! �`6a[�������>�Pĕ�M3,9��o�i�4O��7���e�1vN/d�]��&���4�^a]:�$;��\k֥��)�[0�z���	��U���y�ö���V,��0��jQz�ě5��P$ �2�UЅ:+晦��8��B�\_��"6�˓����s4<oȻ��H���Ed�[�����b~ʼ�J9�.�:Z9� )�����+���Ўb<�[�Ƒ��w<H��Q^"�:�f����a~���Ps1Y�-c�kp�&c��d�x[�"�ɱ�H��O��+��0w7S��mxⳡ����V�V�R�"y���ﲞ�x�>������>�M�UH�;����(X'�m��T�]�p �Ɵ������@��d�l�LR?����s�m�;�i�y'���ϻ	��,(p
�{F�l��э|��ֺ���ܜz2�eUC��~Bs�2����_�F-`�$��}Հ2������8/�����\��$^u@�Gg�LO�3�W�OS����K�b:Vo��q��'W��<v���k�ʳ�(�~�k`���
��)|Y���J�h"���#2O!��"feϦe���Rd|�;�(_���0��M��)�ՍE����Y�6��Wx`�I������Y�0�{d�(q��}m�0�Q��sC(����U�Ӵ��s�.U�����ߴ}gKf��ǣ%�`�$Ψ��S�2c��zPfF�k�M�8�Q���e�g�T#t���Ze�d}�0?��A�Aq�eI�K�*m�5R:�Gӳ�4�4&��nY^)j�Y���"fVUج��bN�,��ϱ{�A�e�/��X=��S0����@߳E�<L�=�6�V�XSv���7�
V��@h�F"�z�<Ar��TpZ��6�9d��X.��A��{l��
�F�VyU�hN��!r��e��\�b�PS���Ov%O�-a������춫ڴF��4*�3�;�ŭ [?��+7��o���C�/*E�n��f�������!Ҋ��C��CYe�C�Y���]���{�����!(�&u��e�V=�w/6���2n��޴�A=[9��	�=fj��I�M�һ�f-�X����#��<|�-�k\6{-�D�Nai�aF�}�eh�'S3�r���j�z���K4��5,��*��p����y0�,����9�(-롦j�nGzמݚ���;Z�t˛����^�������kpY���=Mp� ��o1�r������-������s�67�V$�����P���	�:��Y�nΣ��&^鬆���)ł���0`3�Gd�g6��~>��;E�c����B�����3�ZoR�e������ƴ�����(����}�䭜�O�n�g�[Y�"{�Ӫ��F�緤��_9���b�s�8��b��{<}�aS�G�+���xZ)]x׋~Ek��M4��Qg�EJG�2L7��44#C�	-Q1�Sl��1�\=FKRGo�<kCJQ�x�V�]p��N����	�Ou)/�l����$�\]��y�tj<�qJQQs>L �)	fW��t.z��2w��	:|�͢L/�\�����g+�`��?h]a���b�9y5vrQl�'�b��p�����1�/��`��,���V��>����R�pH�f���^i��Р|�nJ/�lH#+׶}�\8�&��4�ۓO�	�� bD2n�x�GDُ`k�w��E�t�v����
�鮙>SL���u��[�� �Me&v�s�s������X�#O�)�4kfI�����P�U &<�ɐ�}4�T�wN����-���U^���j�n謃�F)���p��wz�]�'�?0\�5�O�ى&��U��)o�-��#L]�9h��y���Ѽ�Jȭ�.�'q��~r�y0*���oh�P �o���3|d����v������bͶ�ĥ�Q	�N�S�ז ;�!�h�6jU�ƻ������ ?§�7|]�`=�ˎ�`*�X�|]F%j�;7���o���b�b���'�Nvb��.փՀx� �����{�v����GѳtE��o\��q�o�JO�����O�P�?���RA"u|�!3&s(QLР`l�����Z")��#�e�m�'�>��ؚ��u��p���R�wNکSO�����*�� Ӂ�B�c�l�E;����6��\"�^@GA�iL��Ў�ן����A���Y�y�h�Sߛ'c�cxͶ��o���Kb�H�0�%ϣ��3
D���A}�]Q��P��q�tm��:{�\^":j'lӑ��ö�0
v�a���iUL�6Ӗ��T]�r���f�iTG�.��]�O�����v2�jmx�#�W�Ϭo�n�`�R��P;��B��5�k�����t>�RS+J�;�)�S� �f�Q���g�y�!���!f���g�����7��d}d�vqv�f�持t�^�1����=�2y���Z=z:��O�ԑ����B�64${a�ڷ�d�_�����BbkS�͢۳�i��a¼ZBkqX�[|݉Y#XnvT���}�X���2U�)С�K@�Y5[x���ʻ �F��z$�P~B����c�ٗ�Ό��^�6]y�*�{
m�"���*%�q1_Uz���Ұ{��� ��d�,]2��i��z����$U3��d���'\���7e@�v0lR ��n�y)lg߇� ���A*�j�yf�M�|>$��;���:�A�ˢ%@
���Q�����Y���]#h���qN[�m��T��ئ���^"4�B�'wp�C���\!�#�+N�%�=o?�V,�Ȯ?��`��*P�,��������Z^:��@��p��^[�_y�d���1f�?�p}�ΐ?��1�^�7�� qLK�-�c�D�����kM'�؃eW�얭�v��wK���;�^@(�a:4��l+,��w�D���nJ�~T�8�s�F�)�v�b�����pMܿ�D+G�E��ZN�uٶ�E_�9������S�W�B��v��ŧ��tBcNQ�3DNQ�����(`6�XRP:�N���Eǂ�^f��$1��|���$x�;05S,��j=x�
�f��D�l�����7�'����$�}�S�n�����TM�2Z����!�3ï���pa���!x��\���BX1�� 7�^�U�v>�%���?SެV��3wQ�	��ɀɩ��@�OA�M4�T�(̱�+���5�h�8ü�%C������ap ͩ^i��������N|5��J�{O-��r�)�T��]@��Ϝ]��t������Zb�B�>�U�U��ռN��*�Y9��|ܗd�9>�Œ4����ʨI�֚��S6TFinQ#���M韉P,$8��[YV�ʳ�I$�J}W�uf�u�ĵ��;�
&�=cw#Bv��z�~�A]L� 3b��c��쁝UxG�6%	����l�,'��q�YUA8�Gn�P�d%����3R��y�T�Sjm�*\)y'm��E�8BV�˿P~p:Y��|#���N
@�� �����_3Z)e�3����M�������c%}��k*�����}�6ys��F��- �=�ɔ��o�Cv���?z��_͆.'yP������Y�c��۳�Ey@*�RїG�7$n��֮��֮�y����@�,��Y���&k��ؗw�����5���k)'ĕ^�J {��粯�o��ltۉ�o<�Z3��������G04�bl5(s�੬��~wmSL�㝘Y����.Z�ۀW~�ߺkBp��-��X���� b��
j���sf3�@L�<�.��bQ����N	��j������/]�sK�� 6�3�Β���
��),>��x������E�]!�K	���>Bt����N߷�%1WpP}�mݩ�BX+�G�>j�Z��m��́w����}W���%��$�6["�MC�,��
���F*�̩݌=y�<(�q�kA;�`��%m���i_���$���v��|��R�����Ҙ���)��O�P>Tb�W����;��פ}�x��={�K�ϟ�:�@ba��	����G4�z��	F��Fd���B-�D�d�z:O�n8��K{t�OVj��k��t)�[��P�3��n��,�ZJ����8x���>�A����hV\�|ݒ��Q�$ �X��)~fT��Yijsp��(��Y-"�O��6.�o��/��C�������۹�h_}���, ���m˩�SE�3������%p�T0���h.n�{�W�k�s2p�aB!�����.�!��)��ڥp.y'z�E�@9�k��\�VU���8�2L/y�K�/�'����`Q��?L7����2��N��/c4t�}������!�D�(,��"˔^�	ur0ź2i�͒B;�'M��XIMk��i��d���q�������`W��2��Uؖ	�����E���E�3�6b�6Nֿ�N�&uZMU�Ƅ��0�П�d����lf<�cфڢs�ßAW���k�d����W����3ɺ�`��t�|5Y"�wV�VCA��)c�)��۸�U�xZY���iVR��ꭦ*��x���(�� {��89�E
�<G���4�S����D�oE\I�Z��ҫ��{�}|�Er&�hMjK���^�R�o���5���g����?�4�HB�B���Q��7�O��_`t&��`L�)Q?:��$�����v���aWQ*��Pp��2�m_Z=�]]�9�x�_��y�P���엍!3�� �<Jd[?��'�X�T���6-V �J�0N��D9M�����}�GWb�2%�v�}�ᡅb���꣺�z�]��	g�m3B&�@����U|��Ҫ�W`M¸1�T�QHH�B�`:|�x�>��t��4	҅��^ɫ����0w�^%��4TuѺB���G�7�}�fn�e�2�����Y��9�U�#p�(�W�O���B���8�[
C�!<���n�P���T��i/K{�EI('�9U�v8�%w�'L̀/��kIz�@�4`�z,q��E_�s�PRz3lr�w3���mOCa�'|N˷�����E�Ȁ�":-�������~%���Ě��c�Z�b�>���υ�&Öm�@*���*%;���4"9I � 1 mCLeU��8@�>��;�%ԋ�""n��!��kW�<$�G�������d�v�0X���jkOs��5w���^�k�A47��<��KP��}�� n��}�'lMP~̭~\�փ!��N\�6��C��C�|�6lu�X.f��i��lZT,�� p��s�z�gMl"rIp��MVJ_�02I�P{�@�Ya�R~�_�O������٘@Ñ-(}�D��dt~$����U:Z*$9!�,��
TZ���x��#g(�����)qm�g9�m�ϟ�,W�Fа~�5]�x����{#�U��7-�.������.[��W]<MO��}Opt�/������ޑ�B�Y�#�ܻ��T՗f��(�����UL����	����Q<��&��+��>;���q���x�����`3 �r�����]�}r��hwj�F��LEs��|�C��'��6�F�Ŭ��Fi11���.8Z�=����\F�Vز���| ��H!�)_
��s6�@�o��+�FO521�{��jm� %FD�����_9����(/ɑ7p��]�>h�!B���H�&��~�Ot9W���s�g[7���1M�؇yLQ ��R�'�*���@�����r;�����#3���OD�N�J�6�/G�U�CI*���rk$p#�Јb��xA[B�3�p�y�^ �� �՘c̀��9��A�Ǥw1�����f����YlQ*��I
�y#���� >���M	�����������=��ǽ���q#�yK�g������S�!�u{Y:�J<�e���	o۔�qn��d;�{-�ܕ�X�w4����}Sܬ�P�+���^�$�%�>nQ
�n�^Z�r֪�Dd�B�a���W���66f�J��B���K6j��SE�[�ˡ��f�\BL�\ ���8a�oOz3��C:xf�<}�'-y������R����E��<\�srQ(��,ծK0cĳ�}�S����[<��E��3��p�V�q#�Ɔ��6�֐ʿ�|��� X!�JY�8z
�;�b��;���š��9 4[����ۀ�y/��X<��ƹ����(���U�8�T��鶉�!�75����K	��߭l�%�~$h�Yұ}�Q� χ���~�����J^�����;�W%�l�
FM��oO,��)#=�g.�Ų���b&����8��+x*I���ł����g��:{&�]����ǭr���1�KE��gDи)���h�^|V2�/�X��5����%�L��H�tR�؉n�p�w@ۺ"�� wh،����4c7��c�wN����o�Ӭo�kv;�4��ʷ~_˃�]��-�2.���jC��d�~��<G�S��	�2��z�s3��׍�;=����X�MK�"'R��J���E�ZP��y�/�#�k1�Z
����S�"�']F� KZ�<����-H�[%<oP7��gK�NJ�����ikτ�;9x[>��2�j�c��g@�]����j[R�\dNL�`���ٸ^��:�#O������J"��T��d�a	0��|2��0F��GC��0ƊE����'��[�4L�p��gŒ���.�#&����s�������!ɷ�������� `��vl�Y��+�F؉�YΜ$s�̨,$�Sd�7�Ȧ� �����?}z S��������XJ���hs�h�5,Єj|t+�d#r[�fq���d!��j'[Ur��p9��Ĵ�zj�Tm�lߑ?��H��֨��9��Q�f_Q�7%��[��A�4��73��0��i�4�������'�悆��b{��(��|�eTR�yk��p��G$'g	{�6���(�O�{!�j�5,�	-��$k�;��g_:j��F>B|�3�T�[���'��yM���lQ� �1�״w{�Z@9pw�L���|Z�����1�4��bM�J9���/��V�&@��(����qFX�i�ž���*A��%ZHk�k~L������'`s�Px��*�8v�����H��Âc}R?�� ���+h	˾L������" x�[��<�ଛ��������+�P1�ˊ�{�7����k�'��*��vȋ�v���(˺�z1-Z��Oi.P\�ѤA7�������*�����}a0�$@��XD��$������l��%�H�����Lc�g���|���  ���0n[g��@�ɉc�X��'��t�;]�n���X��xV든�>;*�tjI7��Z;�I����t�<�o��ۜj��~�ȸ��^I���E�^��!��q��n@q9M�PH���q̮�KgՏ�޹o�0�4R_�J�$�o9�Yw�~s���;N)$�0��6�"��l:��2r�����to����<�Ƙ�R�"�=��Jkm��C��@�)k��=�e����i�(y�?� �V}��3�M��7RB3�g5ڼ_p�%���s�`���.m�W0��\�/�L��^������6G0�B;�Ɯ��/b�=��&(��.�GV�� =�3�����x��p;�'�*�W��r��W��%��0Rh��6�?8)cj=�1�b���s��`��k�w�w����W��7xs1��@�aTR#v�qf����b����=K��Aͧ�2�{j-̊�D�X��8B��%(� �b�1H���sİ�r�K�T10-���?����GJ��U��������LJf7nG��Adp�B�D��kZtw*�dv�i��KFg|�T
g]S�"d�=ib'��[!����ޗ�x�` T�<��R�~9	,��(�X�2Y���C��f��d��%0|�m�{�d��b�#Uaz�ELeX�ʂZ�g�&k��܀��E�K������4;�.z$�!��w�l�ڸ�ļ�㜡S��`qX� ��M�;V�-p�ߵ�U�@�eޖ�@_{�h��� �|�n8�H���p�]�{D�����&v�N����7�IŴ/��/M��u:l� ~'��O�q����VP������� v��"���d�G��t��
夠Vc�RYfY���� ��Wp�D�4�re"q�|/�LƋ�Z��n����e|I�(-�i�چї@��8��<+e��Ɯ�e �!WD�'�������5 G��^�%Q����w5�%CS*��_�F��V~P�{���_����EORZ��﹜%&>��UDN�t?�̿��h4E�'i"�7	���s�+�����yuD���va�����j6���M���Eq�%/�Њ��Ohjf�M�c��R��e�z�?�3�H�ŧ�Jx8ב��D޵x��#�摏�\�<,�4�1J���`ne��ۧ������Z~���2^/�u1�L꒟�U̇����<��<5�egnb����t��E
,���D��T������4b~�M������}�<����I,�^N���}ɰ6x5��"��Z²�?�[���1���!ȳ��+����<J��3�GT����Ϟٶ[&&����~vu��6t���C8G-I�q2��.� b���Ȗ(Hzj��֚)�πU��cq����,� ��<|ӦS��3"'5t������ʡ�	y�|/�?��fKm���M�J؀6+o���͚D�[�=K#�nє0l�QW����J���fPGy��M�ӝ^Fr�`��fa����yʄ\��p٭̚B�����~����\;��v�{��i7��X�!|�D~u�1܅0��q<�&�;�ʖ�/?�3V��p,�0X����l��_
��2b���S׎3z_O�?� YL����QnFb��"�S�������F��l-#"�+�#�F:������wD�ə��T�x�;6�<�����CiŢv��F�e[���e϶��s"yW.�u����l3���񌯚���M�������I����G�Qr>uoe��Z�ʸ����Ŗ@�����O�^J����7����!i�6I?U��I�0^j۶�VW�-_�� ��X=�D9���B���z���<��g*�+�f=х�,C��?��5G6�V�opu'ïCZ����?�����>�j')u��T����{��/�[���
�i��a$�}K��J������ ό��4Ȳ�)��ѡ��~���
�#Y�+������y��X����6���+'c3M ���^����+7��xX�����tD$�!�3P�w
q���
�찜����z:������I��#��&�k�o<��B �a �X��k7�	U<Ĵm�u�c��x3��� ��$�\�� x����,5�c�Ƴ5��r�|;{I#/�J��|��[��PF��z1n���Op�D�;�,����7��Z��X�K_�G2� g��C�Ę���ͱ�$���c~J
���_��I�K9aA�.�F�2WM�`�P!��/o��A��0�ԾjxD����*�<8M�������wi =PM��S�� ����}V)j��2����y�����iӴj_V��:�]l`���\,N1#&D>XzL��_w��>�gJ\!r��=t��>��y0w�u�)���3ZZ�T%DyK�/P�\3�H�<�2Z"�b��9iR�M��A��
J�f77[zhykr�[ᗷ����L)��7a���m\�yA��'|]�-������2��zHC5!0=��B6�	wEB4������Є�yJ���\���`�2Z�QS�t]�����                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            s_rdack_i_D1,
    ip2bus_wrack_i_D1,
    s_axi_araddr,
    s_axi_awaddr);
  output [0:0]SS;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  output bus2ip_rnw;
  output Bus_RNW_reg;
  output s_axi_rvalid_i_reg_0;
  output s_axi_bvalid_i_reg_0;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  output ip2bus_rdack_i_D1_reg;
  output ip2bus_wrack_i_D1_reg;
  output s_axi_wdata_0_sp_1;
  output [1:0]s_axi_rdata;
  input s_axi_aclk;
  input s_axi_arvalid;
  input s_axi_rready;
  input s_axi_bready;
  input [1:0]s_axi_wdata;
  input [0:0]gpio_io_o;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [1:0]Q;
  input ip2bus_rdack_i_D1;
  input ip2bus_wrack_i_D1;
  input [2:0]s_axi_araddr;
  input [2:0]s_axi_awaddr;

  wire Bus_RNW_reg;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire [3:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire [1:0]Q;
  wire [0:0]SS;
  wire [0:6]bus2ip_addr;
  wire \bus2ip_addr_i[8]_i_1_n_0 ;
  wire bus2ip_rnw;
  wire clear;
  wire [0:0]gpio_io_o;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire is_read_i_1_n_0;
  wire is_read_reg_n_0;
  wire is_write_i_1_n_0;
  wire is_write_i_2_n_0;
  wire is_write_reg_n_0;
  wire p_0_in;
  wire [8:2]p_1_in;
  wire p_5_in;
  wire [3:0]plusOp;
  wire s_axi_aclk;
  wire [2:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [2:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bresp_i;
  wire s_axi_bvalid_i_i_1_n_0;
  wire s_axi_bvalid_i_reg_0;
  wire [1:0]s_axi_rdata;
  wire \s_axi_rdata_i[0]_i_1_n_0 ;
  wire \s_axi_rdata_i[31]_i_1_n_0 ;
  wire s_axi_rready;
  wire s_axi_rresp_i;
  wire s_axi_rvalid_i_i_1_n_0;
  wire s_axi_rvalid_i_reg_0;
  wire [1:0]s_axi_wdata;
  wire s_axi_wdata_0_sn_1;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire state1__2;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  LUT6 #(
    .INIT(64'hFFFF150015001500)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(state1__2),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ip2bus_rdack_i_D1_reg),
        .I3(s_axi_rresp_i),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(ip2bus_wrack_i_D1_reg),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F888FFFFF888)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(s_axi_bresp_i),
        .I2(s_axi_rresp_i),
        .I3(ip2bus_rdack_i_D1_reg),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(state1__2),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid_i_reg_0),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid_i_reg_0),
        .O(state1__2));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SS));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(SS));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(SS));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .O(plusOp[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .O(plusOp[3]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .R(clear));
  ebit_z7010_top_axi_gpio_0_5_address_decoder I_DECODER
       (.Bus_RNW_reg(Bus_RNW_reg),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .\Not_Dual.gpio_Data_Out_reg[0] ({bus2ip_addr[0],bus2ip_addr[5],bus2ip_addr[6]}),
        .Q(start2),
        .bus2ip_rnw(bus2ip_rnw),
        .gpio_io_o(gpio_io_o),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_rdack_i_D1_reg(ip2bus_rdack_i_D1_reg),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .ip2bus_wrack_i_D1_reg(ip2bus_wrack_i_D1_reg),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(is_read_reg_n_0),
        .s_axi_arready_0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ),
        .s_axi_awready(is_write_reg_n_0),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wdata_0_sp_1(s_axi_wdata_0_sn_1));
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_arvalid),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_arvalid),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \bus2ip_addr_i[8]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\bus2ip_addr_i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[8]_i_2 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_awaddr[2]),
        .I2(s_axi_arvalid),
        .O(p_1_in[8]));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(bus2ip_addr[6]),
        .R(SS));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(bus2ip_addr[5]),
        .R(SS));
  FDRE \bus2ip_addr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(bus2ip_addr[0]),
        .R(SS));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(s_axi_arvalid),
        .Q(bus2ip_rnw),
        .R(SS));
  LUT5 #(
    .INIT(32'h8BBB8888)) 
    is_read_i_1
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(state1__2),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(is_read_reg_n_0),
        .O(is_read_i_1_n_0));
  FDRE is_read_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_read_i_1_n_0),
        .Q(is_read_reg_n_0),
        .R(SS));
  LUT6 #(
    .INIT(64'h2000FFFF20000000)) 
    is_write_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(is_write_i_2_n_0),
        .I5(is_write_reg_n_0),
        .O(is_write_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    is_write_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_bready),
        .I2(s_axi_bvalid_i_reg_0),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid_i_reg_0),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(is_write_i_2_n_0));
  FDRE is_write_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_write_i_1_n_0),
        .Q(is_write_reg_n_0),
        .R(SS));
  LUT1 #(
    .INIT(2'h1)) 
    rst_i_1
       (.I0(s_axi_aresetn),
        .O(p_0_in));
  FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(SS),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_bvalid_i_i_1
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid_i_reg_0),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid_i_reg_0),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata_i[0]_i_1 
       (.I0(Q[0]),
        .I1(s_axi_rresp_i),
        .I2(s_axi_rdata[0]),
        .O(\s_axi_rdata_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata_i[31]_i_1 
       (.I0(Q[1]),
        .I1(s_axi_rresp_i),
        .I2(s_axi_rdata[1]),
        .O(\s_axi_rdata_i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_rdata_i[0]_i_1_n_0 ),
        .Q(s_axi_rdata[0]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_rdata_i[31]_i_1_n_0 ),
        .Q(s_axi_rdata[1]),
        .R(SS));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_rvalid_i_i_1
       (.I0(ip2bus_rdack_i_D1_reg),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid_i_reg_0),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid_i_reg_0),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(SS));
  LUT5 #(
    .INIT(32'h0FCAFFCA)) 
    \state[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(ip2bus_wrack_i_D1_reg),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(state1__2),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55FFFF0C5500FF0C)) 
    \state[1]_i_1 
       (.I0(state1__2),
        .I1(p_5_in),
        .I2(s_axi_arvalid),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(ip2bus_rdack_i_D1_reg),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_2 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .O(p_5_in));
  FDRE \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(SS));
  FDRE \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(SS));
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
