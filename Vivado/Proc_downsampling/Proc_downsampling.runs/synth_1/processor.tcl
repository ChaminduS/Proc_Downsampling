# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
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
<<<<<<< Updated upstream
set_param synth.incrementalSynthesisCache {F:/5th semester ENTC/1 - EN3030 - Circuits and Systems Design/Proc_downsampling/Vivado/.Xil/Vivado-8732-Chamindu-PC/incrSyn}
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
=======
>>>>>>> Stashed changes
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
<<<<<<< Updated upstream
set_property webtalk.parent_dir {F:/5th semester ENTC/1 - EN3030 - Circuits and Systems Design/Proc_downsampling/Vivado/Proc_Downsampling.cache/wt} [current_project]
set_property parent.project_path {F:/5th semester ENTC/1 - EN3030 - Circuits and Systems Design/Proc_downsampling/Vivado/Proc_Downsampling.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:zed:part0:1.4 [current_project]
set_property ip_output_repo {f:/5th semester ENTC/1 - EN3030 - Circuits and Systems Design/Proc_downsampling/Vivado/Proc_Downsampling.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  {F:/5th semester ENTC/1 - EN3030 - Circuits and Systems Design/Proc_downsampling/src/GPR.v}
  {F:/5th semester ENTC/1 - EN3030 - Circuits and Systems Design/Proc_downsampling/src/IRAM.v}
  {F:/5th semester ENTC/1 - EN3030 - Circuits and Systems Design/Proc_downsampling/src/MAR.v}
  {F:/5th semester ENTC/1 - EN3030 - Circuits and Systems Design/Proc_downsampling/src/MBRU.v}
  {F:/5th semester ENTC/1 - EN3030 - Circuits and Systems Design/Proc_downsampling/src/MDR.v}
  {F:/5th semester ENTC/1 - EN3030 - Circuits and Systems Design/Proc_downsampling/src/PC.v}
  {F:/5th semester ENTC/1 - EN3030 - Circuits and Systems Design/Proc_downsampling/src/control_unit.v}
  {F:/5th semester ENTC/1 - EN3030 - Circuits and Systems Design/Proc_downsampling/src/decoder.v}
  {F:/5th semester ENTC/1 - EN3030 - Circuits and Systems Design/Proc_downsampling/src/module ALU.v}
  {F:/5th semester ENTC/1 - EN3030 - Circuits and Systems Design/Proc_downsampling/src/processor.v}
=======
set_property webtalk.parent_dir E:/Users/dasun/Documents/Proc_Downsampling/Vivado/Proc_Downsampling.cache/wt [current_project]
set_property parent.project_path E:/Users/dasun/Documents/Proc_Downsampling/Vivado/Proc_Downsampling.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:zed:part0:1.4 [current_project]
set_property ip_output_repo e:/Users/dasun/Documents/Proc_Downsampling/Vivado/Proc_Downsampling.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  E:/Users/dasun/Documents/Proc_Downsampling/src/GPR.v
  E:/Users/dasun/Documents/Proc_Downsampling/src/IRAM.v
  E:/Users/dasun/Documents/Proc_Downsampling/src/MAR.v
  E:/Users/dasun/Documents/Proc_Downsampling/src/MBRU.v
  E:/Users/dasun/Documents/Proc_Downsampling/src/MDR.v
  E:/Users/dasun/Documents/Proc_Downsampling/src/PC.v
  E:/Users/dasun/Documents/Proc_Downsampling/src/control_unit.v
  E:/Users/dasun/Documents/Proc_Downsampling/src/decoder.v
  {E:/Users/dasun/Documents/Proc_Downsampling/src/module ALU.v}
  E:/Users/dasun/Documents/Proc_Downsampling/src/processor.v
>>>>>>> Stashed changes
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
<<<<<<< Updated upstream
set_param ips.enableIPCacheLiteLoad 1
=======
set_param ips.enableIPCacheLiteLoad 0
>>>>>>> Stashed changes
close [open __synthesis_is_running__ w]

synth_design -top processor -part xc7z020clg484-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef processor.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file processor_utilization_synth.rpt -pb processor_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
