-makelib ies_lib/xil_defaultlib -sv \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/lib_pkg_v1_0_2 \
  "../../../../bd/system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_1 \
  "../../../../bd/system/ipshared/5c35/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_1 \
  "../../../../bd/system/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_1 \
  "../../../../bd/system/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/lib_fifo_v1_0_10 \
  "../../../../bd/system/ipshared/f10a/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_srl_fifo_v1_0_2 \
  "../../../../bd/system/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/axi_datamover_v5_1_17 \
  "../../../../bd/system/ipshared/71f3/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_sg_v4_1_8 \
  "../../../../bd/system/ipshared/5f94/hdl/axi_sg_v4_1_rfs.vhd" \
-endlib
-makelib ies_lib/axi_dma_v7_1_16 \
  "../../../../bd/system/ipshared/bf8c/hdl/axi_dma_v7_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_dma_0_0/sim/system_axi_dma_0_0.vhd" \
-endlib
-makelib ies_lib/axi_lite_ipif_v3_0_4 \
  "../../../../bd/system/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_intc_v4_1_10 \
  "../../../../bd/system/ipshared/cf04/hdl/axi_intc_v4_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_intc_0_0/sim/system_axi_intc_0_0.vhd" \
-endlib
-makelib ies_lib/axis_infrastructure_v1_1_0 \
  "../../../../bd/system/ipshared/0ab1/hdl/axis_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axis_data_fifo_v1_1_16 \
  "../../../../bd/system/ipshared/e3dd/hdl/axis_data_fifo_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axis_data_fifo_0_0/sim/system_axis_data_fifo_0_0.v" \
  "../../../bd/system/ip/system_axis_data_fifo_1_0/sim/system_axis_data_fifo_1_0.v" \
  "/ectf/pl/proj/test/bd/system/ip/system_birdwtch_iface_0_0/system_birdwtch_iface_0_0_sim_netlist.v" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_1 \
  "../../../../bd/system/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_blk_mem_gen_0_0/sim/system_blk_mem_gen_0_0.v" \
  "../../../bd/system/ip/system_clk_wiz_25M_0/system_clk_wiz_25M_0_mmcm_pll_drp.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_clk_wiz_25M_0/proc_common_v3_00_a/hdl/src/vhdl/system_clk_wiz_25M_0_conv_funs_pkg.vhd" \
  "../../../bd/system/ip/system_clk_wiz_25M_0/proc_common_v3_00_a/hdl/src/vhdl/system_clk_wiz_25M_0_proc_common_pkg.vhd" \
  "../../../bd/system/ip/system_clk_wiz_25M_0/proc_common_v3_00_a/hdl/src/vhdl/system_clk_wiz_25M_0_ipif_pkg.vhd" \
  "../../../bd/system/ip/system_clk_wiz_25M_0/proc_common_v3_00_a/hdl/src/vhdl/system_clk_wiz_25M_0_family_support.vhd" \
  "../../../bd/system/ip/system_clk_wiz_25M_0/proc_common_v3_00_a/hdl/src/vhdl/system_clk_wiz_25M_0_family.vhd" \
  "../../../bd/system/ip/system_clk_wiz_25M_0/proc_common_v3_00_a/hdl/src/vhdl/system_clk_wiz_25M_0_soft_reset.vhd" \
  "../../../bd/system/ip/system_clk_wiz_25M_0/proc_common_v3_00_a/hdl/src/vhdl/system_clk_wiz_25M_0_pselect_f.vhd" \
  "../../../bd/system/ip/system_clk_wiz_25M_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/system_clk_wiz_25M_0_address_decoder.vhd" \
  "../../../bd/system/ip/system_clk_wiz_25M_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/system_clk_wiz_25M_0_slave_attachment.vhd" \
  "../../../bd/system/ip/system_clk_wiz_25M_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/system_clk_wiz_25M_0_axi_lite_ipif.vhd" \
  "../../../bd/system/ip/system_clk_wiz_25M_0/system_clk_wiz_25M_0_clk_wiz_drp.vhd" \
  "../../../bd/system/ip/system_clk_wiz_25M_0/system_clk_wiz_25M_0_axi_clk_config.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_clk_wiz_25M_0/system_clk_wiz_25M_0_clk_wiz.v" \
  "../../../bd/system/ip/system_clk_wiz_25M_0/system_clk_wiz_25M_0.v" \
-endlib
-makelib ies_lib/lmb_bram_if_cntlr_v4_0_14 \
  "../../../../bd/system/ipshared/226d/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_data_lmb_bram_if_cntlr_1_0/sim/system_data_lmb_bram_if_cntlr_1_0.vhd" \
