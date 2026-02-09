// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Feb 10 01:45:21 2026
// Host        : DESKTOP-I6BJTM0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/Xlinx/FPGA_Prj/KV260_TX/KV260_TX.gen/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_stub.v
// Design      : design_1_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "top,Vivado 2022.2" *)
module design_1_top_0_0(clk_in, uart_tx)
/* synthesis syn_black_box black_box_pad_pin="clk_in,uart_tx" */;
  input clk_in;
  output uart_tx;
endmodule
