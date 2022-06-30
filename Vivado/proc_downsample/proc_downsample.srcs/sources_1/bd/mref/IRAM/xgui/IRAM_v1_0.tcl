# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ADDL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADDT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CLAC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DEAC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DIV" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FETCH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INAC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "JMNZ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "JMPZ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "JUMP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "L1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "L2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LDAC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MUL2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MUL256" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MUL4" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MVACC1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MVACC2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MVACC3" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MVACE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MVACL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MVACMAR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MVACT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MVC1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MVC2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MVC3" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MVL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MVT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NOP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STAC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SUBE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SUBL" -parent ${Page_0}


}

proc update_PARAM_VALUE.ADDL { PARAM_VALUE.ADDL } {
	# Procedure called to update ADDL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDL { PARAM_VALUE.ADDL } {
	# Procedure called to validate ADDL
	return true
}

proc update_PARAM_VALUE.ADDT { PARAM_VALUE.ADDT } {
	# Procedure called to update ADDT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDT { PARAM_VALUE.ADDT } {
	# Procedure called to validate ADDT
	return true
}

proc update_PARAM_VALUE.CLAC { PARAM_VALUE.CLAC } {
	# Procedure called to update CLAC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLAC { PARAM_VALUE.CLAC } {
	# Procedure called to validate CLAC
	return true
}

proc update_PARAM_VALUE.DEAC { PARAM_VALUE.DEAC } {
	# Procedure called to update DEAC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DEAC { PARAM_VALUE.DEAC } {
	# Procedure called to validate DEAC
	return true
}

proc update_PARAM_VALUE.DIV { PARAM_VALUE.DIV } {
	# Procedure called to update DIV when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DIV { PARAM_VALUE.DIV } {
	# Procedure called to validate DIV
	return true
}

proc update_PARAM_VALUE.FETCH { PARAM_VALUE.FETCH } {
	# Procedure called to update FETCH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FETCH { PARAM_VALUE.FETCH } {
	# Procedure called to validate FETCH
	return true
}

proc update_PARAM_VALUE.INAC { PARAM_VALUE.INAC } {
	# Procedure called to update INAC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INAC { PARAM_VALUE.INAC } {
	# Procedure called to validate INAC
	return true
}

proc update_PARAM_VALUE.JMNZ { PARAM_VALUE.JMNZ } {
	# Procedure called to update JMNZ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.JMNZ { PARAM_VALUE.JMNZ } {
	# Procedure called to validate JMNZ
	return true
}

proc update_PARAM_VALUE.JMPZ { PARAM_VALUE.JMPZ } {
	# Procedure called to update JMPZ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.JMPZ { PARAM_VALUE.JMPZ } {
	# Procedure called to validate JMPZ
	return true
}

proc update_PARAM_VALUE.JUMP { PARAM_VALUE.JUMP } {
	# Procedure called to update JUMP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.JUMP { PARAM_VALUE.JUMP } {
	# Procedure called to validate JUMP
	return true
}

proc update_PARAM_VALUE.L1 { PARAM_VALUE.L1 } {
	# Procedure called to update L1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.L1 { PARAM_VALUE.L1 } {
	# Procedure called to validate L1
	return true
}

proc update_PARAM_VALUE.L2 { PARAM_VALUE.L2 } {
	# Procedure called to update L2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.L2 { PARAM_VALUE.L2 } {
	# Procedure called to validate L2
	return true
}

proc update_PARAM_VALUE.LDAC { PARAM_VALUE.LDAC } {
	# Procedure called to update LDAC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LDAC { PARAM_VALUE.LDAC } {
	# Procedure called to validate LDAC
	return true
}

proc update_PARAM_VALUE.MUL2 { PARAM_VALUE.MUL2 } {
	# Procedure called to update MUL2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MUL2 { PARAM_VALUE.MUL2 } {
	# Procedure called to validate MUL2
	return true
}

proc update_PARAM_VALUE.MUL256 { PARAM_VALUE.MUL256 } {
	# Procedure called to update MUL256 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MUL256 { PARAM_VALUE.MUL256 } {
	# Procedure called to validate MUL256
	return true
}

proc update_PARAM_VALUE.MUL4 { PARAM_VALUE.MUL4 } {
	# Procedure called to update MUL4 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MUL4 { PARAM_VALUE.MUL4 } {
	# Procedure called to validate MUL4
	return true
}

proc update_PARAM_VALUE.MVACC1 { PARAM_VALUE.MVACC1 } {
	# Procedure called to update MVACC1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MVACC1 { PARAM_VALUE.MVACC1 } {
	# Procedure called to validate MVACC1
	return true
}

proc update_PARAM_VALUE.MVACC2 { PARAM_VALUE.MVACC2 } {
	# Procedure called to update MVACC2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MVACC2 { PARAM_VALUE.MVACC2 } {
	# Procedure called to validate MVACC2
	return true
}

