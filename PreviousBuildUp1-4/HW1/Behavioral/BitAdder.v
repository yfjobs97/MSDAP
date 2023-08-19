`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:08:29 04/16/2021 
// Design Name: 
// Module Name:    BitAdder 
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
module BitAdder(
    input carry_in,
    input a0,
    input b0,
    input a1,
    input b1,
    output sum0,
    output sum1,
    output carry_out
    );
	 
	 wire caryyBetweenAdder;
	 
	fullAdder adder0(.carry_in (carry_in),
	.a (a0),
	.b (b0),
	.sum (sum0),
	.carry_out (carryBetweenAdder)
	);
	
	fullAdder adder1(.carry_in (carryBetweenAdder),
	.a (a1),
	.b (b1),
	.sum (sum1),
	.carry_out (carry_out)
	);


endmodule
