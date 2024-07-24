// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sat Jul 20 14:53:31 2024
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
