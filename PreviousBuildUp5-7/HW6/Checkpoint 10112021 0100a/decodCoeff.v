`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:11:43 10/05/2021 
// Design Name: 
// Module Name:    decodeCoeff 
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
module decodeCoeff(
    input [8:0] coeff,
    output sign,
    output [7:0] value
    );

	always @ (*) begin
	
		sign = coeff[8];
		value = coeff[7:0];
	
	end

endmodule
