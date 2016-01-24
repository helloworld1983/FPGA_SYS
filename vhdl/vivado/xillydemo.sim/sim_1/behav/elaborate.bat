@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.3\\bin
call %xv_path%/xelab  -wto 2ce1a81c78e54c319e111027cf41f906 -m64 --debug typical --relax --mt 2 -L fifo_generator_v13_0_0 -L xil_defaultlib -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_8 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_6 -L axi_data_fifo_v2_1_5 -L axi_crossbar_v2_1_7 -L axi_protocol_converter_v2_1_6 -L unisims_ver -L unimacro_ver -L secureip --snapshot unknown_behav xil_defaultlib.unknown xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
