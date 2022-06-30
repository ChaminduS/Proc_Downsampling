# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ADD" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DECAC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INCAC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LSHIFT1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LSHIFT2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LSHIFT8" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PASSATOC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PASSBTOC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RESET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RSHIFT4" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SUB" -parent ${Page_0}


}

proc update_PARAM_VALUE.ADD { PARAM_VALUE.ADD } {
	# Procedure called to update ADD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADD { PARAM_VALUE.ADD } {
	# Procedure called to validate ADD
	return true
}

proc update_PARAM_VALUE.DECAC { PARAM_VALUE.DECAC } {
	# Procedure called to update DECAC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DECAC { PARAM_VALUE.DECAC } {
	# Procedure called to validate DECAC
	return true
}

proc update_PARAM_VALUE.INCAC { PARAM_VALUE.INCAC } {
	# Procedure called to update INCAC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INCAC { PARAM_VALUE.INCAC } {
	# Procedure called to validate INCAC
	return true
}

proc update_PARAM_VALUE.LSHIFT1 { PARAM_VALUE.LSHIFT1 } {
	# Procedure called to update LSHIFT1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LSHIFT1 { PARAM_VALUE.LSHIFT1 } {
	# Procedure called to validate LSHIFT1
	return true
}

proc update_PARAM_VALUE.LSHIFT2 { PARAM_VALUE.LSHIFT2 } {
	# Procedure called to update LSHIFT2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LSHIFT2 { PARAM_VALUE.LSHIFT2 } {
	# Procedure called to validate LSHIFT2
	return true
}

proc update_PARAM_VALUE.LSHIFT8 { PARAM_VALUE.LSHIFT8 } {
	# Procedure called to update LSHIFT8 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LSHIFT8 { PARAM_VALUE.LSHIFT8 } {
	# Procedure called to validate LSHIFT8
	return true
}

proc update_PARAM_VALUE.PASSATOC { PARAM_VALUE.PASSATOC } {
	# Procedure called to update PASSATOC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PASSATOC { PARAM_VALUE.PASSATOC } {
	# Procedure called to validate PASSATOC
	return true
}

proc update_PARAM_VALUE.PASSBTOC { PARAM_VALUE.PASSBTOC } {
	# Procedure called to update PASSBTOC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PASSBTOC { PARAM_VALUE.PASSBTOC } {
	# Procedure called to validate PASSBTOC
	return true
}

proc update_PARAM_VALUE.RESET { PARAM_VALUE.RESET } {
	# Procedure called to update RESET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RESET { PARAM_VALUE.RESET } {
	# Procedure called to validate RESET
	return true
}

proc update_PARAM_VALUE.RSHIFT4 { PARAM_VALUE.RSHIFT4 } {
	# Procedure called to update RSHIFT4 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RSHIFT4 { PARAM_VALUE.RSHIFT4 } {
	# Procedure called to validate RSHIFT4
	return true
}

proc update_PARAM_VALUE.SUB { PARAM_VALUE.SUB } {
	# Procedure called to update SUB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SUB { PARAM_VALUE.SUB } {
	# Procedure called to validate SUB
	return true
}


proc update_MODELPARAM_VALUE.ADD { MODELPARAM_VALUE.ADD PARAM_VALUE.ADD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADD}] ${MODELPARAM_VALUE.ADD}
}

proc update_MODELPARAM_VALUE.SUB { MODELPARAM_VALUE.SUB PARAM_VALUE.SUB } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SUB}] ${MODELPARAM_VALUE.SUB}
}

proc update_MODELPARAM_VALUE.PASSATOC { MODELPARAM_VALUE.PASSATOC PARAM_VALUE.PASSATOC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PASSATOC}] ${MODELPARAM_VALUE.PASSATOC}
}

proc update_MODELPARAM_VALUE.PASSBTOC { MODELPARAM_VALUE.PASSBTOC PARAM_VALUE.PASSBTOC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PASSBTOC}] ${MODELPARAM_VALUE.PASSBTOC}
}

proc update_MODELPARAM_VALUE.INCAC { MODELPARAM_VALUE.INCAC PARAM_VALUE.INCAC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INCAC}] ${MODELPARAM_VALUE.INCAC}
}

proc update_MODELPARAM_VALUE.DECAC { MODELPARAM_VALUE.DECAC PARAM_VALUE.DECAC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DECAC}] ${MODELPARAM_VALUE.DECAC}
}

proc update_MODELPARAM_VALUE.LSHIFT1 { MODELPARAM_VALUE.LSHIFT1 PARAM_VALUE.LSHIFT1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LSHIFT1}] ${MODELPARAM_VALUE.LSHIFT1}
}

proc update_MODELPARAM_VALUE.LSHIFT2 { MODELPARAM_VALUE.LSHIFT2 PARAM_VALUE.LSHIFT2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LSHIFT2}] ${MODELPARAM_VALUE.LSHIFT2}
}

proc update_MODELPARAM_VALUE.LSHIFT8 { MODELPARAM_VALUE.LSHIFT8 PARAM_VALUE.LSHIFT8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LSHIFT8}] ${MODELPARAM_VALUE.LSHIFT8}
}

proc update_MODELPARAM_VALUE.RSHIFT4 { MODELPARAM_VALUE.RSHIFT4 PARAM_VALUE.RSHIFT4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RSHIFT4}] ${MODELPARAM_VALUE.RSHIFT4}
}

proc update_MODELPARAM_VALUE.RESET { MODELPARAM_VALUE.RESET PARAM_VALUE.RESET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RESET}] ${MODELPARAM_VALUE.RESET}
}

