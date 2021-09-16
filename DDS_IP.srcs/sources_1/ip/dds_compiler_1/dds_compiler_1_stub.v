// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Jul 23 12:32:21 2021
// Host        : DESKTOP-OA2P2AF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/ip/dds_compiler_1/dds_compiler_1_stub.v
// Design      : dds_compiler_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dds_compiler_v6_0_17,Vivado 2018.3" *)
module dds_compiler_1(aclk, s_axis_config_tvalid, 
  s_axis_config_tdata, m_axis_data_tvalid, m_axis_data_tdata, m_axis_phase_tvalid, 
  m_axis_phase_tdata)
/* synthesis syn_black_box black_box_pad_pin="aclk,s_axis_config_tvalid,s_axis_config_tdata[15:0],m_axis_data_tvalid,m_axis_data_tdata[15:0],m_axis_phase_tvalid,m_axis_phase_tdata[15:0]" */;
  input aclk;
  input s_axis_config_tvalid;
  input [15:0]s_axis_config_tdata;
  output m_axis_data_tvalid;
  output [15:0]m_axis_data_tdata;
  output m_axis_phase_tvalid;
  output [15:0]m_axis_phase_tdata;
endmodule
