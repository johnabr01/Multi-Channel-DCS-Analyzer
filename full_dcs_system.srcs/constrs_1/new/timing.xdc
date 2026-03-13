#create_clock -name sys_clk -period 10.00 -waveform {0 5} [get_ports { sys_clock_pin }];

create_generated_clock -name clk100MHz [get_pins design_1_i/clk_wiz_0/inst/plle2_adv_inst/CLKOUT0] 
create_generated_clock -name clk300MHz [get_pins design_1_i/clk_wiz_0/inst/plle2_adv_inst/CLKOUT1] 

#Crossing from 300MHz to 100 MHz are being stretched 
set_multicycle_path 3 -setup -start -from [get_clocks clk300MHz] -to [get_clocks clk100MHz] 
set_multicycle_path 2 -hold -from [get_clocks clk300MHz] -to [get_clocks clk100MHz]

#Set timing for I/O
set_input_delay 1 -clock [get_clocks clk300MHz] [get_ports detectorIn]
set_false_path -from [get_ports detectorIn] -through [get_pins design_1_i/detectorIn]

set_input_delay 1 -clock [get_clocks clk100MHz] [get_ports reset]
set_false_path -from [get_ports reset] -through [get_pins design_1_i/reset]