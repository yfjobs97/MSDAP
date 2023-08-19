`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:09:43 10/05/2021 
// Design Name: 
// Module Name:    bitExtender24 
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
module bitExtender24(
    input [15:0] data,
    input padValue,
    output [23:0] returnData
    );
	 
	always begin
		
		if(padValue) begin
		
			returnData = data | 'hFF0000;
		
		end
		else begin
		
			returnData = data & 'h00FFFF;
		
		end
		
	end

endmodule
