// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Wed Jun 29 20:22:01 2022
// Host        : LAPTOP-QKPB5NLF running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top BRAM_SIN -prefix
//               BRAM_SIN_ BRAM_SIN_sim_netlist.v
// Design      : BRAM_SIN
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BRAM_SIN,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module BRAM_SIN
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;

  wire [10:0]addra;
  wire clka;
  wire [11:0]douta;
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
  wire [11:0]NLW_U0_doutb_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.35235 mW" *) 
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
  (* C_INIT_FILE = "BRAM_SIN.mem" *) 
  (* C_INIT_FILE_NAME = "BRAM_SIN.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "12" *) 
  (* C_READ_WIDTH_B = "12" *) 
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
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  BRAM_SIN_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[11:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[11:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26016)
`pragma protect data_block
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
Kwo7o2+po6qdqrtsZHb8tt56/LSbhxuO
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
