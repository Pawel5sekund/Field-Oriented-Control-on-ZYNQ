// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Jul 26 19:09:50 2024
// Host        : LAPTOP-PAWEL running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ip_repo/FOC_BLDC/FOC_BLDC.gen/sources_1/ip/FOC_fuzzyLogic_BRAM/FOC_fuzzyLogic_BRAM_sim_netlist.v
// Design      : FOC_fuzzyLogic_BRAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "FOC_fuzzyLogic_BRAM,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module FOC_fuzzyLogic_BRAM
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
  FOC_fuzzyLogic_BRAM_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 44000)
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
