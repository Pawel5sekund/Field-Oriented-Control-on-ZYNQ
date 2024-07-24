// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sat Jul 20 13:44:27 2024
// Host        : LAPTOP-PAWEL running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ FOC_fuzzyLogic_BRAM_sim_netlist.v
// Design      : FOC_fuzzyLogic_BRAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "FOC_fuzzyLogic_BRAM,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [17:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [11:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [17:0]doutb;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire [17:0]douta;
  wire [17:0]doutb;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [17:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     9.414399 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "FOC_fuzzyLogic_BRAM.mem" *) 
  (* C_INIT_FILE_NAME = "FOC_fuzzyLogic_BRAM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "4" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4095" *) 
  (* C_READ_DEPTH_B = "4095" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "18" *) 
  (* C_READ_WIDTH_B = "18" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "4095" *) 
  (* C_WRITE_DEPTH_B = "4095" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "18" *) 
  (* C_WRITE_WIDTH_B = "18" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[17:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RgPKnWr9n0dGgttm3akiFhAlfB96usOQYxnEmPhGyTGg1AbizYAjGPWLXBWl50n/d0IA71ci4aJB
wt6mtfyNADm3ZReK7D3mKu037BOgxryoEwwf1kiC6q/PllxsdAgEMfQrfHJ3E2AzSpdYjoxVYito
y0JW6CUDcWvWa4WV0EA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M0l6KpOGH3jL8eRt3NCD7e2USYnkg5H9GAnE1PKmnjiouFN3Y8kjWA2PZDAQLm9UW+TsC1HeVlzO
WjNCHkjR/6ubCsIcWfpPZWdIuAenlsyq8Y9l6b8vMj8JSbDEOiFF/GHSbKsn22MJdDJKEhHFK6GV
s8gR2vywRFwG69gIRE4qGhVB+WIg8GJrDpDMYH6lCjMkTrjXuKDUcNlJN3NPLuhJ7tsditwf1pr5
moJRmGpJnip/rGm0g4o4A6ev4CtePjoao8C1wFtzHkERX9oenhh7cGjDMejU5IrLv8NxFnLj1FpB
9MuF1beTU20NI5oAn6zLiLiOtXjf0ghU3AN4DA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hAsrUfp6Qgjm8yBjNYTEtQmVQmMxzL8TE/3oiQSxSI3+yEkXAbQCXkT9mo+LCdv+fGECOB0istHd
eLtbsiYbxjxNxYkXiUrRE5O+aSxynIray+uF9DJigTEUZu8JJXUbzxK4DDUu1Lm9tpGps4+Prz1m
0gkj13RT/Y/418s2VTw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BP/54Wm/GJmb1jy0bxWJJX4aiKyiWPVh4X3VL30BQrmX4PlEsNKzBJH3Qu8IIYERfnFP0ifAgboa
vypMQ5Ed0BrMePGkWIgT6I8hxJCMFpHdkSK7m1giSKyZzFfTOrVqoNFXE+qdzLfY1J5hBWCvouYo
jllavK4N3gF9FLScH2AUWYVMcVth2QPaTAU2NLnAUNH8kgtBjBfc8/KbPPTznD1QNVqvFstzcbTA
hGQ1ETVPvINQ0KqxxAG5PRhtQD4+pC+hr/Tvk+RSvGyBOfy9zE86OXkJiYs9dSFhNiMFmCPL9DBO
se4OxNNC0/7aBtb1mkSEA9YFDYEb9jS7Jasy2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SnzT9DVH3xlEN8nrr2YrlvTO5qj7L22d7WaBcuKyTaiHoIwwFHrC4HQbfs0TAwkdWcOgmJoATPSF
F6qm0KiddbrlERF3MfKUldeGBJtqLdX+zGw7+3JD7S+HB9dIMOFOHy+IiCZp1/Pz8epKpi238cel
rcVoJQKz406wmXDvOo8KsT+XhRLs9BVCrBErPGGXKYDk6NXAp0duOgQE9DbslzMU83M/kUC7uERV
tQW02240peKQFp2elEZC7Tetvgp0TaFTtJiKN45REi8GQUCKGa85JjNIk1qb/+k95TIIP1xrHirc
6iX7qbwnPetv8TVu2NjkZ0WDEK5RXdOXcxBwHA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
erkR82V0jX8ytva+9MzEs0c75Z7j7TsgxWRLNAUfbbU28i+U9YzuZlSfYU75M0f9jx1gvxtBrfKv
cNHVdkR+i5zfHDZsDwfMEEBhs8wzDCKqe+eex6BBEvlIOesCPXrr2RozQgaQ1PBh/os2Arfu+873
BjsVxFJkbhpzIqlddOo/XZV9Yi+eih7A7pXXEBR6IL7Poo4Ka49MiVQU0xJrDTm+ddOuMPDRRD7g
dsxS/uzdcBcO2myV6g/7YH/C2Ce9s6+UywJN/0JeXSqwA7bsBqqnfFicVAT0lckLopMLiuzK7dsN
EwhFeqoetciFrDIj9+o0xDMWBZhgNP1u68vURA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R+BI65BKLT0I9hEtsxGnDyM5XY9gzULeTPOSDXvd3KWOzZJAx6C0xlbyZcFZhAEG/QIK2yd0wAi6
IUWxyF/sx3HsqKjhVi5KxnpuXDBOZVoj811O7JukedFVmDW7OHGtBkuiJ5X5irw7mfsEKRQmF/1i
V6lj9HYHZEjxtDeZjACsLY4y1QxWalSKT4HIMOHznBLL8dLbGMlS+ZmFuFn0gcwZavVl7gTkTtkf
W0gn01A9ru7NKsf+iLX0kj4dgItPu9N2g02M1vWQ9UUQEVvfV7lUc7GY1suibrD8aEkhH9S7lZ7n
bFsT4qxyvzg8ML6v4g4v7N6VuyhEtgFgNd725Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jNUVKiwH68vHsU54idgvKwaVJcoxTUuxfgrQpbpmM/IpesWA3wHsGzYClwAxkKzw3KRnFyQqTWcZ
yj1EQ2CMBxlJ0kyNbZW8OK8pXzeigToZ0U6Aq3Gy+j7wBbhe83wE1Ygn82sK8dHTEulvaRLn/c5r
ispy1s7jMKIvYNzoUuZrgyBQyfaYmdqUia8XlQjFd+VwzhTXKwzvmaqHWyaHjfBKeCooO7+oUxMG
OJg83W54EVe9ronFQ8Wr9EOL8ia7qelCAgyQe/bC0HHCoMAm8apI7sX23iMR/wMiPP5V2bQzycy+
rBX/+SWkqSeIE1FLm+muFPvrE7iLwJaW8d1fzdFFjAZ5aIXArbWNfwbK8S0TczXc9lEzmpb69rwA
UJIrs4alo81qGQ32UFhjuMQjX75O9Od1HWHDj5PFaT/Ja5Ly+bK8Cc3gfO6dCE81m7d+B2JBZ/Hl
tBA19QuOAYwT2EIPOdpaVtCULb33cWODWu3qQFhZMmDzKTb3kwpcr0LL

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MnzcA2swaxH1LRacKDou0ZmiiMRETbWIdHgeBgyQz7ILronsXLoB/C20WuFNGEVSiL2/51EZ6MXZ
vMHI8fFcMQCJcuTBDBibUMKv6bXI9s8fTbtrBZppbF/R1icG5JYhqmX4aRnv4W/dxJRjI2L35nLN
Y48E9OfgfkD1sr+IRwx8WEKFmUhuk8dLe0VOK7ywe3XEcneYvrz+HhPj16bGmNfMwNnDgZ3gKKZD
hRnys+jzvAX3HyISrErWXhMKrhWMxXeTNFJCqNQ0LWAVHQYwyKnF5xVpyXSuGNSIrva+QXqOrZBG
3VNLirNVtMRiKLfwZeMaqvswkqBDAa53utlAAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d0xXkKtsKM8GvXhDZr16p1+oE3uBtD04BJ76eGGIEj/CFECfHVy9qsJ43oSKjas0+AJr4GFFnVb6
X7gJV6MmX/OboC9ier5joUCGz0mxVzkRZK9a+LPEDcg0K6+cLE36kr+FfxW9Uk2816EHBCMCf5mK
A4eAhSmAb5Nq74F/q0quiG416npbny7faiQ+xmPDfYYiM3UuMKaD4iE8ODlz1w5xThPllWESf3LZ
NTkw6fozyTqZ47vvE21O3dgIGAY1v+C6BwlCK24VwPJa1xs9csY+qTk31j5jjAc1ExlB6QF7t9UH
lk70qdNPWxT87OH7kFT8UvPO1D6BTC3/WkDZfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYhdzKTvo93uJrAaiP5OfCDuOnu2BSvPnxlv6I7h2n1+xHtj34LNNKzWEgOg9dUV9cYDaHYUjjEt
DKdWcz6mZ61d5qyxAhpv67fc90v7JVgtOAcT94/Yb+AuLxXFcGA6Gic7uoJtUgz6JmTnb22Dxdjc
KuIewDj4IOTfP8XGXKTaF+cNp0CFrQgTAcVSQFyLFxr0I/9h3S+GZLecA7ntEeHEOfCJzPvy0ddi
7MCdQWECLb+fXC0IAn8V95TumcpINiRAX1BHi9IGJ4QoMrb3jOCrPkFhDMTJj2aiImUWdi/l/0QE
d7wcXlgIEYVeoKYUOJ4mqy+zZPUbLNeOPADUDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 44048)
`pragma protect data_block
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
`pragma protect end_protected
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
