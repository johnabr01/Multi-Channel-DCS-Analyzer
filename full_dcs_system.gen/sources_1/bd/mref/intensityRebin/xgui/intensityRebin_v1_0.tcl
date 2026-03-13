# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "countInSize" -parent ${Page_0}
  ipgui::add_param $IPINST -name "pointsPerIntensity" -parent ${Page_0}


}

proc update_PARAM_VALUE.countInSize { PARAM_VALUE.countInSize } {
	# Procedure called to update countInSize when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.countInSize { PARAM_VALUE.countInSize } {
	# Procedure called to validate countInSize
	return true
}

proc update_PARAM_VALUE.pointsPerIntensity { PARAM_VALUE.pointsPerIntensity } {
	# Procedure called to update pointsPerIntensity when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.pointsPerIntensity { PARAM_VALUE.pointsPerIntensity } {
	# Procedure called to validate pointsPerIntensity
	return true
}


proc update_MODELPARAM_VALUE.countInSize { MODELPARAM_VALUE.countInSize PARAM_VALUE.countInSize } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.countInSize}] ${MODELPARAM_VALUE.countInSize}
}

proc update_MODELPARAM_VALUE.pointsPerIntensity { MODELPARAM_VALUE.pointsPerIntensity PARAM_VALUE.pointsPerIntensity } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.pointsPerIntensity}] ${MODELPARAM_VALUE.pointsPerIntensity}
}

