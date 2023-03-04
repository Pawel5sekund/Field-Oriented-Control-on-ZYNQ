// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Wed Mar  1 19:31:43 2023
// Host        : LAPTOP-QKPB5NLF running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_CORE_0_0_sim_netlist.v
// Design      : design_1_CORE_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CORE
   (daddr_out,
    resultAddr,
    den_out,
    CLK,
    drdy_in);
  output [4:0]daddr_out;
  output [6:0]resultAddr;
  output den_out;
  input CLK;
  input drdy_in;

  wire CLK;
  wire \DRP_read.daddr_actual[1]_i_1_n_0 ;
  wire \DRP_read.daddr_actual[3]_i_1_n_0 ;
  wire [4:0]\DRP_read.daddr_actual_reg ;
  wire [4:0]daddr_out;
  wire den_out;
  wire den_out_i_1_n_0;
  wire drdy_in;
  wire dwe_out0;
  wire [31:0]operation_selector;
  wire operation_selector1;
  wire operation_selector1_carry__0_n_0;
  wire operation_selector1_carry__0_n_1;
  wire operation_selector1_carry__0_n_2;
  wire operation_selector1_carry__0_n_3;
  wire operation_selector1_carry__1_n_0;
  wire operation_selector1_carry__1_n_1;
  wire operation_selector1_carry__1_n_2;
  wire operation_selector1_carry__1_n_3;
  wire operation_selector1_carry__2_n_2;
  wire operation_selector1_carry__2_n_3;
  wire operation_selector1_carry_i_1__0_n_0;
  wire operation_selector1_carry_i_1__1_n_0;
  wire operation_selector1_carry_i_1__2_n_0;
  wire operation_selector1_carry_i_1_n_0;
  wire operation_selector1_carry_i_2__0_n_0;
  wire operation_selector1_carry_i_2__1_n_0;
  wire operation_selector1_carry_i_2__2_n_0;
  wire operation_selector1_carry_i_2_n_0;
  wire operation_selector1_carry_i_3__0_n_0;
  wire operation_selector1_carry_i_3__1_n_0;
  wire operation_selector1_carry_i_3__2_n_0;
  wire operation_selector1_carry_i_3_n_0;
  wire operation_selector1_carry_i_4__0_n_0;
  wire operation_selector1_carry_i_4__1_n_0;
  wire operation_selector1_carry_i_4__2_n_0;
  wire operation_selector1_carry_i_4_n_0;
  wire operation_selector1_carry_i_5__0_n_0;
  wire operation_selector1_carry_i_5__1_n_0;
  wire operation_selector1_carry_i_5__2_n_0;
  wire operation_selector1_carry_i_5_n_0;
  wire operation_selector1_carry_i_6__0_n_0;
  wire operation_selector1_carry_i_6__1_n_0;
  wire operation_selector1_carry_i_6__2_n_0;
  wire operation_selector1_carry_i_6_n_0;
  wire operation_selector1_carry_i_7__0_n_0;
  wire operation_selector1_carry_i_7__1_n_0;
  wire operation_selector1_carry_i_7_n_0;
  wire operation_selector1_carry_i_8__0_n_0;
  wire operation_selector1_carry_i_8__1_n_0;
  wire operation_selector1_carry_i_8_n_0;
  wire operation_selector1_carry_i_9_n_0;
  wire operation_selector1_carry_n_0;
  wire operation_selector1_carry_n_1;
  wire operation_selector1_carry_n_2;
  wire operation_selector1_carry_n_3;
  wire [31:1]operation_selector2;
  wire operation_selector2_carry__0_n_0;
  wire operation_selector2_carry__0_n_1;
  wire operation_selector2_carry__0_n_2;
  wire operation_selector2_carry__0_n_3;
  wire operation_selector2_carry__1_n_0;
  wire operation_selector2_carry__1_n_1;
  wire operation_selector2_carry__1_n_2;
  wire operation_selector2_carry__1_n_3;
  wire operation_selector2_carry__2_n_0;
  wire operation_selector2_carry__2_n_1;
  wire operation_selector2_carry__2_n_2;
  wire operation_selector2_carry__2_n_3;
  wire operation_selector2_carry__3_n_0;
  wire operation_selector2_carry__3_n_1;
  wire operation_selector2_carry__3_n_2;
  wire operation_selector2_carry__3_n_3;
  wire operation_selector2_carry__4_n_0;
  wire operation_selector2_carry__4_n_1;
  wire operation_selector2_carry__4_n_2;
  wire operation_selector2_carry__4_n_3;
  wire operation_selector2_carry__5_n_0;
  wire operation_selector2_carry__5_n_1;
  wire operation_selector2_carry__5_n_2;
  wire operation_selector2_carry__5_n_3;
  wire operation_selector2_carry__6_n_2;
  wire operation_selector2_carry__6_n_3;
  wire operation_selector2_carry_n_0;
  wire operation_selector2_carry_n_1;
  wire operation_selector2_carry_n_2;
  wire operation_selector2_carry_n_3;
  wire [2:1]operation_selector__0;
  wire [2:0]operation_selector__1;
  wire [4:0]p_0_in;
  wire [6:0]plusOp;
  wire [6:0]resultAddr;
  wire resultAddr0;
  wire \resultAddr[6]_i_10_n_0 ;
  wire \resultAddr[6]_i_2_n_0 ;
  wire \resultAddr[6]_i_3_n_0 ;
  wire \resultAddr[6]_i_4_n_0 ;
  wire \resultAddr[6]_i_5_n_0 ;
  wire \resultAddr[6]_i_6_n_0 ;
  wire \resultAddr[6]_i_7_n_0 ;
  wire \resultAddr[6]_i_8_n_0 ;
  wire \resultAddr[6]_i_9_n_0 ;
  wire \resultInterface.operation_selector[0]_i_1_n_0 ;
  wire \resultInterface.operation_selector[1]_i_1_n_0 ;
  wire \resultInterface.operation_selector[31]_i_1_n_0 ;
  wire \resultInterface.operation_selector[31]_i_2_n_0 ;
  wire \resultInterface.resultAddr_actual[6]_i_2_n_0 ;
  wire [6:0]\resultInterface.resultAddr_actual_reg ;
  wire [3:0]NLW_operation_selector1_carry_O_UNCONNECTED;
  wire [3:0]NLW_operation_selector1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_operation_selector1_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_operation_selector1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_operation_selector1_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_operation_selector2_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_operation_selector2_carry__6_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \DRP_read.daddr_actual[0]_i_1 
       (.I0(\DRP_read.daddr_actual_reg [0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hE6666666)) 
    \DRP_read.daddr_actual[1]_i_1 
       (.I0(\DRP_read.daddr_actual_reg [1]),
        .I1(\DRP_read.daddr_actual_reg [0]),
        .I2(\DRP_read.daddr_actual_reg [2]),
        .I3(\DRP_read.daddr_actual_reg [3]),
        .I4(\DRP_read.daddr_actual_reg [4]),
        .O(\DRP_read.daddr_actual[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \DRP_read.daddr_actual[2]_i_1 
       (.I0(\DRP_read.daddr_actual_reg [0]),
        .I1(\DRP_read.daddr_actual_reg [1]),
        .I2(\DRP_read.daddr_actual_reg [2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hDAAAAAAA)) 
    \DRP_read.daddr_actual[3]_i_1 
       (.I0(\DRP_read.daddr_actual_reg [3]),
        .I1(\DRP_read.daddr_actual_reg [4]),
        .I2(\DRP_read.daddr_actual_reg [2]),
        .I3(\DRP_read.daddr_actual_reg [0]),
        .I4(\DRP_read.daddr_actual_reg [1]),
        .O(\DRP_read.daddr_actual[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \DRP_read.daddr_actual[4]_i_1 
       (.I0(\DRP_read.daddr_actual_reg [1]),
        .I1(\DRP_read.daddr_actual_reg [0]),
        .I2(\DRP_read.daddr_actual_reg [2]),
        .I3(\DRP_read.daddr_actual_reg [3]),
        .I4(\DRP_read.daddr_actual_reg [4]),
        .O(p_0_in[4]));
  FDRE #(
    .INIT(1'b0)) 
    \DRP_read.daddr_actual_reg[0] 
       (.C(CLK),
        .CE(operation_selector__1[0]),
        .D(p_0_in[0]),
        .Q(\DRP_read.daddr_actual_reg [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \DRP_read.daddr_actual_reg[1] 
       (.C(CLK),
        .CE(operation_selector__1[0]),
        .D(\DRP_read.daddr_actual[1]_i_1_n_0 ),
        .Q(\DRP_read.daddr_actual_reg [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DRP_read.daddr_actual_reg[2] 
       (.C(CLK),
        .CE(operation_selector__1[0]),
        .D(p_0_in[2]),
        .Q(\DRP_read.daddr_actual_reg [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \DRP_read.daddr_actual_reg[3] 
       (.C(CLK),
        .CE(operation_selector__1[0]),
        .D(\DRP_read.daddr_actual[3]_i_1_n_0 ),
        .Q(\DRP_read.daddr_actual_reg [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DRP_read.daddr_actual_reg[4] 
       (.C(CLK),
        .CE(operation_selector__1[0]),
        .D(p_0_in[4]),
        .Q(\DRP_read.daddr_actual_reg [4]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_DRP_read.operation_selector[0]_i_1 
       (.I0(operation_selector__0[2]),
        .I1(drdy_in),
        .O(operation_selector__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_DRP_read.operation_selector[2]_i_1 
       (.I0(drdy_in),
        .I1(operation_selector__0[2]),
        .I2(operation_selector__0[1]),
        .O(operation_selector__1[2]));
  (* FSM_ENCODED_STATES = "iSTATE:010,iSTATE0:100,iSTATE1:001" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_DRP_read.operation_selector_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector__1[0]),
        .Q(dwe_out0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:010,iSTATE0:100,iSTATE1:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_DRP_read.operation_selector_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(dwe_out0),
        .Q(operation_selector__0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:010,iSTATE0:100,iSTATE1:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_DRP_read.operation_selector_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector__1[2]),
        .Q(operation_selector__0[2]),
        .R(1'b0));
  FDRE \daddr_out_reg[0] 
       (.C(CLK),
        .CE(dwe_out0),
        .D(\DRP_read.daddr_actual_reg [0]),
        .Q(daddr_out[0]),
        .R(1'b0));
  FDRE \daddr_out_reg[1] 
       (.C(CLK),
        .CE(dwe_out0),
        .D(\DRP_read.daddr_actual_reg [1]),
        .Q(daddr_out[1]),
        .R(1'b0));
  FDRE \daddr_out_reg[2] 
       (.C(CLK),
        .CE(dwe_out0),
        .D(\DRP_read.daddr_actual_reg [2]),
        .Q(daddr_out[2]),
        .R(1'b0));
  FDRE \daddr_out_reg[3] 
       (.C(CLK),
        .CE(dwe_out0),
        .D(\DRP_read.daddr_actual_reg [3]),
        .Q(daddr_out[3]),
        .R(1'b0));
  FDRE \daddr_out_reg[4] 
       (.C(CLK),
        .CE(dwe_out0),
        .D(\DRP_read.daddr_actual_reg [4]),
        .Q(daddr_out[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    den_out_i_1
       (.I0(dwe_out0),
        .I1(operation_selector__0[1]),
        .I2(den_out),
        .O(den_out_i_1_n_0));
  FDRE den_out_reg
       (.C(CLK),
        .CE(1'b1),
        .D(den_out_i_1_n_0),
        .Q(den_out),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 operation_selector1_carry
       (.CI(1'b0),
        .CO({operation_selector1_carry_n_0,operation_selector1_carry_n_1,operation_selector1_carry_n_2,operation_selector1_carry_n_3}),
        .CYINIT(operation_selector1_carry_i_1__1_n_0),
        .DI({operation_selector1_carry_i_2_n_0,operation_selector1_carry_i_3_n_0,operation_selector1_carry_i_4_n_0,operation_selector1_carry_i_5_n_0}),
        .O(NLW_operation_selector1_carry_O_UNCONNECTED[3:0]),
        .S({operation_selector1_carry_i_6_n_0,operation_selector1_carry_i_7_n_0,operation_selector1_carry_i_8_n_0,operation_selector1_carry_i_9_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 operation_selector1_carry__0
       (.CI(operation_selector1_carry_n_0),
        .CO({operation_selector1_carry__0_n_0,operation_selector1_carry__0_n_1,operation_selector1_carry__0_n_2,operation_selector1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({operation_selector1_carry_i_1_n_0,operation_selector1_carry_i_2__0_n_0,operation_selector1_carry_i_3__0_n_0,operation_selector1_carry_i_4__0_n_0}),
        .O(NLW_operation_selector1_carry__0_O_UNCONNECTED[3:0]),
        .S({operation_selector1_carry_i_5__0_n_0,operation_selector1_carry_i_6__0_n_0,operation_selector1_carry_i_7__0_n_0,operation_selector1_carry_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 operation_selector1_carry__1
       (.CI(operation_selector1_carry__0_n_0),
        .CO({operation_selector1_carry__1_n_0,operation_selector1_carry__1_n_1,operation_selector1_carry__1_n_2,operation_selector1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({operation_selector1_carry_i_1__0_n_0,operation_selector1_carry_i_2__1_n_0,operation_selector1_carry_i_3__1_n_0,operation_selector1_carry_i_4__1_n_0}),
        .O(NLW_operation_selector1_carry__1_O_UNCONNECTED[3:0]),
        .S({operation_selector1_carry_i_5__1_n_0,operation_selector1_carry_i_6__1_n_0,operation_selector1_carry_i_7__1_n_0,operation_selector1_carry_i_8__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 operation_selector1_carry__2
       (.CI(operation_selector1_carry__1_n_0),
        .CO({NLW_operation_selector1_carry__2_CO_UNCONNECTED[3],operation_selector1,operation_selector1_carry__2_n_2,operation_selector1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,operation_selector1_carry_i_1__2_n_0,operation_selector1_carry_i_2__2_n_0,operation_selector1_carry_i_3__2_n_0}),
        .O(NLW_operation_selector1_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,operation_selector1_carry_i_4__2_n_0,operation_selector1_carry_i_5__2_n_0,operation_selector1_carry_i_6__2_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    operation_selector1_carry_i_1
       (.I0(operation_selector2[16]),
        .I1(operation_selector2[17]),
        .O(operation_selector1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    operation_selector1_carry_i_1__0
       (.I0(operation_selector2[24]),
        .I1(operation_selector2[25]),
        .O(operation_selector1_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    operation_selector1_carry_i_1__1
       (.I0(operation_selector2[1]),
        .I1(operation_selector[0]),
        .O(operation_selector1_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    operation_selector1_carry_i_1__2
       (.I0(operation_selector2[30]),
        .I1(operation_selector2[31]),
        .O(operation_selector1_carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    operation_selector1_carry_i_2
       (.I0(operation_selector2[8]),
        .I1(operation_selector2[9]),
        .O(operation_selector1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    operation_selector1_carry_i_2__0
       (.I0(operation_selector2[14]),
        .I1(operation_selector2[15]),
        .O(operation_selector1_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    operation_selector1_carry_i_2__1
       (.I0(operation_selector2[22]),
        .I1(operation_selector2[23]),
        .O(operation_selector1_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    operation_selector1_carry_i_2__2
       (.I0(operation_selector2[28]),
        .I1(operation_selector2[29]),
        .O(operation_selector1_carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    operation_selector1_carry_i_3
       (.I0(operation_selector2[6]),
        .I1(operation_selector2[7]),
        .O(operation_selector1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    operation_selector1_carry_i_3__0
       (.I0(operation_selector2[12]),
        .I1(operation_selector2[13]),
        .O(operation_selector1_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    operation_selector1_carry_i_3__1
       (.I0(operation_selector2[20]),
        .I1(operation_selector2[21]),
        .O(operation_selector1_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    operation_selector1_carry_i_3__2
       (.I0(operation_selector2[26]),
        .I1(operation_selector2[27]),
        .O(operation_selector1_carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    operation_selector1_carry_i_4
       (.I0(operation_selector2[4]),
        .I1(operation_selector2[5]),
        .O(operation_selector1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    operation_selector1_carry_i_4__0
       (.I0(operation_selector2[10]),
        .I1(operation_selector2[11]),
        .O(operation_selector1_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    operation_selector1_carry_i_4__1
       (.I0(operation_selector2[18]),
        .I1(operation_selector2[19]),
        .O(operation_selector1_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    operation_selector1_carry_i_4__2
       (.I0(operation_selector2[30]),
        .I1(operation_selector2[31]),
        .O(operation_selector1_carry_i_4__2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    operation_selector1_carry_i_5
       (.I0(operation_selector2[2]),
        .I1(operation_selector2[3]),
        .O(operation_selector1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    operation_selector1_carry_i_5__0
       (.I0(operation_selector2[16]),
        .I1(operation_selector2[17]),
        .O(operation_selector1_carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    operation_selector1_carry_i_5__1
       (.I0(operation_selector2[24]),
        .I1(operation_selector2[25]),
        .O(operation_selector1_carry_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    operation_selector1_carry_i_5__2
       (.I0(operation_selector2[28]),
        .I1(operation_selector2[29]),
        .O(operation_selector1_carry_i_5__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    operation_selector1_carry_i_6
       (.I0(operation_selector2[8]),
        .I1(operation_selector2[9]),
        .O(operation_selector1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    operation_selector1_carry_i_6__0
       (.I0(operation_selector2[14]),
        .I1(operation_selector2[15]),
        .O(operation_selector1_carry_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    operation_selector1_carry_i_6__1
       (.I0(operation_selector2[22]),
        .I1(operation_selector2[23]),
        .O(operation_selector1_carry_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    operation_selector1_carry_i_6__2
       (.I0(operation_selector2[26]),
        .I1(operation_selector2[27]),
        .O(operation_selector1_carry_i_6__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    operation_selector1_carry_i_7
       (.I0(operation_selector2[6]),
        .I1(operation_selector2[7]),
        .O(operation_selector1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    operation_selector1_carry_i_7__0
       (.I0(operation_selector2[12]),
        .I1(operation_selector2[13]),
        .O(operation_selector1_carry_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    operation_selector1_carry_i_7__1
       (.I0(operation_selector2[20]),
        .I1(operation_selector2[21]),
        .O(operation_selector1_carry_i_7__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    operation_selector1_carry_i_8
       (.I0(operation_selector2[4]),
        .I1(operation_selector2[5]),
        .O(operation_selector1_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    operation_selector1_carry_i_8__0
       (.I0(operation_selector2[10]),
        .I1(operation_selector2[11]),
        .O(operation_selector1_carry_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    operation_selector1_carry_i_8__1
       (.I0(operation_selector2[18]),
        .I1(operation_selector2[19]),
        .O(operation_selector1_carry_i_8__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    operation_selector1_carry_i_9
       (.I0(operation_selector2[2]),
        .I1(operation_selector2[3]),
        .O(operation_selector1_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 operation_selector2_carry
       (.CI(1'b0),
        .CO({operation_selector2_carry_n_0,operation_selector2_carry_n_1,operation_selector2_carry_n_2,operation_selector2_carry_n_3}),
        .CYINIT(operation_selector[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(operation_selector2[4:1]),
        .S(operation_selector[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 operation_selector2_carry__0
       (.CI(operation_selector2_carry_n_0),
        .CO({operation_selector2_carry__0_n_0,operation_selector2_carry__0_n_1,operation_selector2_carry__0_n_2,operation_selector2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(operation_selector2[8:5]),
        .S(operation_selector[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 operation_selector2_carry__1
       (.CI(operation_selector2_carry__0_n_0),
        .CO({operation_selector2_carry__1_n_0,operation_selector2_carry__1_n_1,operation_selector2_carry__1_n_2,operation_selector2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(operation_selector2[12:9]),
        .S(operation_selector[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 operation_selector2_carry__2
       (.CI(operation_selector2_carry__1_n_0),
        .CO({operation_selector2_carry__2_n_0,operation_selector2_carry__2_n_1,operation_selector2_carry__2_n_2,operation_selector2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(operation_selector2[16:13]),
        .S(operation_selector[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 operation_selector2_carry__3
       (.CI(operation_selector2_carry__2_n_0),
        .CO({operation_selector2_carry__3_n_0,operation_selector2_carry__3_n_1,operation_selector2_carry__3_n_2,operation_selector2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(operation_selector2[20:17]),
        .S(operation_selector[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 operation_selector2_carry__4
       (.CI(operation_selector2_carry__3_n_0),
        .CO({operation_selector2_carry__4_n_0,operation_selector2_carry__4_n_1,operation_selector2_carry__4_n_2,operation_selector2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(operation_selector2[24:21]),
        .S(operation_selector[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 operation_selector2_carry__5
       (.CI(operation_selector2_carry__4_n_0),
        .CO({operation_selector2_carry__5_n_0,operation_selector2_carry__5_n_1,operation_selector2_carry__5_n_2,operation_selector2_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(operation_selector2[28:25]),
        .S(operation_selector[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 operation_selector2_carry__6
       (.CI(operation_selector2_carry__5_n_0),
        .CO({NLW_operation_selector2_carry__6_CO_UNCONNECTED[3:2],operation_selector2_carry__6_n_2,operation_selector2_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_operation_selector2_carry__6_O_UNCONNECTED[3],operation_selector2[31:29]}),
        .S({1'b0,operation_selector[31:29]}));
  LUT3 #(
    .INIT(8'h01)) 
    \resultAddr[6]_i_1 
       (.I0(operation_selector[0]),
        .I1(\resultAddr[6]_i_3_n_0 ),
        .I2(operation_selector[1]),
        .O(resultAddr0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \resultAddr[6]_i_10 
       (.I0(operation_selector[18]),
        .I1(operation_selector[17]),
        .I2(operation_selector[20]),
        .I3(operation_selector[19]),
        .O(\resultAddr[6]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \resultAddr[6]_i_2 
       (.I0(operation_selector[1]),
        .I1(operation_selector[0]),
        .I2(\resultAddr[6]_i_3_n_0 ),
        .O(\resultAddr[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \resultAddr[6]_i_3 
       (.I0(\resultAddr[6]_i_4_n_0 ),
        .I1(\resultAddr[6]_i_5_n_0 ),
        .I2(\resultAddr[6]_i_6_n_0 ),
        .I3(operation_selector[31]),
        .O(\resultAddr[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \resultAddr[6]_i_4 
       (.I0(\resultAddr[6]_i_7_n_0 ),
        .I1(operation_selector[22]),
        .I2(operation_selector[21]),
        .I3(operation_selector[24]),
        .I4(operation_selector[23]),
        .I5(\resultAddr[6]_i_8_n_0 ),
        .O(\resultAddr[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \resultAddr[6]_i_5 
       (.I0(operation_selector[7]),
        .I1(operation_selector[8]),
        .I2(operation_selector[5]),
        .I3(operation_selector[6]),
        .I4(\resultAddr[6]_i_9_n_0 ),
        .O(\resultAddr[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \resultAddr[6]_i_6 
       (.I0(operation_selector[15]),
        .I1(operation_selector[16]),
        .I2(operation_selector[13]),
        .I3(operation_selector[14]),
        .I4(\resultAddr[6]_i_10_n_0 ),
        .O(\resultAddr[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \resultAddr[6]_i_7 
       (.I0(operation_selector[26]),
        .I1(operation_selector[25]),
        .I2(operation_selector[28]),
        .I3(operation_selector[27]),
        .O(\resultAddr[6]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \resultAddr[6]_i_8 
       (.I0(operation_selector[2]),
        .I1(operation_selector[29]),
        .I2(operation_selector[30]),
        .I3(operation_selector[4]),
        .I4(operation_selector[3]),
        .O(\resultAddr[6]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \resultAddr[6]_i_9 
       (.I0(operation_selector[10]),
        .I1(operation_selector[9]),
        .I2(operation_selector[12]),
        .I3(operation_selector[11]),
        .O(\resultAddr[6]_i_9_n_0 ));
  FDSE \resultAddr_reg[0] 
       (.C(CLK),
        .CE(\resultAddr[6]_i_2_n_0 ),
        .D(\resultInterface.resultAddr_actual_reg [0]),
        .Q(resultAddr[0]),
        .S(resultAddr0));
  FDSE \resultAddr_reg[1] 
       (.C(CLK),
        .CE(\resultAddr[6]_i_2_n_0 ),
        .D(\resultInterface.resultAddr_actual_reg [1]),
        .Q(resultAddr[1]),
        .S(resultAddr0));
  FDSE \resultAddr_reg[2] 
       (.C(CLK),
        .CE(\resultAddr[6]_i_2_n_0 ),
        .D(\resultInterface.resultAddr_actual_reg [2]),
        .Q(resultAddr[2]),
        .S(resultAddr0));
  FDSE \resultAddr_reg[3] 
       (.C(CLK),
        .CE(\resultAddr[6]_i_2_n_0 ),
        .D(\resultInterface.resultAddr_actual_reg [3]),
        .Q(resultAddr[3]),
        .S(resultAddr0));
  FDSE \resultAddr_reg[4] 
       (.C(CLK),
        .CE(\resultAddr[6]_i_2_n_0 ),
        .D(\resultInterface.resultAddr_actual_reg [4]),
        .Q(resultAddr[4]),
        .S(resultAddr0));
  FDSE \resultAddr_reg[5] 
       (.C(CLK),
        .CE(\resultAddr[6]_i_2_n_0 ),
        .D(\resultInterface.resultAddr_actual_reg [5]),
        .Q(resultAddr[5]),
        .S(resultAddr0));
  FDSE \resultAddr_reg[6] 
       (.C(CLK),
        .CE(\resultAddr[6]_i_2_n_0 ),
        .D(\resultInterface.resultAddr_actual_reg [6]),
        .Q(resultAddr[6]),
        .S(resultAddr0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h13)) 
    \resultInterface.operation_selector[0]_i_1 
       (.I0(operation_selector1),
        .I1(operation_selector[0]),
        .I2(\resultAddr[6]_i_3_n_0 ),
        .O(\resultInterface.operation_selector[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h1212FE12)) 
    \resultInterface.operation_selector[1]_i_1 
       (.I0(operation_selector[1]),
        .I1(\resultAddr[6]_i_3_n_0 ),
        .I2(operation_selector[0]),
        .I3(operation_selector2[1]),
        .I4(operation_selector1),
        .O(\resultInterface.operation_selector[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAABF)) 
    \resultInterface.operation_selector[31]_i_1 
       (.I0(operation_selector1),
        .I1(operation_selector[1]),
        .I2(operation_selector[0]),
        .I3(operation_selector[31]),
        .I4(\resultInterface.operation_selector[31]_i_2_n_0 ),
        .O(\resultInterface.operation_selector[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \resultInterface.operation_selector[31]_i_2 
       (.I0(\resultAddr[6]_i_6_n_0 ),
        .I1(\resultAddr[6]_i_5_n_0 ),
        .I2(\resultAddr[6]_i_4_n_0 ),
        .O(\resultInterface.operation_selector[31]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\resultInterface.operation_selector[0]_i_1_n_0 ),
        .Q(operation_selector[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector2[10]),
        .Q(operation_selector[10]),
        .R(\resultInterface.operation_selector[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector2[11]),
        .Q(operation_selector[11]),
        .R(\resultInterface.operation_selector[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector2[12]),
        .Q(operation_selector[12]),
        .R(\resultInterface.operation_selector[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector2[13]),
        .Q(operation_selector[13]),
        .R(\resultInterface.operation_selector[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector2[14]),
        .Q(operation_selector[14]),
        .R(\resultInterface.operation_selector[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector2[15]),
        .Q(operation_selector[15]),
        .R(\resultInterface.operation_selector[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector2[16]),
        .Q(operation_selector[16]),
        .R(\resultInterface.operation_selector[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector2[17]),
        .Q(operation_selector[17]),
        .R(\resultInterface.operation_selector[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector2[18]),
        .Q(operation_selector[18]),
        .R(\resultInterface.operation_selector[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector2[19]),
        .Q(operation_selector[19]),
        .R(\resultInterface.operation_selector[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\resultInterface.operation_selector[1]_i_1_n_0 ),
        .Q(operation_selector[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector2[20]),
        .Q(operation_selector[20]),
        .R(\resultInterface.operation_selector[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector2[21]),
        .Q(operation_selector[21]),
        .R(\resultInterface.operation_selector[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector2[22]),
        .Q(operation_selector[22]),
        .R(\resultInterface.operation_selector[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector2[23]),
        .Q(operation_selector[23]),
        .R(\resultInterface.operation_selector[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector2[24]),
        .Q(operation_selector[24]),
        .R(\resultInterface.operation_selector[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector2[25]),
        .Q(operation_selector[25]),
        .R(\resultInterface.operation_selector[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector2[26]),
        .Q(operation_selector[26]),
        .R(\resultInterface.operation_selector[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector2[27]),
        .Q(operation_selector[27]),
        .R(\resultInterface.operation_selector[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector2[28]),
        .Q(operation_selector[28]),
        .R(\resultInterface.operation_selector[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector2[29]),
        .Q(operation_selector[29]),
        .R(\resultInterface.operation_selector[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector2[2]),
        .Q(operation_selector[2]),
        .R(\resultInterface.operation_selector[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector2[30]),
        .Q(operation_selector[30]),
        .R(\resultInterface.operation_selector[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector2[31]),
        .Q(operation_selector[31]),
        .R(\resultInterface.operation_selector[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector2[3]),
        .Q(operation_selector[3]),
        .R(\resultInterface.operation_selector[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector2[4]),
        .Q(operation_selector[4]),
        .R(\resultInterface.operation_selector[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector2[5]),
        .Q(operation_selector[5]),
        .R(\resultInterface.operation_selector[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector2[6]),
        .Q(operation_selector[6]),
        .R(\resultInterface.operation_selector[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector2[7]),
        .Q(operation_selector[7]),
        .R(\resultInterface.operation_selector[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector2[8]),
        .Q(operation_selector[8]),
        .R(\resultInterface.operation_selector[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.operation_selector_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(operation_selector2[9]),
        .Q(operation_selector[9]),
        .R(\resultInterface.operation_selector[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \resultInterface.resultAddr_actual[0]_i_1 
       (.I0(\resultInterface.resultAddr_actual_reg [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \resultInterface.resultAddr_actual[1]_i_1 
       (.I0(\resultInterface.resultAddr_actual_reg [0]),
        .I1(\resultInterface.resultAddr_actual_reg [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \resultInterface.resultAddr_actual[2]_i_1 
       (.I0(\resultInterface.resultAddr_actual_reg [1]),
        .I1(\resultInterface.resultAddr_actual_reg [0]),
        .I2(\resultInterface.resultAddr_actual_reg [2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \resultInterface.resultAddr_actual[3]_i_1 
       (.I0(\resultInterface.resultAddr_actual_reg [2]),
        .I1(\resultInterface.resultAddr_actual_reg [0]),
        .I2(\resultInterface.resultAddr_actual_reg [1]),
        .I3(\resultInterface.resultAddr_actual_reg [3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \resultInterface.resultAddr_actual[4]_i_1 
       (.I0(\resultInterface.resultAddr_actual_reg [3]),
        .I1(\resultInterface.resultAddr_actual_reg [1]),
        .I2(\resultInterface.resultAddr_actual_reg [0]),
        .I3(\resultInterface.resultAddr_actual_reg [2]),
        .I4(\resultInterface.resultAddr_actual_reg [4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \resultInterface.resultAddr_actual[5]_i_1 
       (.I0(\resultInterface.resultAddr_actual_reg [4]),
        .I1(\resultInterface.resultAddr_actual_reg [2]),
        .I2(\resultInterface.resultAddr_actual_reg [0]),
        .I3(\resultInterface.resultAddr_actual_reg [1]),
        .I4(\resultInterface.resultAddr_actual_reg [3]),
        .I5(\resultInterface.resultAddr_actual_reg [5]),
        .O(plusOp[5]));
  LUT3 #(
    .INIT(8'hD2)) 
    \resultInterface.resultAddr_actual[6]_i_1 
       (.I0(\resultInterface.resultAddr_actual_reg [5]),
        .I1(\resultInterface.resultAddr_actual[6]_i_2_n_0 ),
        .I2(\resultInterface.resultAddr_actual_reg [6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \resultInterface.resultAddr_actual[6]_i_2 
       (.I0(\resultInterface.resultAddr_actual_reg [3]),
        .I1(\resultInterface.resultAddr_actual_reg [1]),
        .I2(\resultInterface.resultAddr_actual_reg [0]),
        .I3(\resultInterface.resultAddr_actual_reg [2]),
        .I4(\resultInterface.resultAddr_actual_reg [4]),
        .O(\resultInterface.resultAddr_actual[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.resultAddr_actual_reg[0] 
       (.C(CLK),
        .CE(\resultAddr[6]_i_2_n_0 ),
        .D(plusOp[0]),
        .Q(\resultInterface.resultAddr_actual_reg [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \resultInterface.resultAddr_actual_reg[1] 
       (.C(CLK),
        .CE(\resultAddr[6]_i_2_n_0 ),
        .D(plusOp[1]),
        .Q(\resultInterface.resultAddr_actual_reg [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.resultAddr_actual_reg[2] 
       (.C(CLK),
        .CE(\resultAddr[6]_i_2_n_0 ),
        .D(plusOp[2]),
        .Q(\resultInterface.resultAddr_actual_reg [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \resultInterface.resultAddr_actual_reg[3] 
       (.C(CLK),
        .CE(\resultAddr[6]_i_2_n_0 ),
        .D(plusOp[3]),
        .Q(\resultInterface.resultAddr_actual_reg [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.resultAddr_actual_reg[4] 
       (.C(CLK),
        .CE(\resultAddr[6]_i_2_n_0 ),
        .D(plusOp[4]),
        .Q(\resultInterface.resultAddr_actual_reg [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.resultAddr_actual_reg[5] 
       (.C(CLK),
        .CE(\resultAddr[6]_i_2_n_0 ),
        .D(plusOp[5]),
        .Q(\resultInterface.resultAddr_actual_reg [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \resultInterface.resultAddr_actual_reg[6] 
       (.C(CLK),
        .CE(\resultAddr[6]_i_2_n_0 ),
        .D(plusOp[6]),
        .Q(\resultInterface.resultAddr_actual_reg [6]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_CORE_0_0,CORE,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "CORE,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    daddr_out,
    den_out,
    di_in,
    do_out,
    drdy_in,
    dwe_out,
    resultAddr,
    resultData);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_sim_clk_gen_0_0_clk, INSERT_VIP 0" *) input CLK;
  output [6:0]daddr_out;
  output den_out;
  input [15:0]di_in;
  output [15:0]do_out;
  input drdy_in;
  output dwe_out;
  output [6:0]resultAddr;
  output [15:0]resultData;

  wire \<const0> ;
  wire CLK;
  wire [4:0]\^daddr_out ;
  wire den_out;
  wire drdy_in;
  wire [6:0]resultAddr;

  assign daddr_out[6] = \<const0> ;
  assign daddr_out[5] = \<const0> ;
  assign daddr_out[4:0] = \^daddr_out [4:0];
  assign do_out[15] = \<const0> ;
  assign do_out[14] = \<const0> ;
  assign do_out[13] = \<const0> ;
  assign do_out[12] = \<const0> ;
  assign do_out[11] = \<const0> ;
  assign do_out[10] = \<const0> ;
  assign do_out[9] = \<const0> ;
  assign do_out[8] = \<const0> ;
  assign do_out[7] = \<const0> ;
  assign do_out[6] = \<const0> ;
  assign do_out[5] = \<const0> ;
  assign do_out[4] = \<const0> ;
  assign do_out[3] = \<const0> ;
  assign do_out[2] = \<const0> ;
  assign do_out[1] = \<const0> ;
  assign do_out[0] = \<const0> ;
  assign dwe_out = \<const0> ;
  assign resultData[15] = \<const0> ;
  assign resultData[14] = \<const0> ;
  assign resultData[13] = \<const0> ;
  assign resultData[12] = \<const0> ;
  assign resultData[11] = \<const0> ;
  assign resultData[10] = \<const0> ;
  assign resultData[9] = \<const0> ;
  assign resultData[8] = \<const0> ;
  assign resultData[7] = \<const0> ;
  assign resultData[6] = \<const0> ;
  assign resultData[5] = \<const0> ;
  assign resultData[4] = \<const0> ;
  assign resultData[3] = \<const0> ;
  assign resultData[2] = \<const0> ;
  assign resultData[1] = \<const0> ;
  assign resultData[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CORE inst
       (.CLK(CLK),
        .daddr_out(\^daddr_out ),
        .den_out(den_out),
        .drdy_in(drdy_in),
        .resultAddr(resultAddr));
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
