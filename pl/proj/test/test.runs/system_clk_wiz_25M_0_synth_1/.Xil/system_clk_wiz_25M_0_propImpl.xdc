set_property SRC_FILE_INFO {cfile:/ectf/pl/proj/test/bd/system/ip/system_clk_wiz_25M_0/system_clk_wiz_25M_0.xdc rfile:../../../bd/system/ip/system_clk_wiz_25M_0/system_clk_wiz_25M_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