proc update_PARAM_VALUE.MVACC3 { PARAM_VALUE.MVACC3 } {
	# Procedure called to update MVACC3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MVACC3 { PARAM_VALUE.MVACC3 } {
	# Procedure called to validate MVACC3
	return true
}

proc update_PARAM_VALUE.MVACE { PARAM_VALUE.MVACE } {
	# Procedure called to update MVACE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MVACE { PARAM_VALUE.MVACE } {
	# Procedure called to validate MVACE
	return true
}

proc update_PARAM_VALUE.MVACL { PARAM_VALUE.MVACL } {
	# Procedure called to update MVACL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MVACL { PARAM_VALUE.MVACL } {
	# Procedure called to validate MVACL
	return true
}

proc update_PARAM_VALUE.MVACMAR { PARAM_VALUE.MVACMAR } {
	# Procedure called to update MVACMAR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MVACMAR { PARAM_VALUE.MVACMAR } {
	# Procedure called to validate MVACMAR
	return true
}

proc update_PARAM_VALUE.MVACT { PARAM_VALUE.MVACT } {
	# Procedure called to update MVACT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MVACT { PARAM_VALUE.MVACT } {
	# Procedure called to validate MVACT
	return true
}

proc update_PARAM_VALUE.MVC1 { PARAM_VALUE.MVC1 } {
	# Procedure called to update MVC1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MVC1 { PARAM_VALUE.MVC1 } {
	# Procedure called to validate MVC1
	return true
}

proc update_PARAM_VALUE.MVC2 { PARAM_VALUE.MVC2 } {
	# Procedure called to update MVC2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MVC2 { PARAM_VALUE.MVC2 } {
	# Procedure called to validate MVC2
	return true
}

proc update_PARAM_VALUE.MVC3 { PARAM_VALUE.MVC3 } {
	# Procedure called to update MVC3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MVC3 { PARAM_VALUE.MVC3 } {
	# Procedure called to validate MVC3
	return true
}

proc update_PARAM_VALUE.MVL { PARAM_VALUE.MVL } {
	# Procedure called to update MVL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MVL { PARAM_VALUE.MVL } {
	# Procedure called to validate MVL
	return true
}

proc update_PARAM_VALUE.MVT { PARAM_VALUE.MVT } {
	# Procedure called to update MVT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MVT { PARAM_VALUE.MVT } {
	# Procedure called to validate MVT
	return true
}

proc update_PARAM_VALUE.NOP { PARAM_VALUE.NOP } {
	# Procedure called to update NOP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NOP { PARAM_VALUE.NOP } {
	# Procedure called to validate NOP
	return true
}

proc update_PARAM_VALUE.STAC { PARAM_VALUE.STAC } {
	# Procedure called to update STAC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STAC { PARAM_VALUE.STAC } {
	# Procedure called to validate STAC
	return true
}

proc update_PARAM_VALUE.SUBE { PARAM_VALUE.SUBE } {
	# Procedure called to update SUBE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SUBE { PARAM_VALUE.SUBE } {
	# Procedure called to validate SUBE
	return true
}

proc update_PARAM_VALUE.SUBL { PARAM_VALUE.SUBL } {
	# Procedure called to update SUBL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SUBL { PARAM_VALUE.SUBL } {
	# Procedure called to validate SUBL
	return true
}


proc update_MODELPARAM_VALUE.FETCH { MODELPARAM_VALUE.FETCH PARAM_VALUE.FETCH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FETCH}] ${MODELPARAM_VALUE.FETCH}
}

proc update_MODELPARAM_VALUE.NOP { MODELPARAM_VALUE.NOP PARAM_VALUE.NOP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NOP}] ${MODELPARAM_VALUE.NOP}
}

proc update_MODELPARAM_VALUE.LDAC { MODELPARAM_VALUE.LDAC PARAM_VALUE.LDAC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LDAC}] ${MODELPARAM_VALUE.LDAC}
}

proc update_MODELPARAM_VALUE.STAC { MODELPARAM_VALUE.STAC PARAM_VALUE.STAC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STAC}] ${MODELPARAM_VALUE.STAC}
}

proc update_MODELPARAM_VALUE.CLAC { MODELPARAM_VALUE.CLAC PARAM_VALUE.CLAC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLAC}] ${MODELPARAM_VALUE.CLAC}
}

proc update_MODELPARAM_VALUE.MVACMAR { MODELPARAM_VALUE.MVACMAR PARAM_VALUE.MVACMAR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MVACMAR}] ${MODELPARAM_VALUE.MVACMAR}
}

proc update_MODELPARAM_VALUE.MVACC1 { MODELPARAM_VALUE.MVACC1 PARAM_VALUE.MVACC1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MVACC1}] ${MODELPARAM_VALUE.MVACC1}
}

proc update_MODELPARAM_VALUE.MVACC2 { MODELPARAM_VALUE.MVACC2 PARAM_VALUE.MVACC2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MVACC2}] ${MODELPARAM_VALUE.MVACC2}
}

