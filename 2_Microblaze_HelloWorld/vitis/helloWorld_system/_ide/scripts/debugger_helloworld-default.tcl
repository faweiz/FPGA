# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: E:\FPGA\github\FPGA\2_Microblaze_HelloWorld\vitis\helloWorld_system\_ide\scripts\debugger_helloworld-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source E:\FPGA\github\FPGA\2_Microblaze_HelloWorld\vitis\helloWorld_system\_ide\scripts\debugger_helloworld-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Arty A7-100T 210319AFEAFAA" && level==0 && jtag_device_ctx=="jsn-Arty A7-100T-210319AFEAFAA-13631093-0"}
fpga -file E:/FPGA/github/FPGA/2_Microblaze_HelloWorld/vitis/helloWorld/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw E:/FPGA/github/FPGA/2_Microblaze_HelloWorld/vitis/design_1_wrapper/export/design_1_wrapper/hw/design_1_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow E:/FPGA/github/FPGA/2_Microblaze_HelloWorld/vitis/helloWorld/Debug/helloWorld.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
