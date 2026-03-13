
# Loading additional proc with user specified bodies to compute parameter values.
source [file join [file dirname [file dirname [info script]]] gui/correlator_v1_0.gtcl]

# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "numChannels" -parent ${Page_0}
  set isMultiTau [ipgui::add_param $IPINST -name "isMultiTau" -parent ${Page_0}]
  set_property tooltip {Check if a multi tau correlator configuration is desirable} ${isMultiTau}
  set numCombiners [ipgui::add_param $IPINST -name "numCombiners" -parent ${Page_0}]
  set_property tooltip {Number of combiners used. Determines total correlation length with following formula: 16 + 8 times numCombiners} ${numCombiners}
  set numDelaysPerCombiner [ipgui::add_param $IPINST -name "numDelaysPerCombiner" -parent ${Page_0}]
  set_property tooltip {Number of delays stages per combiner stage} ${numDelaysPerCombiner}


}

proc update_PARAM_VALUE.channelSelectSize { PARAM_VALUE.channelSelectSize PARAM_VALUE.numChannels } {
	# Procedure called to update channelSelectSize when any of the dependent parameters in the arguments change
	
	set channelSelectSize ${PARAM_VALUE.channelSelectSize}
	set numChannels ${PARAM_VALUE.numChannels}
	set values(numChannels) [get_property value $numChannels]
	set_property value [gen_USERPARAMETER_channelSelectSize_VALUE $values(numChannels)] $channelSelectSize
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

proc update_PARAM_VALUE.numCombiners { PARAM_VALUE.numCombiners } {
	# Procedure called to update numCombiners when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.numCombiners { PARAM_VALUE.numCombiners } {
	# Procedure called to validate numCombiners
	return true
}

proc update_PARAM_VALUE.numDelaysPerCombiner { PARAM_VALUE.numDelaysPerCombiner } {
	# Procedure called to update numDelaysPerCombiner when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.numDelaysPerCombiner { PARAM_VALUE.numDelaysPerCombiner } {
	# Procedure called to validate numDelaysPerCombiner
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

proc update_MODELPARAM_VALUE.numCombiners { MODELPARAM_VALUE.numCombiners PARAM_VALUE.numCombiners } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.numCombiners}] ${MODELPARAM_VALUE.numCombiners}
}

proc update_MODELPARAM_VALUE.numDelaysPerCombiner { MODELPARAM_VALUE.numDelaysPerCombiner PARAM_VALUE.numDelaysPerCombiner } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.numDelaysPerCombiner}] ${MODELPARAM_VALUE.numDelaysPerCombiner}
}

