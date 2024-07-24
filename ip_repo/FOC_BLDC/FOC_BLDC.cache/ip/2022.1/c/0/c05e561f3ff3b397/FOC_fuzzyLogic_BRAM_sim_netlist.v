// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sun Jul 21 12:12:11 2024
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
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
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
  (* C_WRITE_DEPTH_A = "4096" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
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
