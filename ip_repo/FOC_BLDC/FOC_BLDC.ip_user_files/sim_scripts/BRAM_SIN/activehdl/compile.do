vlib work
vlib activehdl

vlib activehdl/blk_mem_gen_v8_4_5
vlib activehdl/xil_defaultlib

vmap blk_mem_gen_v8_4_5 activehdl/blk_mem_gen_v8_4_5
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work blk_mem_gen_v8_4_5  -v2k5 \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../FOC_BLDC.gen/BRAM_SIN/ip/BRAM_SIN/sim/BRAM_SIN.v" \


vlog -work xil_defaultlib \
"glbl.v"

