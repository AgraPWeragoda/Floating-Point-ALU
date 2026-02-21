transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr "+incdir+D:/Xilinx/2025.1/Vivado/data/rsb/busdef" -l xpm -l xil_defaultlib \
"D:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  -incr \
"D:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+D:/Xilinx/2025.1/Vivado/data/rsb/busdef" -l xpm -l xil_defaultlib \
"../../../ALUFinal.srcs/sources_1/new/ALU.v" \
"../../../ALUFinal.srcs/sources_1/new/decoder.v" \
"../../../ALUFinal.srcs/sources_1/imports/new/ledDisplay.v" \
"../../../ALUFinal.srcs/sources_1/new/core.v" \

vlog -work xil_defaultlib \
"glbl.v"

