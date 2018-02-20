# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Auora/Documents/EE2026_labs/debounced_counter/debounced_counter.cache/wt [current_project]
set_property parent.project_path C:/Users/Auora/Documents/EE2026_labs/debounced_counter/debounced_counter.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/Auora/Documents/EE2026_labs/debounced_counter/debounced_counter.srcs/sources_1/new/d_flipflop.v
  C:/Users/Auora/Documents/EE2026_labs/debounced_counter/debounced_counter.srcs/sources_1/new/slow_clock.v
  C:/Users/Auora/Documents/EE2026_labs/debounced_counter/debounced_counter.srcs/sources_1/new/debouncer.v
  C:/Users/Auora/Documents/EE2026_labs/debounced_counter/debounced_counter.srcs/sources_1/new/ledarray_counter.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/Auora/Documents/EE2026_labs/debounced_counter/debounced_counter.srcs/constrs_1/new/constraints.xdc
set_property used_in_implementation false [get_files C:/Users/Auora/Documents/EE2026_labs/debounced_counter/debounced_counter.srcs/constrs_1/new/constraints.xdc]


synth_design -top ledarray_counter -part xc7a35tcpg236-1


write_checkpoint -force -noxdef ledarray_counter.dcp

catch { report_utilization -file ledarray_counter_utilization_synth.rpt -pb ledarray_counter_utilization_synth.pb }
