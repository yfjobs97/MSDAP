//Yu Feng and Luke Allen

`timescale 1ns / 1ps
`define COEFF_SIZE 512
module COEFF_MEM(
// 	readyForData,
	coeffReadAddr,
	coeffWriteAddr,
	coeffDataIn,
	coeffDataOut,
	writeEnable
	);

	
	input [9:0] coeffReadAddr;
	input [8:0] coeffWriteAddr;
	input [15:0] coeffDataIn;
	output reg [15:0] coeffDataOut;
	reg [15:0] COEFF_DATA [0:`COEFF_SIZE - 1];
// 	input readyForData;
	input writeEnable;
	
	always @(posedge writeEnable) begin //write
		COEFF_DATA[coeffWriteAddr] = coeffDataIn;
		//$display("(In COEFF MEM): Data just wrote was COEFF_DATA[%d] = %h", coeffWriteAddr, COEFF_DATA[coeffWriteAddr]);
	end//end always @ (posedge writeEnable)

	always @(coeffReadAddr) begin
		coeffDataOut = COEFF_DATA[coeffReadAddr];
		//$display("(In COEFF MEM): Data just read was COEFF_DATA[%d] = %h", coeffReadAddr, COEFF_DATA[coeffReadAddr]);
	end

endmodule