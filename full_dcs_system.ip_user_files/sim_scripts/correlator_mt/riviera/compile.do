transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {C:/Users/johny/BOILresearch/full_dcs_system_6_23_23.xpr/full_dcs_system/full_dcs_system.cache/compile_simlib/riviera}
vlib riviera/xpm
vlib riviera/xbip_utils_v3_0_10
vlib riviera/axi_utils_v2_0_6
vlib riviera/xbip_pipe_v3_0_6
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_dsp48_addsub_v3_0_6
vlib riviera/xbip_dsp48_multadd_v3_0_6
vlib riviera/xbip_bram18k_v3_0_6
vlib riviera/mult_gen_v12_0_18
vlib riviera/floating_point_v7_1_15
vlib riviera/xil_defaultlib

vlog -work xpm  -incr -l xpm -l xbip_utils_v3_0_10 -l axi_utils_v2_0_6 -l xbip_pipe_v3_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_dsp48_addsub_v3_0_6 -l xbip_dsp48_multadd_v3_0_6 -l xbip_bram18k_v3_0_6 -l mult_gen_v12_0_18 -l floating_point_v7_1_15 -l xil_defaultlib \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_10 -93  -incr \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93  -incr \
"../../../ipstatic/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93  -incr \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93  -incr \
"../../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93  -incr \
"../../../ipstatic/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -93  -incr \
"../../../ipstatic/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93  -incr \
"../../../ipstatic/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_18 -93  -incr \
"../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_15 -93  -incr \
"../../../ipstatic/hdl/floating_point_v7_1_rfs.vhd" \

vlog -work floating_point_v7_1_15  -incr -v2k5 -l xpm -l xbip_utils_v3_0_10 -l axi_utils_v2_0_6 -l xbip_pipe_v3_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_dsp48_addsub_v3_0_6 -l xbip_dsp48_multadd_v3_0_6 -l xbip_bram18k_v3_0_6 -l mult_gen_v12_0_18 -l floating_point_v7_1_15 -l xil_defaultlib \
"../../../ipstatic/hdl/floating_point_v7_1_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 -l xpm -l xbip_utils_v3_0_10 -l axi_utils_v2_0_6 -l xbip_pipe_v3_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_dsp48_addsub_v3_0_6 -l xbip_dsp48_multadd_v3_0_6 -l xbip_bram18k_v3_0_6 -l mult_gen_v12_0_18 -l floating_point_v7_1_15 -l xil_defaultlib \
"../../../../full_dcs_system.gen/sources_1/ip/correlator_mt/ip/single_divider/sim/single_divider.v" \
"../../../../full_dcs_system.gen/sources_1/ip/correlator_mt/ip/int32_to_single/sim/int32_to_single.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../../full_dcs_system.gen/sources_1/ip/correlator_mt/imports/design/time_multiplex.vhd" \
"../../../../full_dcs_system.gen/sources_1/ip/correlator_mt/imports/design/combiner.vhd" \
"../../../../full_dcs_system.gen/sources_1/ip/correlator_mt/imports/design/correlator.vhd" \
"../../../../full_dcs_system.gen/sources_1/ip/correlator_mt/imports/design/counter.vhd" \
"../../../../full_dcs_system.gen/sources_1/ip/correlator_mt/imports/design/dsp_multiply_and_accumulate.vhd" \
"../../../../full_dcs_system.gen/sources_1/ip/correlator_mt/imports/design/linear_buffer.vhd" \
"../../../../full_dcs_system.gen/sources_1/ip/correlator_mt/imports/design/linear_correlator.vhd" \
"../../../../full_dcs_system.gen/sources_1/ip/correlator_mt/imports/design/mac_counter.vhd" \
"../../../../full_dcs_system.gen/sources_1/ip/correlator_mt/imports/design/multi_tau_correlator.vhd" \
"../../../../full_dcs_system.gen/sources_1/ip/correlator_mt/imports/design/multiplication_accumulator.vhd" \
"../../../../full_dcs_system.gen/sources_1/ip/correlator_mt/imports/design/scaler.vhd" \
"../../../../full_dcs_system.gen/sources_1/ip/correlator_mt/imports/design/top.vhd" \
"../../../../full_dcs_system.gen/sources_1/ip/correlator_mt/sim/correlator_mt.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

