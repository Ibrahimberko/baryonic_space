# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ABS_W" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DDS_AXIS_W" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DDS_LANE_W" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DDS_SAMPLE_W" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DEFAULT_PINC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FFT_CONFIG_TDATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FFT_CONFIG_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FFT_W" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IN_W" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LOG2N" -parent ${Page_0}
  ipgui::add_param $IPINST -name "N" -parent ${Page_0}


}

proc update_PARAM_VALUE.ABS_W { PARAM_VALUE.ABS_W } {
	# Procedure called to update ABS_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ABS_W { PARAM_VALUE.ABS_W } {
	# Procedure called to validate ABS_W
	return true
}

proc update_PARAM_VALUE.DDS_AXIS_W { PARAM_VALUE.DDS_AXIS_W } {
	# Procedure called to update DDS_AXIS_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DDS_AXIS_W { PARAM_VALUE.DDS_AXIS_W } {
	# Procedure called to validate DDS_AXIS_W
	return true
}

proc update_PARAM_VALUE.DDS_LANE_W { PARAM_VALUE.DDS_LANE_W } {
	# Procedure called to update DDS_LANE_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DDS_LANE_W { PARAM_VALUE.DDS_LANE_W } {
	# Procedure called to validate DDS_LANE_W
	return true
}

proc update_PARAM_VALUE.DDS_SAMPLE_W { PARAM_VALUE.DDS_SAMPLE_W } {
	# Procedure called to update DDS_SAMPLE_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DDS_SAMPLE_W { PARAM_VALUE.DDS_SAMPLE_W } {
	# Procedure called to validate DDS_SAMPLE_W
	return true
}

proc update_PARAM_VALUE.DEFAULT_PINC { PARAM_VALUE.DEFAULT_PINC } {
	# Procedure called to update DEFAULT_PINC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DEFAULT_PINC { PARAM_VALUE.DEFAULT_PINC } {
	# Procedure called to validate DEFAULT_PINC
	return true
}

proc update_PARAM_VALUE.FFT_CONFIG_TDATA { PARAM_VALUE.FFT_CONFIG_TDATA } {
	# Procedure called to update FFT_CONFIG_TDATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FFT_CONFIG_TDATA { PARAM_VALUE.FFT_CONFIG_TDATA } {
	# Procedure called to validate FFT_CONFIG_TDATA
	return true
}

proc update_PARAM_VALUE.FFT_CONFIG_WIDTH { PARAM_VALUE.FFT_CONFIG_WIDTH } {
	# Procedure called to update FFT_CONFIG_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FFT_CONFIG_WIDTH { PARAM_VALUE.FFT_CONFIG_WIDTH } {
	# Procedure called to validate FFT_CONFIG_WIDTH
	return true
}

proc update_PARAM_VALUE.FFT_W { PARAM_VALUE.FFT_W } {
	# Procedure called to update FFT_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FFT_W { PARAM_VALUE.FFT_W } {
	# Procedure called to validate FFT_W
	return true
}

proc update_PARAM_VALUE.IN_W { PARAM_VALUE.IN_W } {
	# Procedure called to update IN_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IN_W { PARAM_VALUE.IN_W } {
	# Procedure called to validate IN_W
	return true
}

proc update_PARAM_VALUE.LOG2N { PARAM_VALUE.LOG2N } {
	# Procedure called to update LOG2N when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LOG2N { PARAM_VALUE.LOG2N } {
	# Procedure called to validate LOG2N
	return true
}

proc update_PARAM_VALUE.N { PARAM_VALUE.N } {
	# Procedure called to update N when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.N { PARAM_VALUE.N } {
	# Procedure called to validate N
	return true
}


proc update_MODELPARAM_VALUE.N { MODELPARAM_VALUE.N PARAM_VALUE.N } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.N}] ${MODELPARAM_VALUE.N}
}

proc update_MODELPARAM_VALUE.LOG2N { MODELPARAM_VALUE.LOG2N PARAM_VALUE.LOG2N } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LOG2N}] ${MODELPARAM_VALUE.LOG2N}
}

proc update_MODELPARAM_VALUE.IN_W { MODELPARAM_VALUE.IN_W PARAM_VALUE.IN_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IN_W}] ${MODELPARAM_VALUE.IN_W}
}

proc update_MODELPARAM_VALUE.DDS_SAMPLE_W { MODELPARAM_VALUE.DDS_SAMPLE_W PARAM_VALUE.DDS_SAMPLE_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DDS_SAMPLE_W}] ${MODELPARAM_VALUE.DDS_SAMPLE_W}
}

proc update_MODELPARAM_VALUE.DDS_LANE_W { MODELPARAM_VALUE.DDS_LANE_W PARAM_VALUE.DDS_LANE_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DDS_LANE_W}] ${MODELPARAM_VALUE.DDS_LANE_W}
}

proc update_MODELPARAM_VALUE.DDS_AXIS_W { MODELPARAM_VALUE.DDS_AXIS_W PARAM_VALUE.DDS_AXIS_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DDS_AXIS_W}] ${MODELPARAM_VALUE.DDS_AXIS_W}
}

proc update_MODELPARAM_VALUE.FFT_W { MODELPARAM_VALUE.FFT_W PARAM_VALUE.FFT_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FFT_W}] ${MODELPARAM_VALUE.FFT_W}
}

proc update_MODELPARAM_VALUE.ABS_W { MODELPARAM_VALUE.ABS_W PARAM_VALUE.ABS_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ABS_W}] ${MODELPARAM_VALUE.ABS_W}
}

proc update_MODELPARAM_VALUE.FFT_CONFIG_WIDTH { MODELPARAM_VALUE.FFT_CONFIG_WIDTH PARAM_VALUE.FFT_CONFIG_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FFT_CONFIG_WIDTH}] ${MODELPARAM_VALUE.FFT_CONFIG_WIDTH}
}

proc update_MODELPARAM_VALUE.FFT_CONFIG_TDATA { MODELPARAM_VALUE.FFT_CONFIG_TDATA PARAM_VALUE.FFT_CONFIG_TDATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FFT_CONFIG_TDATA}] ${MODELPARAM_VALUE.FFT_CONFIG_TDATA}
}

proc update_MODELPARAM_VALUE.DEFAULT_PINC { MODELPARAM_VALUE.DEFAULT_PINC PARAM_VALUE.DEFAULT_PINC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DEFAULT_PINC}] ${MODELPARAM_VALUE.DEFAULT_PINC}
}

