`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:07:50 10/05/2021 
// Design Name: 
// Module Name:    findSignBit 
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
module findSignBit(
    input [15:0] data,
    output sign
    );

	always @ (*) begin
		
		sign = data[15];
		
	end

endmodule
