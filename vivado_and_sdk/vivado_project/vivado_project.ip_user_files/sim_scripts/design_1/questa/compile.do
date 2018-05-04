vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_gpio_v2_0_17
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/axi_uartlite_v2_0_19
vlib questa_lib/msim/microblaze_v10_0_5
vlib questa_lib/msim/axi_intc_v4_1_10
vlib questa_lib/msim/xlconcat_v2_1_1
vlib questa_lib/msim/mdm_v3_2_12
vlib questa_lib/msim/proc_sys_reset_v5_0_12
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/xlconstant_v1_1_3
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_15
vlib questa_lib/msim/fifo_generator_v13_2_1
vlib questa_lib/msim/axi_data_fifo_v2_1_14
vlib questa_lib/msim/axi_crossbar_v2_1_16
vlib questa_lib/msim/lmb_v10_v3_0_9
vlib questa_lib/msim/lmb_bram_if_cntlr_v4_0_14
vlib questa_lib/msim/blk_mem_gen_v8_4_1
vlib questa_lib/msim/axi_timer_v2_0_17
vlib questa_lib/msim/axi_uart16550_v2_0_17

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_17 questa_lib/msim/axi_gpio_v2_0_17
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_19 questa_lib/msim/axi_uartlite_v2_0_19
vmap microblaze_v10_0_5 questa_lib/msim/microblaze_v10_0_5
vmap axi_intc_v4_1_10 questa_lib/msim/axi_intc_v4_1_10
vmap xlconcat_v2_1_1 questa_lib/msim/xlconcat_v2_1_1
vmap mdm_v3_2_12 questa_lib/msim/mdm_v3_2_12
vmap proc_sys_reset_v5_0_12 questa_lib/msim/proc_sys_reset_v5_0_12
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap xlconstant_v1_1_3 questa_lib/msim/xlconstant_v1_1_3
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_15 questa_lib/msim/axi_register_slice_v2_1_15
vmap fifo_generator_v13_2_1 questa_lib/msim/fifo_generator_v13_2_1
vmap axi_data_fifo_v2_1_14 questa_lib/msim/axi_data_fifo_v2_1_14
vmap axi_crossbar_v2_1_16 questa_lib/msim/axi_crossbar_v2_1_16
vmap lmb_v10_v3_0_9 questa_lib/msim/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_14 questa_lib/msim/lmb_bram_if_cntlr_v4_0_14
vmap blk_mem_gen_v8_4_1 questa_lib/msim/blk_mem_gen_v8_4_1
vmap axi_timer_v2_0_17 questa_lib/msim/axi_timer_v2_0_17
vmap axi_uart16550_v2_0_17 questa_lib/msim/axi_uart16550_v2_0_17

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_1/design_1_clk_wiz_0_1_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_1/design_1_clk_wiz_0_1.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_0_mem_intfc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_0_memc_ui_top_axi.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_arb_row_col.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_compare.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_mach.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_arb_mux.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_rank_cntrl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_round_robin_arb.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_arb_select.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_common.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_rank_common.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_mc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_col_mach.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_queue.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_rank_mach.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_state.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_cntrl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_0_iodelay_ctrl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_0_clk_ibuf.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_0_infrastructure.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_0_tempmon.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_edge_store.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_calib_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_mc_phy.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_cc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_edge.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_tempmon.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrlvl_off_delay.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_prbs_gen.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_tap_base.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ck_addr_cmd_delay.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_prbs_rdlvl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_init.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrcal.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_mux.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_data.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_byte_group_io.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrlvl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_byte_lane.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_4lanes.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_cntlr.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_skip_calib_tap.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_dqs_found_cal_hr.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_oclkdelay_cal.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_if_post_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_rdlvl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_mc_phy_wrapper.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_po_cntlr.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_meta.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_samp.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_dqs_found_cal.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_of_pre_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_lim.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_pd.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_read.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_or.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_and.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_write.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_cmd_translator.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_simple_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_command_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_w_upsizer.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_comparator_sel_static.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_latch_and.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_r_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_axi_upsizer.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_reg_bank.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_a_upsizer.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_w_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_comparator.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_wrap_cmd.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_cmd_fsm.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_incr_cmd.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_axic_register_slice.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_cmd_arbiter.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_ar_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_latch_or.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_r_upsizer.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_reg.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_b_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_wr_cmd_fsm.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_addr_decode.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_aw_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_comparator_sel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_axi_register_slice.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_0_ecc_dec_fix.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_0_ecc_merge_enc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_0_ecc_buf.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_0_ecc_gen.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_0_fi_xor.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_0_ui_cmd.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_0_ui_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_0_ui_rd_data.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_0_ui_wr_data.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/design_1_mig_7series_0_0_mig_sim.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/design_1_mig_7series_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_17 -64 -93 \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/c450/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_gpio_0_3/sim/design_1_axi_gpio_0_3.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_0_4/sim/design_1_axi_gpio_0_4.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_19 -64 -93 \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/c778/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_uartlite_0_1/sim/design_1_axi_uartlite_0_1.vhd" \