-endlib
-makelib ies_lib/lmb_v10_v3_0_9 \
  "../../../../bd/system/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_data_lmb_v10_1_0/sim/system_data_lmb_v10_1_0.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_3_6 \
  "../../../../bd/system/ipshared/2751/simulation/blk_mem_gen_v8_3.v" \
-endlib
-makelib ies_lib/axi_bram_ctrl_v4_0_13 \
  "../../../../bd/system/ipshared/20fd/hdl/axi_bram_ctrl_v4_0_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_dma_axi_bram_ctrl_1_0/sim/system_dma_axi_bram_ctrl_1_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_dma_blk_mem_gen_1_0/sim/system_dma_blk_mem_gen_1_0.v" \
-endlib
-makelib ies_lib/interrupt_control_v3_1_4 \
  "../../../../bd/system/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_gpio_v2_0_17 \
  "../../../../bd/system/ipshared/c450/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_fifo_count_axi_gpio_0_0/sim/system_fifo_count_axi_gpio_0_0.vhd" \
  "../../../bd/system/ip/system_i2s_output_1_0/sim/system_i2s_output_1_0.vhd" \
  "../../../bd/system/ip/system_ins_lmb_bram_if_cntlr_0_0/sim/system_ins_lmb_bram_if_cntlr_0_0.vhd" \
  "../../../bd/system/ip/system_ins_lmb_v10_0_0/sim/system_ins_lmb_v10_0_0.vhd" \
  "../../../bd/system/ip/system_mb_dma_axi_bram_ctrl_0_0/sim/system_mb_dma_axi_bram_ctrl_0_0.vhd" \
-endlib
-makelib ies_lib/mdm_v3_2_12 \
  "../../../../bd/system/ipshared/8608/hdl/mdm_v3_2_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_mdm_0_0/sim/system_mdm_0_0.vhd" \
