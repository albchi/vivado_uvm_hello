/*
    File        : uvm_hello.sv
    Description : A single file that uses UVM to print "Hello"
    Tools       : Xilinx Vivado 2023.2
    Note        : This file was created using the Vivado GUI, choosing  
                  "SystemVerilog" file type, which seems to enable 
                  switches for compile, elab, and/or sim
*/
`timescale 1ns / 1ps

import uvm_pkg::*;
`include "uvm_macros.svh"

module uvm_hello();
       
class Msg;
    string motd;
    function new();
        motd = "You can make it a great day!";
    endfunction
    function print_motd();
        $display("%s\n", motd);
    endfunction
endclass

initial begin

    // Msg msg;
    $display("Hello!");
    // msg = new();
    // msg.print_motd();
    `uvm_info("A UVM Hello!", $sformatf("%d o clock", $time()), UVM_LOW); 
    // run_test(); // uvm_test   
end // initial
endmodule

/*

close_sim
INFO: [Simtcl 6-16] Simulation closed
launch_simulation
Command: launch_simulation 
INFO: [Vivado 12-12493] Simulation top is 'uvm_hello'
WARNING: [Vivado 12-13340] Unable to auto find GCC executables from simulator install path! (path not set)
INFO: [Vivado 12-5682] Launching behavioral simulation in 'C:/Albert/project_uvm_hello/project_uvm_hello.sim/sim_1/behav/xsim'
INFO: [SIM-utils-51] Simulation object is 'sim_1'
INFO: [SIM-utils-72] Using boost library from 'C:/Xilinx/Vivado/2023.2/tps/boost_1_72_0'
INFO: [SIM-utils-54] Inspecting design source files for 'uvm_hello' in fileset 'sim_1'...
INFO: [USF-XSim-97] Finding global include files...
INFO: [USF-XSim-98] Fetching design files from 'sim_1'...
INFO: [USF-XSim-2] XSim::Compile design
INFO: [USF-XSim-61] Executing 'COMPILE and ANALYZE' step in 'C:/Albert/project_uvm_hello/project_uvm_hello.sim/sim_1/behav/xsim'
"xvlog --incr --relax -L uvm -sv -L uvm -prj uvm_hello_vlog.prj"
INFO: [USF-XSim-69] 'compile' step finished in '1' seconds
INFO: [USF-XSim-3] XSim::Elaborate design
INFO: [USF-XSim-61] Executing 'ELABORATE' step in 'C:/Albert/project_uvm_hello/project_uvm_hello.sim/sim_1/behav/xsim'
"xelab --incr --debug typical --relax --mt 2 -L xil_defaultlib -L uvm -L unisims_ver -L unimacro_ver -L secureip --snapshot uvm_hello_behav xil_defaultlib.uvm_hello xil_defaultlib.glbl -log elaborate.log -L uvm"
Vivado Simulator v2023.2
Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
Running: C:/Xilinx/Vivado/2023.2/bin/unwrapped/win64.o/xelab.exe --incr --debug typical --relax --mt 2 -L xil_defaultlib -L uvm -L unisims_ver -L unimacro_ver -L secureip --snapshot uvm_hello_behav xil_defaultlib.uvm_hello xil_defaultlib.glbl -log elaborate.log -L uvm 
Using 2 slave threads.
Starting static elaboration
Pass Through NonSizing Optimizer
Completed static elaboration
INFO: [XSIM 43-4323] No Change in HDL. Linking previously generated obj files to create kernel
INFO: [USF-XSim-69] 'elaborate' step finished in '4' seconds
INFO: [USF-XSim-4] XSim::Simulate design
INFO: [USF-XSim-61] Executing 'SIMULATE' step in 'C:/Albert/project_uvm_hello/project_uvm_hello.sim/sim_1/behav/xsim'
INFO: [USF-XSim-98] *** Running xsim
   with args "uvm_hello_behav -key {Behavioral:sim_1:Functional:uvm_hello} -tclbatch {uvm_hello.tcl} -log {simulate.log}"
INFO: [USF-XSim-8] Loading simulator feature
Time resolution is 1 ps
source uvm_hello.tcl
# set curr_wave [current_wave_config]
# if { [string length $curr_wave] == 0 } {
#   if { [llength [get_objects]] > 0} {
#     add_wave /
#     set_property needs_save false [current_wave_config]
#   } else {
#      send_msg_id Add_Wave-1 WARNING "No top level signals found. Simulator will start without a wave window. If you want to open a wave window go to 'File->New Waveform Configuration' or type 'create_wave_config' in the TCL console."
#   }
# }
WARNING: [Simtcl 6-168] No object found for the given pattern.
WARNING: [Add_Wave-1] No top level signals found. Simulator will start without a wave window. If you want to open a wave window go to 'File->New Waveform Configuration' or type 'create_wave_config' in the TCL console.
# run 1000ns
UVM_INFO C:/Xilinx/Vivado/2023.2/data/system_verilog/uvm_1.2/xlnx_uvm_package.sv(18601) @ 0: reporter [UVM/RELNOTES] 
----------------------------------------------------------------
UVM-1.2
(C) 2007-2014 Mentor Graphics Corporation
(C) 2007-2014 Cadence Design Systems, Inc.
(C) 2006-2014 Synopsys, Inc.
(C) 2011-2013 Cypress Semiconductor Corp.
(C) 2013-2014 NVIDIA Corporation
----------------------------------------------------------------

  ***********       IMPORTANT RELEASE NOTES         ************

  You are using a version of the UVM library that has been compiled
  with `UVM_NO_DEPRECATED undefined.

  You are using a version of the UVM library that has been compiled
  with `UVM_OBJECT_DO_NOT_NEED_CONSTRUCTOR undefined.

      (Specify +UVM_NO_RELNOTES to turn off this notice)

Hello!
UVM_INFO C:/Albert/project_uvm_hello/project_uvm_hello.srcs/sources_1/new/uvm_hello.sv(24) @ 0: reporter [A UVM Hello!]                    0 o clock
INFO: [USF-XSim-96] XSim completed. Design snapshot 'uvm_hello_behav' loaded.
INFO: [USF-XSim-97] XSim simulation ran for 1000ns
launch_simulation: Time (s): cpu = 00:00:00 ; elapsed = 00:00:07 . Memory (MB): peak = 1693.184 ; gain = 0.000


*/