vcom -work microblaze_v10_0_5 -64 -93 \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4f30/hdl/microblaze_v10_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_microblaze_0_1/sim/design_1_microblaze_0_1.vhd" \

vcom -work axi_intc_v4_1_10 -64 -93 \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/cf04/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_microblaze_0_axi_intc_1/sim/design_1_microblaze_0_axi_intc_1.vhd" \

vlog -work xlconcat_v2_1_1 -64 "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_microblaze_0_xlconcat_1/sim/design_1_microblaze_0_xlconcat_1.v" \

vcom -work mdm_v3_2_12 -64 -93 \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/8608/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_mdm_1_1/sim/design_1_mdm_1_1.vhd" \

vcom -work proc_sys_reset_v5_0_12 -64 -93 \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_clk_wiz_0_100M_1/sim/design_1_rst_clk_wiz_0_100M_1.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/786b/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_21/sim/bd_afc3_s01a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/92d2/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_24/sim/bd_afc3_m00s2a_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/258c/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_30/sim/bd_afc3_m00e_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_25/sim/bd_afc3_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_26/sim/bd_afc3_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_27/sim/bd_afc3_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_28/sim/bd_afc3_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_29/sim/bd_afc3_m00bn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_22/sim/bd_afc3_sarn_1.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_23/sim/bd_afc3_srn_1.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/8ad6/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_18/sim/bd_afc3_s01mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/0f5f/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_19/sim/bd_afc3_s01tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/925a/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_20/sim/bd_afc3_s01sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_13/sim/bd_afc3_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_14/sim/bd_afc3_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_15/sim/bd_afc3_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_16/sim/bd_afc3_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_17/sim/bd_afc3_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_s00mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_s00tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/1b0c/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_arsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_rsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_awsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_wsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_bsw_0.sv" \

vlog -work xlconstant_v1_1_3 -64 "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/0750/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr0_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_psr_aclk_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_psr_aclk1_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.vhd" \
"../../../bd/design_1/ip/design_1_rst_mig_7series_0_83M_0/sim/design_1_rst_mig_7series_0_83M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_15 -64 "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/3ed1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_1 -64 "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/5c35/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_1 -64 -93 \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_1 -64 "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_14 -64 "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/9909/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_16 -64 "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/c631/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_1/sim/design_1_xbar_1.v" \

vcom -work lmb_v10_v3_0_9 -64 -93 \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_dlmb_v10_1/sim/design_1_dlmb_v10_1.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_v10_1/sim/design_1_ilmb_v10_1.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_14 -64 -93 \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/226d/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_dlmb_bram_if_cntlr_1/sim/design_1_dlmb_bram_if_cntlr_1.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_bram_if_cntlr_1/sim/design_1_ilmb_bram_if_cntlr_1.vhd" \

vlog -work blk_mem_gen_v8_4_1 -64 "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_lmb_bram_1/sim/design_1_lmb_bram_1.v" \

vcom -work axi_timer_v2_0_17 -64 -93 \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/38c3/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_timer_0_0/sim/design_1_axi_timer_0_0.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \

vcom -work axi_uart16550_v2_0_17 -64 -93 \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ip/design_1_PmodBLE_0_0/ipshared/8b4d/hdl/axi_uart16550_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_PmodBLE_0_0/src/PmodBLE_axi_uart16550_0_0/sim/PmodBLE_axi_uart16550_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../vivado_project.srcs/sources_1/bd/design_1/ip/design_1_PmodBLE_0_0/ipshared/5912/src/pmod_concat.v" \
"../../../bd/design_1/ip/design_1_PmodBLE_0_0/src/PmodBLE_pmod_bridge_0_0/sim/PmodBLE_pmod_bridge_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_PmodBLE_0_0/src/PmodBLE_axi_gpio_0_0/sim/PmodBLE_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../vivado_project.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ipshared/4af4/src/PmodBLE.v" \
"../../../bd/design_1/ip/design_1_PmodBLE_0_0/sim/design_1_PmodBLE_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

