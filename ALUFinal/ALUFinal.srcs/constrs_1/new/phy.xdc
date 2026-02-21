set_property PACKAGE_PIN D18 [get_ports {leds[3]}]
set_property PACKAGE_PIN G14 [get_ports {leds[2]}]
set_property PACKAGE_PIN M15 [get_ports {leds[1]}]
set_property PACKAGE_PIN M14 [get_ports {leds[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {leds[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {leds[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {leds[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {leds[0]}]
set_property PACKAGE_PIN L16 [get_ports clk]
set_property IOSTANDARD LVCMOS18 [get_ports clk]


create_clock -period 8.000 -name clk -waveform {0.000 4.000} [get_ports clk]
create_generated_clock -name newClk -source [get_ports clk] -divide_by 100 [get_pins nclk/state_reg/Q]
#create_generated_clock -name newClk -source [get_ports clk] -divide_by 2 [get_pins nclk/state_reg/Q]


set_property IOSTANDARD LVCMOS18 [get_ports reset_btn]
set_property PACKAGE_PIN V16 [get_ports reset_btn]

set_property IOSTANDARD LVCMOS18 [get_ports uart_rx]
set_property IOSTANDARD LVCMOS18 [get_ports uart_tx]
set_property PACKAGE_PIN K16 [get_ports uart_rx]
set_property PACKAGE_PIN K14 [get_ports uart_tx]

