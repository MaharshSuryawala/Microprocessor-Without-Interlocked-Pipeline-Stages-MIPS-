`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:33:01 09/29/2017
// Design Name:   MainModule
// Module Name:   E:/LABs/PROCESSORS/MaiModule_TB.v
// Project Name:  PROCESSORS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MainModule
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MaiModule_TB;

	// Inputs
	reg [7:0] data_in;
	reg clk;
	reg interrupt;
	reg reset;

	// Outputs
	wire [7:0] A;
	wire [7:0] B;
	wire [7:0] Current_Address;
	wire [7:0] ans_ex;
	wire [7:0] ans_dm;
	wire [7:0] ans_wb;
	wire [1:0] mux_sel_A;
	wire [1:0] mux_sel_B;
	wire imm_sel;
	wire [23:0] ins;
	wire [7:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	MainModule uut (
		.A(A), 
		.B(B), 
		.Current_Address(Current_Address), 
		.ans_ex(ans_ex), 
		.ans_dm(ans_dm), 
		.ans_wb(ans_wb), 
		.mux_sel_A(mux_sel_A), 
		.mux_sel_B(mux_sel_B), 
		.imm_sel(imm_sel), 
		.ins(ins), 
		.data_out(data_out), 
		.data_in(data_in), 
		.clk(clk), 
		.interrupt(interrupt), 
		.reset(reset)
	);

	initial
	begin
	data_in = 0;
	interrupt = 0;
	clk = 0;
	reset = 1;
	#200; reset = 0;
	#500; reset = 1;
	end
	
	always
	#500 clk = ~clk;
	
endmodule

