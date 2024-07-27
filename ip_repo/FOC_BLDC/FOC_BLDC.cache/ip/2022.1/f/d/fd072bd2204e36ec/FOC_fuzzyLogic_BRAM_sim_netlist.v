// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Jul 26 19:09:47 2024
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
