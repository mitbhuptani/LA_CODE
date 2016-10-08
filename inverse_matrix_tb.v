`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:55:41 10/06/2016
// Design Name:   matrix_inverse
// Module Name:   D:/LAcode/matrix_inverse_tb.v
// Project Name:  LAcode
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: matrix_ inverse 
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module matrix_ inverse _tb;

	// Inputs
	reg clk;
	reg reset;
	reg [4:0] address;

	// Outputs
	wire [31:0] data_out;
	wire [31:0] i11;
	wire [31:0] i12;
	wire [31:0] i13;
	wire [31:0] i14;
	wire [31:0] i15;
	wire [31:0] i21;
	wire [31:0] i22;
	wire [31:0] i23;
	wire [31:0] i24;
	wire [31:0] i25;
	wire [31:0] i31;
	wire [31:0] i32;
	wire [31:0] i33;
	wire [31:0] i34;
	wire [31:0] i35;
	wire [31:0] i41;
	wire [31:0] i42;
	wire [31:0] i43;
	wire [31:0] i44;
	wire [31:0] i45;
	wire [31:0] i51;
	wire [31:0] i52;
	wire [31:0] i53;
	wire [31:0] i54;
	wire [31:0] i55;
	wire [31:0] i11d;
	wire [31:0] i12d;
	wire [31:0] i13d;
	wire [31:0] i14d;
	wire [31:0] i15d;
	wire [31:0] i21d;
	wire [31:0] i22d;
	wire [31:0] i23d;
	wire [31:0] i24d;
	wire [31:0] i25d;
	wire [31:0] i31d;
	wire [31:0] i32d;
	wire [31:0] i33d;
	wire [31:0] i34d;
	wire [31:0] i35d;
	wire [31:0] i41d;
	wire [31:0] i42d;
	wire [31:0] i43d;
	wire [31:0] i44d;
	wire [31:0] i45d;
	wire [31:0] i51d;
	wire [31:0] i52d;
	wire [31:0] i53d;
	wire [31:0] i54d;
	wire [31:0] i55d;

	// Instantiate the Unit Under Test (UUT)
	inverse_matrix uut (
		.clk(clk), 
		.reset(reset), 
		.data_out(data_out), 
		.address(address), 
		.i11(i11), 
		.i12(i12), 
		.i13(i13), 
		.i14(i14), 
		.i15(i15), 
		.i21(i21), 
		.i22(i22), 
		.i23(i23), 
		.i24(i24), 
		.i25(i25), 
		.i31(i31), 
		.i32(i32), 
		.i33(i33), 
		.i34(i34), 
		.i35(i35), 
		.i41(i41), 
		.i42(i42), 
		.i43(i43), 
		.i44(i44), 
		.i45(i45), 
		.i51(i51), 
		.i52(i52), 
		.i53(i53), 
		.i54(i54), 
		.i55(i55), 
		.i11d(i11d), 
		.i12d(i12d), 
		.i13d(i13d), 
		.i14d(i14d), 
		.i15d(i15d), 
		.i21d(i21d), 
		.i22d(i22d), 
		.i23d(i23d), 
		.i24d(i24d), 
		.i25d(i25d), 
		.i31d(i31d), 
		.i32d(i32d), 
		.i33d(i33d), 
		.i34d(i34d), 
		.i35d(i35d), 
		.i41d(i41d), 
		.i42d(i42d), 
		.i43d(i43d), 
		.i44d(i44d), 
		.i45d(i45d), 
		.i51d(i51d), 
		.i52d(i52d), 
		.i53d(i53d), 
		.i54d(i54d), 
		.i55d(i55d)
	);

always #100 clk = ~clk;

initial begin
		clk = 0;
		reset=0;
		
		#50;
		address = 5'd0;
		
		#200;
		address = 5'd1;
		
		#200;
		address = 5'd2;
		
		#200;
		address = 5'd3;
		
		#200;
		address = 5'd4;
		
		#200;
		address = 5'd5;
		
		#200;
		address = 5'd6;
		
		#200;
		address = 5'd7;
		
		#200;
		address = 5'd8;
		#200;
		address = 5'd9;
		#200;
		address = 5'd10;
		#200;
		address = 5'd11;
		#200;
		address = 5'd12;
		
		#200;
		address = 5'd13;
		
		#200;
		address = 5'd14;
		#200;
		address = 5'd15;
		#200;
		address = 5'd16;
		#200;
		address = 5'd17;
		#200;
		address = 5'd18;
		#200;
		address = 5'd19;
		#200;
		address = 5'd20;
		#200;
		address = 5'd21;
		#200;
		address = 5'd22;
		#200;
		address = 5'd23;
		#200;
		address = 5'd24;
		#200;
		address = 5'd25;
		#200;
		reset=1'b1;
		#200;
		
		reset=1'b0;

	end
      
endmodule

