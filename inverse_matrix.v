`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:58:08 10/03/2016 
// Design Name: 
// Module Name:    matrix_inverse 
// Project Name:   LAcode
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module matrix_inverse(clk, reset, data_out, address, i11,i12,i13,i14,i15,i21,i22,i23,i24,i25,i31,i32,i33,i34,i35,i41,i42,i43,i44,i45,i51,i52,i53,i54,i55,i11d,i12d,i13d,i14d,i15d,i21d,i22d,i23d,i24d,i25d,i31d,i32d,i33d,i34d,i35d,i41d,i42d,i43d,i44d,i45d,i51d,i52d,i53d,i54d,i55d);

output [31:0] i11d,i12d,i13d,i14d,i15d,i21d,i22d,i23d,i24d,i25d,i31d,i32d,i33d,i34d,i35d,i41d,i42d,i43d,i44d,i45d,i51d,i52d,i53d,i54d,i55d;
output reg [31:0] i11,i12,i13,i14,i15,i21,i22,i23,i24,i25,i31,i32,i33,i34,i35,i41,i42,i43,i44,i45,i51,i52,i53,i54,i55;
output [31:0] data_out;

input reset,clk;
input [4:0] address;

reg [31:0] A[0:25];
reg [31:0] AI[0:24];

reg [31:0] data_in11,data_in12,data_in13,data_in14,data_in15,data_in21,data_in22,data_in23,data_in24,data_in25,data_in31,data_in32,data_in33,data_in34,data_in35,data_in41,data_in42,data_in43,data_in44,data_in45,data_in51,data_in52,data_in53,data_in54,data_in55;

reg [31:0] i11t = 32'd1;
reg [31:0] i12t = 32'd0;
reg [31:0] i13t = 32'd0;
reg [31:0] i14t = 32'd0;
reg [31:0] i15t = 32'd0;

reg [31:0] i21t = 32'd0;
reg [31:0] i22t = 32'd1;
reg [31:0] i23t = 32'd0;
reg [31:0] i24t = 32'd0;
reg [31:0] i25t = 32'd0;

reg [31:0] i31t = 32'd0;
reg [31:0] i32t = 32'd0;
reg [31:0] i33t = 32'd1;
reg [31:0] i34t = 32'd0;
reg [31:0] i35t = 32'd0;

reg [31:0] i41t = 32'd0;
reg [31:0] i42t = 32'd0;
reg [31:0] i43t = 32'd0;
reg [31:0] i44t = 32'd1;
reg [31:0] i45t = 32'd0;

reg [31:0] i51t = 32'd0;
reg [31:0] i52t = 32'd0;
reg [31:0] i53t = 32'd0;
reg [31:0] i54t = 32'd0;
reg [31:0] i55t = 32'd1;

reg [31:0] at11,at12,at13,at14,at15,at21,at22,at23,at24,at25,at31,at32,at33,at34,at35,at41,at42,at43,at44,at45,at51,at52,at53t,at54t,at55t;

reg [31:0] x,y;

ip_matrix_inverse mat_inv (
  .clka(clk), // input clka
  .addra(address), // input [4 : 0] addra
  .douta(data_out) // output [31 : 0] douta
);

always@(posedge clk)
begin
	if(reset==1'b0)
	begin
		A[address] <= data_out;
	end
	else
	begin
		data_in11 = A[1];
		data_in12 = A[2];
		data_in13 = A[3];
		data_in14 = A[4];
		data_in15 = A[5];

		data_in21 = A[6];
		data_in22 = A[7];
		data_in23 = A[8];
		data_in24 = A[9];
		data_in25 = A[10];

		data_in31 = A[11];
		data_in32= A[12];
		data_in33= A[13];
		data_in34 = A[14];
		data_in35 = A[15];

		data_in41 = A[16];
		data_in42 = A[17];
		data_in43 = A[18];
		data_in44 = A[19];
		data_in45 = A[20];

		data_in51 = A[21];
		data_in52 = A[22];
		data_in53 = A[23];
		data_in54 = A[24];
		data_in55 = A[25];

		at11 = (data_in11 > 0 ? data_in11 : (~data_in11+32'd1));
		at12 = (data_in12 > 0 ? data_in12 : (~data_in12+32'd1));
		at13 = (data_in13 > 0 ? data_in13 : (~data_in13+32'd1));
		at14 = (data_in14 > 0 ? data_in14 : (~data_in14+32'd1));
		at15 = (data_in15 > 0 ? data_in15 : (~data_in15+32'd1));

		at21 = (data_in21 > 0 ? data_in21 : (~data_in21 + 32'd1));
		at22 = (data_in22 > 0 ? data_in22 : (~data_in22 + 32'd1));
		at23 = (data_in23 > 0 ? data_in23 : (~data_in23 + 32'd1));
		at24 = (data_in24 > 0 ? data_in24 : (~data_in24 + 32'd1));
		at25 = (data_in25 > 0 ? data_in25 : (~data_in25 + 32'd1));

		at31 = (data_in31 > 0 ? data_in31 : (~data_in31 + 32'd1));
		at32 = (data_in32 > 0 ? data_in32 : (~data_in32 + 32'd1));
		at33 = (data_in33 > 0 ? data_in33 : (~data_in33 + 32'd1));
		at34 = (data_in34 > 0 ? data_in34 : (~data_in34 + 32'd1));
		at35 = (data_in35 > 0 ? data_in35 : (~data_in35 + 32'd1));

		at41 = (data_in41 > 0 ? data_in41 : (~data_in41+32'd1));
		at42 = (data_in42 > 0 ? data_in42 : (~data_in42+32'd1));
		at43 = (data_in43 > 0 ? data_in43 : (~data_in43+32'd1));
		at44 = (data_in44 > 0 ? data_in44 : (~data_in44+32'd1));
		at45 = (data_in45 > 0 ? data_in45 : (~data_in45+32'd1));

		at51 = (data_in51 > 0 ? data_in51 : (~data_in51+32'd1));
		at52 = (data_in52 > 0 ? data_in52 : (~data_in52+32'd1));
		at53t = (data_in53 > 0 ? data_in53 : (~data_in53+32'd1));
		at54t = (data_in54 > 0 ? data_in54 : (~data_in54+32'd1));
		at55t = (data_in55 > 0 ? data_in55 : (~data_in55+32'd1));

		x = at11;
		y = at21;

		at21 = x*at21 - y*at11;
		at22 = x*at22 - y*at12;
		at23 = x*at23 - y*at13;
		at24 = x*at24 - y*at14;
		at25 = x*at25 - y*at15;
		i21t = x*i21t - y*i11t;
		i22t = x*i22t - y*i12t;
		i23t = x*i23t - y*i13t;
		i24t = x*i24t - y*i14t;
		i25t = x*i25t - y*i15t;
		
		x = at11;
		y = at31;

		at31 = x*at31 - y*at11;
		at32 = x*at32 - y*at12;
		at33 = x*at33 - y*at13;
		at34 = x*at34 - y*at14;
		at35 = x*at35 - y*at15;
		i31t = x*i31t - y*i11t;
		i32t = x*i32t - y*i12t;
		i33t = x*i33t - y*i13t;
		i34t = x*i34t - y*i14t;
		i35t = x*i35t - y*i15t;

		x = at11;
		y = at41;

		at41 = x*at41 - y*at11;
		at42 = x*at42 - y*at12;
		at43 = x*at43 - y*at13;
		at44 = x*at44 - y*at14;
		at45 = x*at45 - y*at15;
		i41t = x*i41t - y*i11t;
		i42t = x*i42t - y*i12t;
		i43t = x*i43t - y*i13t;
		i44t = x*i44t - y*i14t;
		i45t = x*i45t - y*i15t;

		x = at11;
		y = at51;

		at51 = x*at51 - y*at11;
		at52 = x*at52 - y*at12;
		at53t = x*at53t - y*at13;
		at54t = x*at54t - y*at14;
		at55t = x*at55t - y*at15;
		i51t = x*i51t - y*i11t;
		i52t = x*i52t - y*i12t;
		i53t = x*i53t - y*i13t;
		i54t = x*i54t - y*i14t;
		i55t = x*i55t - y*i15t;

		x = at22;
		y = at12;

		at11 = x*at11 - y*at21;
		at12 = x*at12 - y*at22;
		at13 = x*at13 - y*at23;
		at14 = x*at14 - y*at24;
		at15 = x*at15 - y*at25;
		i11t = x*i11t - y*i21t;
		i12t = x*i12t - y*i22t;
		i13t = x*i13t - y*i23t;
		i14t = x*i14t - y*i24t;
		i15t = x*i15t - y*i25t;

		x = at22;
		y = at32;

		at31 = x*at31 - y*at21;
		at32 = x*at32 - y*at22;
		at33 = x*at33 - y*at23;
		at34 = x*at34 - y*at24;
		at35 = x*at35 - y*at25;
		i31t = x*i31t - y*i21t;
		i32t = x*i32t - y*i22t;
		i33t = x*i33t - y*i23t;
		i34t = x*i34t - y*i24t;
		i35t = x*i35t - y*i25t;

		x = at22;
		y = at42;

		at41 = x*at41 - y*at21;
		at42 = x*at42 - y*at22;
		at43 = x*at43 - y*at23;
		at44 = x*at44 - y*at24;
		at45 = x*at45 - y*at25;
		i41t = x*i41t - y*i21t;
		i42t = x*i42t - y*i22t;
		i43t = x*i43t - y*i23t;
		i44t = x*i44t - y*i24t;
		i45t = x*i45t - y*i25t;

		x = at22;
		y = at52;

		at51 = x*at51 - y*at21;
		at52 = x*at52 - y*at22;
		at53t = x*at53t - y*at23;
		at54t = x*at54t - y*at24;
		at55t = x*at55t - y*at25;
		i51t = x*i51t - y*i21t;
		i52t = x*i52t - y*i22t;
		i53t = x*i53t - y*i23t;
		i54t = x*i54t - y*i24t;
		i55t = x*i55t - y*i25t;

		x = at33;
		y = at13;

		at11 = x*at11 - y*at31;
		at12 = x*at12 - y*at32;
		at13 = x*at13 - y*at33;
		at14 = x*at14 - y*at34;
		at15 = x*at15 - y*at35;
		i11t = x*i11t - y*i31t;
		i12t = x*i12t - y*i32t;
		i13t = x*i13t - y*i33t;
		i14t = x*i14t - y*i34t;
		i15t = x*i15t - y*i35t;

		x = at33;
		y = at23;

		at21 = x*at21 - y*at31;
		at22 = x*at22 - y*at32;
		at23 = x*at23 - y*at33;
		at24 = x*at24 - y*at34;
		at25 = x*at25 - y*at35;
		i21t = x*i21t - y*i31t;
		i22t = x*i22t - y*i32t;
		i23t = x*i23t - y*i33t;
		i24t = x*i24t - y*i34t;
		i25t = x*i25t - y*i35t;

		x = at33;
		y = at43;

		at41 = x*at41 - y*at31;
		at42 = x*at42 - y*at32;
		at43 = x*at43 - y*at33;
		at44 = x*at44 - y*at34;
		at45 = x*at45 - y*at35;
		i41t = x*i41t - y*i31t;
		i42t = x*i42t - y*i32t;
		i43t = x*i43t - y*i33t;
		i44t = x*i44t - y*i34t;
		i45t = x*i45t - y*i35t;

		x = at33;
		y = at53t;

		at51 = x*at51 - y*at31;
		at52 = x*at52 - y*at32;
		at53t = x*at53t - y*at33;
		at54t = x*at54t - y*at34;
		at55t = x*at55t - y*at35;
		i51t = x*i51t - y*i31t;
		i52t = x*i52t - y*i32t;
		i53t = x*i53t - y*i33t;
		i54t = x*i54t - y*i34t;
		i55t = x*i55t - y*i35t;

		x = at44;
		y = at14;

		at11 = x*at11 - y*at41;
		at12 = x*at12 - y*at42;
		at13 = x*at13 - y*at43;
		at14 = x*at14 - y*at44;
		at15 = x*at15 - y*at45;
		i11t = x*i11t - y*i41t;
		i12t = x*i12t - y*i42t;
		i13t = x*i13t - y*i43t;
		i14t = x*i14t - y*i44t;
		i15t = x*i15t - y*i45t;

		x = at44;
		y = at24;

		at21 = x*at21 - y*at41;
		at22 = x*at22 - y*at42;
		at23 = x*at23 - y*at43;
		at24 = x*at24 - y*at44;
		at25 = x*at25 - y*at45;
		i21t = x*i21t - y*i41t;
		i22t = x*i22t - y*i42t;
		i23t = x*i23t - y*i43t;
		i24t = x*i24t - y*i44t;
		i25t = x*i25t - y*i45t;

		x = at44;
		y = at34;

		at31 = x*at31 - y*at41;
		at32 = x*at32 - y*at42;
		at33 = x*at33 - y*at43;
		at34 = x*at34 - y*at44;
		at35 = x*at35 - y*at45;
		i31t = x*i31t - y*i41t;
		i32t = x*i32t - y*i42t;
		i33t = x*i33t - y*i43t;
		i34t = x*i34t - y*i44t;
		i35t = x*i35t - y*i45t;

		x = at44;
		y = at54t;

		at51 = x*at51 - y*at41;
		at52 = x*at52 - y*at42;
		at53t = x*at53t - y*at43;
		at54t = x*at54t - y*at44;
		at55t = x*at55t - y*at45;
		i51t = x*i51t - y*i41t;
		i52t = x*i52t - y*i42t;
		i53t = x*i53t - y*i43t;
		i54t = x*i54t - y*i44t;
		i55t = x*i55t - y*i45t;

		x = at55t;
		y = at15;

		at11 = x*at11 - y*at51;
		at12 = x*at12 - y*at52;
		at13 = x*at13 - y*at53t;
		at14 = x*at14 - y*at54t;
		at15 = x*at15 - y*at55t;
		i11t = x*i11t - y*i51t;
		i12t = x*i12t - y*i52t;
		i13t = x*i13t - y*i53t;
		i14t = x*i14t - y*i54t;
		i15t = x*i15t - y*i55t;

		x = at55t;
		y = at25;

		at21 = x*at21 - y*at51;
		at22 = x*at22 - y*at52;
		at23 = x*at23 - y*at53t;
		at24 = x*at24 - y*at54t;
		at25 = x*at25 - y*at55t;
		i21t = x*i21t - y*i51t;
		i22t = x*i22t - y*i52t;
		i23t = x*i23t - y*i53t;
		i24t = x*i24t - y*i54t;
		i25t = x*i25t - y*i55t;
	
		x = at55t;
		y = at35;

		at31 = x*at31 - y*at51;
		at32 = x*at32 - y*at52;
		at33 = x*at33 - y*at53t;
		at34 = x*at34 - y*at54t;
		at35 = x*at35 - y*at55t;
		i31t = x*i31t - y*i51t;
		i32t = x*i32t - y*i52t;
		i33t = x*i33t - y*i53t;
		i34t = x*i34t - y*i54t;
		i35t = x*i35t - y*i55t;

		x = at55t;
		y = at45;

		at41 = x*at41 - y*at51;
		at42 = x*at42 - y*at52;
		at43 = x*at43 - y*at53t;
		at44 = x*at44 - y*at54t;
		at45 = x*at45 - y*at55t;
		i41t = x*i41t - y*i51t;
		i42t = x*i42t - y*i52t;
		i43t = x*i43t - y*i53t;
		i44t = x*i44t - y*i54t;
		i45t = x*i45t - y*i55t;
	
		if(at11==32'd0 || at22 == 32'd0 || at33 == 32'd0 || at44==32'd0 || at55t==32'd0)
		begin
			i11=32'dx;
			i22=32'dx;
			i33=32'dx;
			i44=32'dx;
			i55=32'dx;
		end
		else
		begin
			i11 = i11t;
			i12 = i12t;
			i13 = i13t;
			i14 = i14t;
			i15 = i15t;
			
			i21 = i21t;
			i22 = i22t;
			i23 = i23t;
			i24 = i24t;
			i25 = i25t;

			i31 = i31t;
			i32 = i32t;
			i33 = i33t;
			i34 = i34t;
			i35 = i35t;

			i41 = i41t;
			i42 = i42t;
			i43 = i43t;
			i44 = i44t;
			i45 = i45t;

			i51 = i51t;
			i52 = i52t;
			i53 = i53t;
			i54 = i54t;
			i55 = i55t;
		end

		AI[0] = i11;
		AI[1] = i12;
		AI[2] = i13;
		AI[3] = i14;
		AI[4] = i15;

		AI[5] = i21;
		AI[6] = i22;
		AI[7] = i23;
		AI[8] = i24;
		AI[9] = i25;

		AI[10] = i31;
		AI[11] = i32;
		AI[12] = i33;
		AI[13] = i34;
		AI[14] = i35;

		AI[15] = i41;
		AI[16] = i42;
		AI[17] = i43;
		AI[18] = i44;
		AI[19] = i45;

		AI[20] = i51;
		AI[21] = i52;
		AI[22] = i53;
		AI[23] = i54;
		AI[24] = i55;
	end
end


wire [31:0] i11dt,i12dt,i13dt,i14dt,i15dt,i21dt,i22dt,i23dt,i24dt,i25dt,i31dt,i32dt,i33dt,i34dt,i35dt,i41dt,i42dt,i43dt,i44dt,i45dt,i51dt,i52dt,i53dt,i54dt,i55dt;

assign i11d = i11;
assign i12d = i12;
assign i13d = i13;
assign i14d = i14;
assign i15d = i15;

assign i21d = i21;
assign i22d = i22;
assign i23d = i23;
assign i24d = i24;
assign i25d = i25;

assign i31d = i31;
assign i32d = i32;
assign i33d = i33;
assign i34d = i34;
assign i35d = i35;

assign i41d = i41;
assign i42d = i42;
assign i43d = i43;
assign i44d = i44;
assign i45d = i45;

assign i51d = i51;
assign i52d = i52;
assign i53d = i53;
assign i54d = i54;
assign i55d = i55;

wire [31:0] a,b,c,d,e;

assign a = at11;
assign b = at22;
assign c = at33;
assign d = at44;
assign e = at55t;


assign i11d = i11dt;
assign i12d = i12dt;
assign i13d = i13dt;
assign i14d = i14dt;
assign i15d = i15dt;

assign i21d = i21dt;
assign i22d = i22dt;
assign i23d = i23dt;
assign i24d = i24dt;
assign i25d = i25dt;

assign i31d = i31dt;
assign i32d = i32dt;
assign i33d = i33dt;
assign i34d = i34dt;
assign i35d = i35dt;

assign i41d = i41dt;
assign i42d = i42dt;
assign i43d = i43dt;
assign i44d = i44dt;
assign i45d = i45dt;

assign i51d = i51dt;
assign i52d = i52dt;
assign i53d = i53dt;
assign i54d = i54dt;
assign i55d = i55dt;

endmodule
