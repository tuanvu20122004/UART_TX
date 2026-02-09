# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BAUDRATE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CLK_FREQ_HZ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "GAP_MS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "POR_MS" -parent ${Page_0}


}

proc update_PARAM_VALUE.BAUDRATE { PARAM_VALUE.BAUDRATE } {
	# Procedure called to update BAUDRATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BAUDRATE { PARAM_VALUE.BAUDRATE } {
	# Procedure called to validate BAUDRATE
	return true
}

proc update_PARAM_VALUE.CLK_FREQ_HZ { PARAM_VALUE.CLK_FREQ_HZ } {
	# Procedure called to update CLK_FREQ_HZ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLK_FREQ_HZ { PARAM_VALUE.CLK_FREQ_HZ } {
	# Procedure called to validate CLK_FREQ_HZ
	return true
}

proc update_PARAM_VALUE.GAP_MS { PARAM_VALUE.GAP_MS } {
	# Procedure called to update GAP_MS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GAP_MS { PARAM_VALUE.GAP_MS } {
	# Procedure called to validate GAP_MS
	return true
}

proc update_PARAM_VALUE.POR_MS { PARAM_VALUE.POR_MS } {
	# Procedure called to update POR_MS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.POR_MS { PARAM_VALUE.POR_MS } {
	# Procedure called to validate POR_MS
	return true
}


proc update_MODELPARAM_VALUE.CLK_FREQ_HZ { MODELPARAM_VALUE.CLK_FREQ_HZ PARAM_VALUE.CLK_FREQ_HZ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLK_FREQ_HZ}] ${MODELPARAM_VALUE.CLK_FREQ_HZ}
}

proc update_MODELPARAM_VALUE.BAUDRATE { MODELPARAM_VALUE.BAUDRATE PARAM_VALUE.BAUDRATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BAUDRATE}] ${MODELPARAM_VALUE.BAUDRATE}
}

proc update_MODELPARAM_VALUE.GAP_MS { MODELPARAM_VALUE.GAP_MS PARAM_VALUE.GAP_MS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GAP_MS}] ${MODELPARAM_VALUE.GAP_MS}
}

proc update_MODELPARAM_VALUE.POR_MS { MODELPARAM_VALUE.POR_MS PARAM_VALUE.POR_MS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.POR_MS}] ${MODELPARAM_VALUE.POR_MS}
}

