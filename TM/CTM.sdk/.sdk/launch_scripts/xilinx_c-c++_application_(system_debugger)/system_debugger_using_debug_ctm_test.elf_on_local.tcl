connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210512180081"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS1 210512180081" && level==0} -index 1
fpga -file E:/tm_Dronfa_xy/TM/CTM.sdk/design_1_wrapper_hw_platform_1/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210512180081"} -index 0
loadhw -hw E:/tm_Dronfa_xy/TM/CTM.sdk/design_1_wrapper_hw_platform_1/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
configparams force-mem-access 0
bpadd -addr &main
