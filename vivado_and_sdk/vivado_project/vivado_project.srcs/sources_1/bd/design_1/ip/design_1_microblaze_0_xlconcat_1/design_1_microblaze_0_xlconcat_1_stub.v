// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Fri May  4 11:05:41 2018
// Host        : c3po running 64-bit Linux Mint 18.2 Sonya
// Command     : write_verilog -force -mode synth_stub
//               /home/kiev/Gits/wearable_project_main/vivado_and_sdk/vivado_project/vivado_project.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_xlconcat_1/design_1_microblaze_0_xlconcat_1_stub.v
// Design      : design_1_microblaze_0_xlconcat_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xlconcat_v2_1_1_xlconcat,Vivado 2017.4" *)
module design_1_microblaze_0_xlconcat_1(In0, In1, In2, In3, In4, dout)
/* synthesis syn_black_box black_box_pad_pin="In0[0:0],In1[0:0],In2[0:0],In3[0:0],In4[0:0],dout[4:0]" */;
  input [0:0]In0;
  input [0:0]In1;
  input [0:0]In2;
  input [0:0]In3;
  input [0:0]In4;
  output [4:0]dout;
endmodule