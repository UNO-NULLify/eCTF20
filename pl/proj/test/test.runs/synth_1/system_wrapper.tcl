# 
# Synthesis run script generated by Vivado
# 

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
create_project -in_memory -part xc7z007sclg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/test.cache/wt [current_project]
set_property parent.project_path C:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/test.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_repo_paths c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/repo [current_project]
set_property ip_output_repo c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/repo/cache [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib C:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/src/bd/system/hdl/system_wrapper.vhd
add_files C:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/system.bd
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_axi_dma_0_0/system_axi_dma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_axi_dma_0_0/system_axi_dma_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_axi_dma_0_0/system_axi_dma_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_axi_intc_0_0/system_axi_intc_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_axi_intc_0_0/system_axi_intc_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_axi_intc_0_0/system_axi_intc_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_axis_data_fifo_0_0/system_axis_data_fifo_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_axis_data_fifo_0_0/system_axis_data_fifo_0_0/system_axis_data_fifo_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_axis_data_fifo_0_0/system_axis_data_fifo_0_0/system_axis_data_fifo_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_axis_data_fifo_1_0/system_axis_data_fifo_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_axis_data_fifo_1_0/system_axis_data_fifo_1_0/system_axis_data_fifo_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_blk_mem_gen_0_0/system_blk_mem_gen_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_clk_wiz_25M_0/system_clk_wiz_25M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_clk_wiz_25M_0/system_clk_wiz_25M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_clk_wiz_25M_0/system_clk_wiz_25M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_data_lmb_v10_1_0/system_data_lmb_v10_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_fifo_count_axi_gpio_0_0/system_fifo_count_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_fifo_count_axi_gpio_0_0/system_fifo_count_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_fifo_count_axi_gpio_0_0/system_fifo_count_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_ins_lmb_v10_0_0/system_ins_lmb_v10_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_microblaze_0_0/system_microblaze_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_microblaze_0_0/system_microblaze_0_0_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_proc_sys_reset_0_0/system_proc_sys_reset_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_proc_sys_reset_0_0/system_proc_sys_reset_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_proc_sys_reset_0_0/system_proc_sys_reset_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_rst_ps7_0_100M_0/system_rst_ps7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_rst_ps7_0_100M_0/system_rst_ps7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_share_blk_mem_gen_1_0/system_share_blk_mem_gen_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_xadc_wiz_0_0/system_xadc_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_xadc_wiz_0_0/system_xadc_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_5/bd_919a_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_8/bd_919a_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_6/bd_919a_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_7/bd_919a_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_1/bd_919a_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_1/bd_919a_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_smartconnect_0_0/ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_axi_timebase_wdt_0_0/system_axi_timebase_wdt_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_axi_timebase_wdt_0_0/system_axi_timebase_wdt_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_auto_pc_3/system_auto_pc_3_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_auto_pc_2/system_auto_pc_2_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_auto_pc_4/system_auto_pc_4_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_auto_pc_1/system_auto_pc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_auto_pc_0/system_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/system_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/src/constraints/Cora-Z7-Master.xdc
set_property used_in_implementation false [get_files C:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/src/constraints/Cora-Z7-Master.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top system_wrapper -part xc7z007sclg400-1 -flatten_hierarchy none -directive RuntimeOptimized -fsm_extraction off


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef system_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file system_wrapper_utilization_synth.rpt -pb system_wrapper_utilization_synth.pb"
