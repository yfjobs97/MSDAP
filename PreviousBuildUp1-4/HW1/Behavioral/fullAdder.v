`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:10:29 04/16/2021 
// Design Name: 
// Module Name:    fullAdder 
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
module fullAdder(
    input carry_in,
    input a,
    input b,
    output reg sum,
    output reg carry_out
    );

	always @(a or b or carry_in)
	begin 

	sum = a ^ b ^ carry_in;
	
	carry_out = a&b | (a^b) & carry_in;
	
  end

endmodule
