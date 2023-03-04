# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "regAddrEnd" -parent ${Page_0}
  ipgui::add_param $IPINST -name "regAddrStart" -parent ${Page_0}
  ipgui::add_param $IPINST -name "resultInterfaceDelay" -parent ${Page_0}


}

proc update_PARAM_VALUE.regAddrEnd { PARAM_VALUE.regAddrEnd } {
	# Procedure called to update regAddrEnd when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.regAddrEnd { PARAM_VALUE.regAddrEnd } {
	# Procedure called to validate regAddrEnd
	return true
}

proc update_PARAM_VALUE.regAddrStart { PARAM_VALUE.regAddrStart } {
	# Procedure called to update regAddrStart when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.regAddrStart { PARAM_VALUE.regAddrStart } {
	# Procedure called to validate regAddrStart
	return true
}

proc update_PARAM_VALUE.resultInterfaceDelay { PARAM_VALUE.resultInterfaceDelay } {
	# Procedure called to update resultInterfaceDelay when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.resultInterfaceDelay { PARAM_VALUE.resultInterfaceDelay } {
	# Procedure called to validate resultInterfaceDelay
	return true
}


proc update_MODELPARAM_VALUE.regAddrStart { MODELPARAM_VALUE.regAddrStart PARAM_VALUE.regAddrStart } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.regAddrStart}] ${MODELPARAM_VALUE.regAddrStart}
}

proc update_MODELPARAM_VALUE.regAddrEnd { MODELPARAM_VALUE.regAddrEnd PARAM_VALUE.regAddrEnd } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.regAddrEnd}] ${MODELPARAM_VALUE.regAddrEnd}
}

proc update_MODELPARAM_VALUE.resultInterfaceDelay { MODELPARAM_VALUE.resultInterfaceDelay PARAM_VALUE.resultInterfaceDelay } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.resultInterfaceDelay}] ${MODELPARAM_VALUE.resultInterfaceDelay}
}

