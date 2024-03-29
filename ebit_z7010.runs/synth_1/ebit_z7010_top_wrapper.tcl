# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
namespace eval ::optrace {
  variable script "/mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.runs/synth_1/ebit_z7010_top_wrapper.tcl"
  variable category "vivado_synth"
}

# Try to connect to running dispatch if we haven't done so already.
# This code assumes that the Tcl interpreter is not using threads,
# since the ::dispatch::connected variable isn't mutex protected.
if {![info exists ::dispatch::connected]} {
  namespace eval ::dispatch {
    variable connected false
    if {[llength [array get env XILINX_CD_CONNECT_ID]] > 0} {
      set result "true"
      if {[catch {
        if {[lsearch -exact [package names] DispatchTcl] < 0} {
          set result [load librdi_cd_clienttcl[info sharedlibextension]] 
        }
        if {$result eq "false"} {
          puts "WARNING: Could not load dispatch client library"
        }
        set connect_id [ ::dispatch::init_client -mode EXISTING_SERVER ]
        if { $connect_id eq "" } {
          puts "WARNING: Could not initialize dispatch client"
        } else {
          puts "INFO: Dispatch client connection id - $connect_id"
          set connected true
        }
      } catch_res]} {
        puts "WARNING: failed to connect to dispatch server - $catch_res"
      }
    }
  }
}
if {$::dispatch::connected} {
  # Remove the dummy proc if it exists.
  if { [expr {[llength [info procs ::OPTRACE]] > 0}] } {
    rename ::OPTRACE ""
  }
  proc ::OPTRACE { task action {tags {} } } {
    ::vitis_log::op_trace "$task" $action -tags $tags -script $::optrace::script -category $::optrace::category
  }
  # dispatch is generic. We specifically want to attach logging.
  ::vitis_log::connect_client
} else {
  # Add dummy proc if it doesn't exist.
  if { [expr {[llength [info procs ::OPTRACE]] == 0}] } {
    proc ::OPTRACE {{arg1 \"\" } {arg2 \"\"} {arg3 \"\" } {arg4 \"\"} {arg5 \"\" } {arg6 \"\"}} {
        # Do nothing
    }
  }
}

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
OPTRACE "synth_1" START { ROLLUP_AUTO }
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config  -id {Board 49-26}  -suppress 
set_msg_config  -id {IP_Flow 19-3656}  -string {{WARNING: [IP_Flow 19-3656] If you move the project, the path for repository '/mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ip_repo/FOC_BLDC' may become invalid. A better location for the repository would be in a path adjacent to the project. (Current project location is '/mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ip_repo/FOC_BLDC/FOC_BLDC.runs/synth_1'.)}}  -suppress 
set_msg_config  -id {IP_Flow 19-3656}  -suppress 
set_msg_config  -id {IP_Flow 19-2248}  -suppress 
OPTRACE "Creating in-memory project" START { }
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.cache/wt [current_project]
set_property parent.project_path /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_repo_paths {
  /mnt/d/Xilinx/Projects/Vivado/ip_repo/myip_1.0
  /mnt/d/Xilinx/Projects/Vivado/ip_repo/FOC_1.0
  /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ip_repo/LED_controller
  /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ip_repo/DPUCZDX8G_v3_3_0
  /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ip_repo/FOC_BLDC
} [current_project]
update_ip_catalog
set_property ip_output_repo /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
OPTRACE "Creating in-memory project" END { }
OPTRACE "Adding files" START { }
read_vhdl -library xil_defaultlib /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/hdl/ebit_z7010_top_wrapper.vhd
add_files /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.srcs/sources_1/bd/ebit_z7010_top/ebit_z7010_top.bd
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_processing_system7_0_0/ebit_z7010_top_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_rst_ps7_0_50M_0/ebit_z7010_top_rst_ps7_0_50M_0_board.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_rst_ps7_0_50M_0/ebit_z7010_top_rst_ps7_0_50M_0.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_rst_ps7_0_50M_0/ebit_z7010_top_rst_ps7_0_50M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_xbar_0/ebit_z7010_top_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_1/ebit_z7010_top_axi_gpio_0_1_board.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_1/ebit_z7010_top_axi_gpio_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_1/ebit_z7010_top_axi_gpio_0_1.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_2/ebit_z7010_top_axi_gpio_0_2_board.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_2/ebit_z7010_top_axi_gpio_0_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_2/ebit_z7010_top_axi_gpio_0_2.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_3/ebit_z7010_top_axi_gpio_0_3_board.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_3/ebit_z7010_top_axi_gpio_0_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_3/ebit_z7010_top_axi_gpio_0_3.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_4/ebit_z7010_top_axi_gpio_0_4_board.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_4/ebit_z7010_top_axi_gpio_0_4_ooc.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_4/ebit_z7010_top_axi_gpio_0_4.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_5/ebit_z7010_top_axi_gpio_0_5_board.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_5/ebit_z7010_top_axi_gpio_0_5_ooc.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_5/ebit_z7010_top_axi_gpio_0_5.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_6/ebit_z7010_top_axi_gpio_0_6_board.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_6/ebit_z7010_top_axi_gpio_0_6_ooc.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_6/ebit_z7010_top_axi_gpio_0_6.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_7/ebit_z7010_top_axi_gpio_0_7_board.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_7/ebit_z7010_top_axi_gpio_0_7_ooc.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_7/ebit_z7010_top_axi_gpio_0_7.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_8/ebit_z7010_top_axi_gpio_0_8_board.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_8/ebit_z7010_top_axi_gpio_0_8_ooc.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_8/ebit_z7010_top_axi_gpio_0_8.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_9/ebit_z7010_top_axi_gpio_0_9_board.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_9/ebit_z7010_top_axi_gpio_0_9_ooc.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_9/ebit_z7010_top_axi_gpio_0_9.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_FOC_top_0_0/FOC_BLDC.srcs/sources_1/ip/ILA_FOC_core/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_FOC_top_0_0/FOC_BLDC.srcs/sources_1/ip/ILA_FOC_core/ILA_FOC_core_ooc.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_FOC_top_0_0/FOC_BLDC.srcs/BRAM_SIN/ip/BRAM_SIN/BRAM_SIN_ooc.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_FOC_top_0_0/FOC_BLDC.srcs/constrs_1/new/firstconstraints.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_10/ebit_z7010_top_axi_gpio_0_10_board.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_10/ebit_z7010_top_axi_gpio_0_10_ooc.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_10/ebit_z7010_top_axi_gpio_0_10.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_11/ebit_z7010_top_axi_gpio_0_11_board.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_11/ebit_z7010_top_axi_gpio_0_11_ooc.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_axi_gpio_0_11/ebit_z7010_top_axi_gpio_0_11.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_debug_bridge_0_0/bd_0/ip/ip_0/constraints/axi_jtag.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_debug_bridge_0_0/bd_0/ip/ip_0/bd_5d6e_axi_jtag_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_debug_bridge_0_0/bd_0/ip/ip_1/constraints/bsip.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_debug_bridge_0_0/bd_0/ip/ip_1/bd_5d6e_bsip_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_debug_bridge_0_0/bd_0/bd_5d6e_ooc.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_debug_bridge_0_0/ebit_z7010_top_debug_bridge_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ip/ebit_z7010_top_auto_pc_0/ebit_z7010_top_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/bd/ebit_z7010_top/ebit_z7010_top_ooc.xdc]

