# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "channelSelectSize" -parent ${Page_0}
  ipgui::add_param $IPINST -name "isMultiTau" -parent ${Page_0}
  ipgui::add_param $IPINST -name "numChannels" -parent ${Page_0}


}

proc update_PARAM_VALUE.channelSelectSize { PARAM_VALUE.channelSelectSize } {
	# Procedure called to update channelSelectSize when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.channelSelectSize { PARAM_VALUE.channelSelectSize } {
	# Procedure called to validate channelSelectSize
	return true
}

proc update_PARAM_VALUE.isMultiTau { PARAM_VALUE.isMultiTau } {
	# Procedure called to update isMultiTau when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.isMultiTau { PARAM_VALUE.isMultiTau } {
	# Procedure called to validate isMultiTau
	return true
}

proc update_PARAM_VALUE.numChannels { PARAM_VALUE.numChannels } {
	# Procedure called to update numChannels when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.numChannels { PARAM_VALUE.numChannels } {
	# Procedure called to validate numChannels
	return true
}


proc update_MODELPARAM_VALUE.numChannels { MODELPARAM_VALUE.numChannels PARAM_VALUE.numChannels } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.numChannels}] ${MODELPARAM_VALUE.numChannels}
}

proc update_MODELPARAM_VALUE.channelSelectSize { MODELPARAM_VALUE.channelSelectSize PARAM_VALUE.channelSelectSize } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.channelSelectSize}] ${MODELPARAM_VALUE.channelSelectSize}
}

proc update_MODELPARAM_VALUE.isMultiTau { MODELPARAM_VALUE.isMultiTau PARAM_VALUE.isMultiTau } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.isMultiTau}] ${MODELPARAM_VALUE.isMultiTau}
}

