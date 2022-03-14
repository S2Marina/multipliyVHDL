transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib MySoc
vmap MySoc MySoc
vlog -vlog01compat -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/altera_reset_controller.v}
vlog -vlog01compat -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/altera_reset_synchronizer.v}
vlog -vlog01compat -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/altera_avalon_sc_fifo.v}
vlog -vlog01compat -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/MySoc_go.v}
vlog -vlog01compat -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/MySoc_prt.v}
vlog -vlog01compat -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/MySoc_res.v}
vlog -vlog01compat -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/MySoc_m.v}
vlog -vlog01compat -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/MySoc_sysid.v}
vlog -vlog01compat -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/MySoc_jtag.v}
vlog -vlog01compat -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/MySoc_ram.v}
vlog -vlog01compat -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/MySoc_nios.v}
vlog -vlog01compat -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/MySoc_nios_jtag_debug_module_sysclk.v}
vlog -vlog01compat -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/MySoc_nios_jtag_debug_module_tck.v}
vlog -vlog01compat -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/MySoc_nios_jtag_debug_module_wrapper.v}
vlog -vlog01compat -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/MySoc_nios_oci_test_bench.v}
vlog -vlog01compat -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/MySoc_nios_test_bench.v}
vlog -sv -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/MySoc_irq_mapper.sv}
vlog -sv -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/altera_merlin_arbitrator.sv}
vlog -sv -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/MySoc_rsp_xbar_mux_001.sv}
vlog -sv -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/MySoc_rsp_xbar_mux.sv}
vlog -sv -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/MySoc_rsp_xbar_demux_004.sv}
vlog -sv -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/MySoc_rsp_xbar_demux.sv}
vlog -sv -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/MySoc_cmd_xbar_mux.sv}
vlog -sv -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/MySoc_cmd_xbar_demux_001.sv}
vlog -sv -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/MySoc_cmd_xbar_demux.sv}
vlog -sv -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/MySoc_id_router_004.sv}
vlog -sv -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/MySoc_id_router.sv}
vlog -sv -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/MySoc_addr_router_001.sv}
vlog -sv -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/MySoc_addr_router.sv}
vlog -sv -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/altera_merlin_slave_agent.sv}
vlog -sv -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/altera_merlin_burst_uncompressor.sv}
vlog -sv -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/altera_merlin_master_agent.sv}
vlog -sv -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/altera_merlin_slave_translator.sv}
vlog -sv -work MySoc +incdir+C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/submodules/altera_merlin_master_translator.sv}
vcom -93 -work work {C:/Users/marina/Documents/multiplicador_booth/Topo.vhd}
vcom -93 -work MySoc {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/MySoc.vhd}
vcom -93 -work MySoc {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/mysoc_nios_instruction_master_translator.vhd}
vcom -93 -work MySoc {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/mysoc_nios_data_master_translator.vhd}
vcom -93 -work MySoc {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/mysoc_nios_jtag_debug_module_translator.vhd}
vcom -93 -work MySoc {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/mysoc_ram_s1_translator.vhd}
vcom -93 -work MySoc {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/mysoc_jtag_avalon_jtag_slave_translator.vhd}
vcom -93 -work MySoc {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/mysoc_sysid_control_slave_translator.vhd}
vcom -93 -work MySoc {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/mysoc_m_s1_translator.vhd}
vcom -93 -work MySoc {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/mysoc_res_s1_translator.vhd}
vcom -93 -work MySoc {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/mysoc_rst_controller.vhd}
vcom -93 -work MySoc {C:/Users/marina/Documents/multiplicador_booth/MySoc/synthesis/mysoc_rst_controller_001.vhd}
vcom -93 -work work {C:/Users/marina/Documents/booth/booth.vhd}
vcom -93 -work work {C:/Users/marina/Documents/booth/decodificador.vhd}
vcom -93 -work work {C:/Users/marina/Documents/booth/somador.vhd}