read_ip -quiet /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.srcs/sources_1/ip/xadc_wiz_0/xadc_wiz_0.xci
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/ip/xadc_wiz_0/xadc_wiz_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/ip/xadc_wiz_0/xadc_wiz_0.xdc]

read_ip -quiet /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.srcs/sources_1/ip/axi_gpio_0/axi_gpio_0.xci
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/ip/axi_gpio_0/axi_gpio_0_board.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/ip/axi_gpio_0/axi_gpio_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/ip/axi_gpio_0/axi_gpio_0.xdc]

read_ip -quiet /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.srcs/sources_1/ip/position/position.xci
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/ip/position/position_board.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/ip/position/position_ooc.xdc]
set_property used_in_implementation false [get_files -all /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/ip/position/position.xdc]

OPTRACE "Adding files" END { }
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.srcs/constrs_1/new/ebit_z7010_top.xdc
set_property used_in_implementation false [get_files /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.srcs/constrs_1/new/ebit_z7010_top.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

OPTRACE "synth_design" START { }
synth_design -top ebit_z7010_top_wrapper -part xc7z010clg400-1
OPTRACE "synth_design" END { }
if { [get_msg_config -count -severity {CRITICAL WARNING}] > 0 } {
 send_msg_id runtcl-6 info "Synthesis results are not added to the cache due to CRITICAL_WARNING"
}


OPTRACE "write_checkpoint" START { CHECKPOINT }
# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef ebit_z7010_top_wrapper.dcp
OPTRACE "write_checkpoint" END { }
OPTRACE "synth reports" START { REPORT }
create_report "synth_1_synth_report_utilization_0" "report_utilization -file ebit_z7010_top_wrapper_utilization_synth.rpt -pb ebit_z7010_top_wrapper_utilization_synth.pb"
OPTRACE "synth reports" END { }
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
OPTRACE "synth_1" END { }
