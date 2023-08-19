`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:23:55 08/31/2021 
// Design Name: 
// Module Name:    adder1Bit_Verilog 
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
module adder1Bit_Verilog(a,b,c_in,carry_out,result);
    input a,b,c_in;
    output carry_out, result;
    wire t1,t2,t3; 
	 xor xor1 (t1,a,b); //t1 = first xor gate, a XOR b
	 xor xor2 (result,t1,c_in);	//result = result of second xor gate, t1 XOR c_in
	 and and1 (t2,t1,c_in);	//t2 = and gates determining the carries, t1 AND c_in
	 and and2 (t3,a,b);
	 or or1 (carry_out,t2,t3);	//determine the carry out

endmodule
module adder2Bit_Verilog(a1,a0,b1,b0,carry_in,carry_out,sum1,sum0);
	input a1, a0, b1, b0, carry_in;
	output carry_out, sum1, sum0;
	wire carryBetweenAdder;

	adder1Bit_Verilog adder0(.a (a0),
	.b (b0),
	.c_in (carry_in),
	.carry_out (carryBetweenAdder),
	.result (sum0)
	);
	
	adder1Bit_Verilog adder1(.a (a1),
	.b (b1),
	.c_in (carryBetweenAdder),
	.carry_out (carry_out),
	.result (sum1)
	);

endmodule
