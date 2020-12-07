// Copyright (C) 2019  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"
// CREATED		"Fri Nov 20 13:28:25 2020"

module I2C(
	clock,
	reset,
	scl,
	cs,
	sda,
	rx_data
);


input wire	clock;
input wire	reset;
output wire	scl;
output wire	cs;
inout wire	sda;
output wire	[15:0] rx_data;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	[7:0] SYNTHESIZED_WIRE_3;
wire	[7:0] SYNTHESIZED_WIRE_4;
wire	[6:0] SYNTHESIZED_WIRE_5;





I2C_Control_Verilog	b2v_inst(
	.clk(clock),
	.rst(reset),
	.core_busy(SYNTHESIZED_WIRE_0),
	.data_valid(SYNTHESIZED_WIRE_1),
	.rw(SYNTHESIZED_WIRE_2),
	.reg_addr(SYNTHESIZED_WIRE_3),
	.reg_data(SYNTHESIZED_WIRE_4),
	.slave_addr(SYNTHESIZED_WIRE_5));


I2C_Core_Verilog	b2v_inst1(
	.clk(clock),
	.rst(reset),
	.data_valid(SYNTHESIZED_WIRE_1),
	.rw(SYNTHESIZED_WIRE_2),
	.sda(sda),
	.reg_addr(SYNTHESIZED_WIRE_3),
	.reg_data(SYNTHESIZED_WIRE_4),
	.slave_addr(SYNTHESIZED_WIRE_5),
	.scl(scl),
	.busy(SYNTHESIZED_WIRE_0),
	.CS(cs),
	
	.rx_data(rx_data));


endmodule
