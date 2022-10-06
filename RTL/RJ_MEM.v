//Yu Feng and Luke Allen

`timescale 1ns / 1ps
`define RJ_SIZE 16
module RJ_MEM(
// 	requestNextEndCoeff,
	rjReadAddr,
	rjWriteAddr,
	rjDataIn,
	rjDataOut,
	writeEnable
	);

// 	input requestNextEndCoeff;
	input [4:0] rjReadAddr;
	input [3:0] rjWriteAddr;
	input [15:0] rjDataIn;
	output reg [15:0] rjDataOut;
	reg [15:0] RJ_DATA [0:`RJ_SIZE - 1];
	input writeEnable;
	
	always @(posedge writeEnable) begin //write
		RJ_DATA[rjWriteAddr] = rjDataIn;
		//$display("(In RJ MEM): Data just wrote was RJ_DATA[%d] = %h", rjWriteAddr, RJ_DATA[rjWriteAddr]);
	end//end always @ (posedge writeEnable)

	always @(rjReadAddr) begin
		if(writeEnable == 1'b0) begin //read
			rjDataOut = RJ_DATA[rjReadAddr];
			//$display("(In RJ MEM): Data just read was RJ_DATA[%d] = %h", rjReadAddr, RJ_DATA[rjReadAddr]);
		end//end if (writeEnable == 0)
		else begin
			rjDataOut = 16'bz;
		end//end if(writeEnable) block
	end

endmodule