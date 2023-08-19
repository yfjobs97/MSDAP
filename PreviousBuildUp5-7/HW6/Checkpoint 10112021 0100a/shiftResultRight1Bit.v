`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:17:21 10/05/2021 
// Design Name: 
// Module Name:    shiftResultRight1Bit 
// Project Name: 
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
module shiftResultRight1Bit(
    input [63:0] dataIn,
    output [63:0] dataOut
    );

	always @ (*) begin
	
		if(dataIn[63]) begin
		
			dataOut = (dataIn >> 1) | 'h8000000000000000;
		
		end
		else begin
		
			dataOut = dataIn >> 1;
		
		end
	
	end

endmodule