-endlib
-makelib ies_lib/microblaze_v10_0_5 \
  "../../../../bd/system/ipshared/4f30/hdl/microblaze_v10_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_microblaze_0_0/sim/system_microblaze_0_0.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_12 \
  "../../../../bd/system/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_proc_sys_reset_0_0/sim/system_proc_sys_reset_0_0.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../bd/system/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/axi_protocol_checker_v2_0_1 -sv \
  "../../../../bd/system/ipshared/3b24/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/axi_vip_v1_1_1 -sv \
  "../../../../bd/system/ipshared/a16a/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_3 -sv \
  "../../../../bd/system/ipshared/1313/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ipshared/a485/hdl/PWM_AXI.sv" \
  "../../../bd/system/ipshared/a485/hdl/PWM_v2_0.sv" \
  "../../../bd/system/ip/system_rgb_PWM_0_0/sim/system_rgb_PWM_0_0.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_rst_ps7_0_100M_0/sim/system_rst_ps7_0_100M_0.vhd" \
  "../../../bd/system/ip/system_share_axi_bram_ctrl_0_0/sim/system_share_axi_bram_ctrl_0_0.vhd" \
  "../../../bd/system/ip/system_share_axi_bram_ctrl_1_0/sim/system_share_axi_bram_ctrl_1_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_share_blk_mem_gen_1_0/sim/system_share_blk_mem_gen_1_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/system_xadc_wiz_0_0_conv_funs_pkg.vhd" \
  "../../../bd/system/ip/system_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/system_xadc_wiz_0_0_proc_common_pkg.vhd" \
  "../../../bd/system/ip/system_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/system_xadc_wiz_0_0_ipif_pkg.vhd" \
  "../../../bd/system/ip/system_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/system_xadc_wiz_0_0_family_support.vhd" \
  "../../../bd/system/ip/system_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/system_xadc_wiz_0_0_family.vhd" \
  "../../../bd/system/ip/system_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/system_xadc_wiz_0_0_soft_reset.vhd" \
  "../../../bd/system/ip/system_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/system_xadc_wiz_0_0_pselect_f.vhd" \
  "../../../bd/system/ip/system_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/system_xadc_wiz_0_0_address_decoder.vhd" \
  "../../../bd/system/ip/system_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/system_xadc_wiz_0_0_slave_attachment.vhd" \
  "../../../bd/system/ip/system_xadc_wiz_0_0/interrupt_control_v2_01_a/hdl/src/vhdl/system_xadc_wiz_0_0_interrupt_control.vhd" \
  "../../../bd/system/ip/system_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/system_xadc_wiz_0_0_axi_lite_ipif.vhd" \
  "../../../bd/system/ip/system_xadc_wiz_0_0/system_xadc_wiz_0_0_xadc_core_drp.vhd" \
  "../../../bd/system/ip/system_xadc_wiz_0_0/system_xadc_wiz_0_0_axi_xadc.vhd" \
  "../../../bd/system/ip/system_xadc_wiz_0_0/system_xadc_wiz_0_0.vhd" \
-endlib
-makelib ies_lib/xlconcat_v2_1_1 \
  "../../../../bd/system/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_xlconcat_2_0/sim/system_xlconcat_2_0.v" \
-endlib
-makelib ies_lib/xlconstant_v1_1_3 \
  "../../../../bd/system/ipshared/0750/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_xlconstant_0_0/sim/system_xlconstant_0_0.v" \
  "../../../bd/system/ip/system_xlconstant_1_0/sim/system_xlconstant_1_0.v" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_15 \
  "../../../../bd/system/ipshared/3ed1/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_14 \
  "../../../../bd/system/ipshared/9909/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_16 \
  "../../../../bd/system/ipshared/c631/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_xbar_1/sim/system_xbar_1.v" \
  "../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/sim/system.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_splitchannel_0_0/sim/system_splitchannel_0_0.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_15 \
  "../../../../bd/system/ipshared/ff69/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_auto_pc_11/sim/system_auto_pc_11.v" \
  "../../../bd/system/ip/system_auto_pc_10/sim/system_auto_pc_10.v" \
  "../../../bd/system/ip/system_auto_pc_9/sim/system_auto_pc_9.v" \
  "../../../bd/system/ip/system_auto_pc_12/sim/system_auto_pc_12.v" \
  "../../../bd/system/ip/system_auto_pc_6/sim/system_auto_pc_6.v" \
  "../../../bd/system/ip/system_auto_pc_5/sim/system_auto_pc_5.v" \
  "../../../bd/system/ip/system_auto_pc_4/sim/system_auto_pc_4.v" \
  "../../../bd/system/ip/system_auto_pc_3/sim/system_auto_pc_3.v" \
  "../../../bd/system/ip/system_auto_pc_2/sim/system_auto_pc_2.v" \
  "../../../bd/system/ip/system_auto_pc_1/sim/system_auto_pc_1.v" \
  "../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
  "../../../bd/system/ip/system_auto_pc_8/sim/system_auto_pc_8.v" \
  "../../../bd/system/ip/system_auto_pc_7/sim/system_auto_pc_7.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

