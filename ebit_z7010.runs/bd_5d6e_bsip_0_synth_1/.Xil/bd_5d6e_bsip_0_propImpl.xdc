set_property SRC_FILE_INFO {cfile:/mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_debug_bridge_0_0/bd_0/ip/ip_1/constraints/bsip.xdc rfile:../../../ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_debug_bridge_0_0/bd_0/ip/ip_1/constraints/bsip.xdc id:1 order:LATE scoped_inst:U0} [current_design]
current_instance U0
set_property src_info {type:SCOPED_XDC file:1 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay 25.0 -from [get_cells -hierarchical -filter {NAME =~ "*USE_SOFTBSCAN.U_BSCAN_TAP/U_BASETAP/TDO_O_reg*"}] -through [get_ports -scoped_to_current_instance tap_tdo] -datapath_only
set_property src_info {type:SCOPED_XDC file:1 line:12 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -type METHODOLOGY -id TIMING-14 -tags "1025927" -user "bsip" -desc "CDC is handled through handshake process" -scope -objects [get_cells -hierarchical -filter {NAME =~ "*USE_SOFTBSCAN.U_BSCAN_TAP//i_*"}]
set_property src_info {type:SCOPED_XDC file:1 line:14 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -type METHODOLOGY -id TIMING-14 -tags "1025927" -user "bsip" -desc "CDC is handled through handshake process" -scope -objects [get_cells -hierarchical -filter {NAME =~ "*USE_SOFTBSCAN.U_BSCAN_TAP/U_BASETAP/U_TAP/update_INST_0*"}]
