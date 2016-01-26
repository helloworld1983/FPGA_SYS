# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config  -ruleid {1}  -id {BD 41-968}  -string {{xillybus_S_AXI}}  -new_severity {INFO} 
set_msg_config  -ruleid {2}  -id {BD 41-967}  -string {{xillybus_ip_0/xillybus_M_AXI}}  -new_severity {INFO} 
set_msg_config  -ruleid {3}  -id {BD 41-967}  -string {{xillybus_ip_0/xillybus_S_AXI}}  -new_severity {INFO} 
set_msg_config  -ruleid {4}  -id {BD 41-678}  -string {{xillybus_S_AXI/Reg}}  -new_severity {INFO} 
set_msg_config  -ruleid {5}  -id {BD 41-1356}  -string {{xillybus_S_AXI/Reg}}  -new_severity {INFO} 
set_msg_config  -ruleid {6}  -id {BD 41-759}  -string {{xlconcat_0/In}}  -new_severity {INFO} 
set_msg_config  -ruleid {7}  -id {Netlist 29-160}  -string {{vivado_system_processing_system7}}  -new_severity {INFO} 
create_project -in_memory -part xc7z010clg400-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/FPGAPrj/VIVADO/FPGA_SYS/vhdl/vivado/xillydemo.cache/wt [current_project]
set_property parent.project_path C:/FPGAPrj/VIVADO/FPGA_SYS/vhdl/vivado/xillydemo.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_repo_paths c:/FPGAPrj/VIVADO/FPGA_SYS/vivado-essentials/vivado-ip [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
add_files -quiet C:/FPGAPrj/VIVADO/FPGA_SYS/vhdl/vivado/xillydemo.runs/vga_fifo_synth_1/vga_fifo.dcp
set_property used_in_implementation false [get_files C:/FPGAPrj/VIVADO/FPGA_SYS/vhdl/vivado/xillydemo.runs/vga_fifo_synth_1/vga_fifo.dcp]
add_files -quiet C:/FPGAPrj/VIVADO/FPGA_SYS/vhdl/vivado/xillydemo.runs/fifo_32x512_synth_1/fifo_32x512.dcp
set_property used_in_implementation false [get_files C:/FPGAPrj/VIVADO/FPGA_SYS/vhdl/vivado/xillydemo.runs/fifo_32x512_synth_1/fifo_32x512.dcp]
add_files -quiet C:/FPGAPrj/VIVADO/FPGA_SYS/vhdl/vivado/xillydemo.runs/fifo_8x2048_synth_1/fifo_8x2048.dcp
set_property used_in_implementation false [get_files C:/FPGAPrj/VIVADO/FPGA_SYS/vhdl/vivado/xillydemo.runs/fifo_8x2048_synth_1/fifo_8x2048.dcp]
add_files C:/FPGAPrj/VIVADO/FPGA_SYS/vivado-essentials/vivado_system/vivado_system.bd
set_property used_in_implementation false [get_files -all c:/FPGAPrj/VIVADO/FPGA_SYS/vivado-essentials/vivado_system/ip/vivado_system_processing_system7_0_0/vivado_system_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/FPGAPrj/VIVADO/FPGA_SYS/vivado-essentials/vivado_system/ip/vivado_system_rst_processing_system7_0_100M_0/vivado_system_rst_processing_system7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/FPGAPrj/VIVADO/FPGA_SYS/vivado-essentials/vivado_system/ip/vivado_system_rst_processing_system7_0_100M_0/vivado_system_rst_processing_system7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/FPGAPrj/VIVADO/FPGA_SYS/vivado-essentials/vivado_system/ip/vivado_system_rst_processing_system7_0_100M_0/vivado_system_rst_processing_system7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/FPGAPrj/VIVADO/FPGA_SYS/vivado-essentials/vivado_system/ip/vivado_system_xbar_0/vivado_system_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/FPGAPrj/VIVADO/FPGA_SYS/vivado-essentials/vivado_system/ip/vivado_system_auto_pc_0/vivado_system_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/FPGAPrj/VIVADO/FPGA_SYS/vivado-essentials/vivado_system/vivado_system_ooc.xdc]
set_property is_locked true [get_files C:/FPGAPrj/VIVADO/FPGA_SYS/vivado-essentials/vivado_system/vivado_system.bd]

read_verilog -library xil_defaultlib {
  C:/FPGAPrj/VIVADO/FPGA_SYS/vhdl/src/smbus.v
  C:/FPGAPrj/VIVADO/FPGA_SYS/vhdl/src/i2s_audio.v
  C:/FPGAPrj/VIVADO/FPGA_SYS/vhdl/src/xillybus.v
  C:/FPGAPrj/VIVADO/FPGA_SYS/vhdl/src/xillybus_core.v
  C:/FPGAPrj/VIVADO/FPGA_SYS/vivado-essentials/system.v
}
read_vhdl -library xil_defaultlib {
  C:/FPGAPrj/VIVADO/FPGA_SYS/vhdl/src/xillydemo.vhd
  C:/FPGAPrj/VIVADO/FPGA_SYS/vhdl/vivado/xillydemo.srcs/sources_1/imports/CONTROLLOR/NANY_VHDL.vhd
  C:/FPGAPrj/VIVADO/FPGA_SYS/vhdl/vivado/xillydemo.srcs/sources_1/imports/CONTROLLOR/RSET_VHDL.vhd
  C:/FPGAPrj/VIVADO/FPGA_SYS/vhdl/vivado/xillydemo.srcs/sources_1/imports/CONTROLLOR/CONTROLLOR_VHDL.vhd
  C:/FPGAPrj/VIVADO/FPGA_SYS/vhdl/vivado/xillydemo.srcs/sources_1/imports/CONTROLLOR/OBYTE_VHDL.vhd
  C:/FPGAPrj/VIVADO/FPGA_SYS/vhdl/vivado/xillydemo.srcs/sources_1/imports/CONTROLLOR/SET_VHDL.vhd
  C:/FPGAPrj/VIVADO/FPGA_SYS/vhdl/vivado/xillydemo.srcs/sources_1/imports/CONTROLLOR/TEXT_INPUT_VHDL.vhd
  C:/FPGAPrj/VIVADO/FPGA_SYS/vhdl/vivado/xillydemo.srcs/sources_1/imports/CONTROLLOR/BYTE_VHDL.vhd
  C:/FPGAPrj/VIVADO/FPGA_SYS/vhdl/vivado/xillydemo.srcs/sources_1/imports/CONTROLLOR/STR_VHDL.vhd
  C:/FPGAPrj/VIVADO/FPGA_SYS/vhdl/vivado/xillydemo.srcs/sources_1/imports/CONTROLLOR/STATE_CONTROLLOR_VHDL.vhd
  C:/FPGAPrj/VIVADO/FPGA_SYS/vhdl/vivado/xillydemo.srcs/sources_1/imports/CONTROLLOR/FILE_INPUT_VHDL.vhd
  C:/FPGAPrj/VIVADO/FPGA_SYS/vhdl/vivado/xillydemo.srcs/sources_1/imports/CONTROLLOR/MEMORY_VHDL.vhd
}
set_property edif_extra_search_paths C:/FPGAPrj/VIVADO/xillinux-eval-zybo-1.3c/cores [current_fileset]
read_xdc C:/FPGAPrj/VIVADO/FPGA_SYS/vivado-essentials/xillydemo.xdc
set_property used_in_implementation false [get_files C:/FPGAPrj/VIVADO/FPGA_SYS/vivado-essentials/xillydemo.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
synth_design -top xillydemo -part xc7z010clg400-1
write_checkpoint -noxdef xillydemo.dcp
catch { report_utilization -file xillydemo_utilization_synth.rpt -pb xillydemo_utilization_synth.pb }