proc update_MODELPARAM_VALUE.MVACC3 { MODELPARAM_VALUE.MVACC3 PARAM_VALUE.MVACC3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MVACC3}] ${MODELPARAM_VALUE.MVACC3}
}

proc update_MODELPARAM_VALUE.MVACL { MODELPARAM_VALUE.MVACL PARAM_VALUE.MVACL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MVACL}] ${MODELPARAM_VALUE.MVACL}
}

proc update_MODELPARAM_VALUE.MVACE { MODELPARAM_VALUE.MVACE PARAM_VALUE.MVACE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MVACE}] ${MODELPARAM_VALUE.MVACE}
}

proc update_MODELPARAM_VALUE.MVACT { MODELPARAM_VALUE.MVACT PARAM_VALUE.MVACT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MVACT}] ${MODELPARAM_VALUE.MVACT}
}

proc update_MODELPARAM_VALUE.MVC1 { MODELPARAM_VALUE.MVC1 PARAM_VALUE.MVC1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MVC1}] ${MODELPARAM_VALUE.MVC1}
}

proc update_MODELPARAM_VALUE.MVC2 { MODELPARAM_VALUE.MVC2 PARAM_VALUE.MVC2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MVC2}] ${MODELPARAM_VALUE.MVC2}
}

proc update_MODELPARAM_VALUE.MVC3 { MODELPARAM_VALUE.MVC3 PARAM_VALUE.MVC3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MVC3}] ${MODELPARAM_VALUE.MVC3}
}

proc update_MODELPARAM_VALUE.MVT { MODELPARAM_VALUE.MVT PARAM_VALUE.MVT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MVT}] ${MODELPARAM_VALUE.MVT}
}

proc update_MODELPARAM_VALUE.INAC { MODELPARAM_VALUE.INAC PARAM_VALUE.INAC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INAC}] ${MODELPARAM_VALUE.INAC}
}

proc update_MODELPARAM_VALUE.DEAC { MODELPARAM_VALUE.DEAC PARAM_VALUE.DEAC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DEAC}] ${MODELPARAM_VALUE.DEAC}
}

proc update_MODELPARAM_VALUE.ADDT { MODELPARAM_VALUE.ADDT PARAM_VALUE.ADDT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDT}] ${MODELPARAM_VALUE.ADDT}
}

proc update_MODELPARAM_VALUE.ADDL { MODELPARAM_VALUE.ADDL PARAM_VALUE.ADDL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDL}] ${MODELPARAM_VALUE.ADDL}
}

proc update_MODELPARAM_VALUE.SUBE { MODELPARAM_VALUE.SUBE PARAM_VALUE.SUBE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SUBE}] ${MODELPARAM_VALUE.SUBE}
}

proc update_MODELPARAM_VALUE.SUBL { MODELPARAM_VALUE.SUBL PARAM_VALUE.SUBL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SUBL}] ${MODELPARAM_VALUE.SUBL}
}

proc update_MODELPARAM_VALUE.DIV { MODELPARAM_VALUE.DIV PARAM_VALUE.DIV } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DIV}] ${MODELPARAM_VALUE.DIV}
}

proc update_MODELPARAM_VALUE.MUL2 { MODELPARAM_VALUE.MUL2 PARAM_VALUE.MUL2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MUL2}] ${MODELPARAM_VALUE.MUL2}
}

proc update_MODELPARAM_VALUE.MUL4 { MODELPARAM_VALUE.MUL4 PARAM_VALUE.MUL4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MUL4}] ${MODELPARAM_VALUE.MUL4}
}

proc update_MODELPARAM_VALUE.MUL256 { MODELPARAM_VALUE.MUL256 PARAM_VALUE.MUL256 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MUL256}] ${MODELPARAM_VALUE.MUL256}
}

proc update_MODELPARAM_VALUE.JUMP { MODELPARAM_VALUE.JUMP PARAM_VALUE.JUMP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.JUMP}] ${MODELPARAM_VALUE.JUMP}
}

proc update_MODELPARAM_VALUE.JMPZ { MODELPARAM_VALUE.JMPZ PARAM_VALUE.JMPZ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.JMPZ}] ${MODELPARAM_VALUE.JMPZ}
}

proc update_MODELPARAM_VALUE.JMNZ { MODELPARAM_VALUE.JMNZ PARAM_VALUE.JMNZ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.JMNZ}] ${MODELPARAM_VALUE.JMNZ}
}

proc update_MODELPARAM_VALUE.MVL { MODELPARAM_VALUE.MVL PARAM_VALUE.MVL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MVL}] ${MODELPARAM_VALUE.MVL}
}

proc update_MODELPARAM_VALUE.L1 { MODELPARAM_VALUE.L1 PARAM_VALUE.L1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.L1}] ${MODELPARAM_VALUE.L1}
}

proc update_MODELPARAM_VALUE.L2 { MODELPARAM_VALUE.L2 PARAM_VALUE.L2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.L2}] ${MODELPARAM_VALUE.L2}
}

