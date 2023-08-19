`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:19:16 04/16/2021
// Design Name:   BitAdder
// Module Name:   /home/ise/HW1/behavioralTest.v
// Project Name:  HW1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BitAdder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module behavioralTest;

	// Inputs
	reg carry_in;
	reg a0;
	reg b0;
	reg a1;
	reg b1;

	// Outputs
	wire sum0;
	wire sum1;
	wire carry_out;

	// Instantiate the Unit Under Test (UUT)
	BitAdder uut (
		.carry_in(carry_in), 
		.a0(a0), 
		.b0(b0), 
		.a1(a1), 
		.b1(b1), 
		.sum0(sum0), 
		.sum1(sum1), 
		.carry_out(carry_out)
	);

	initial begin
		/// Initialize Inputs
		a1 = 0;
		a0 = 0;
		b1 = 0;
		b0 = 0;
		carry_in = 0;
		#10;
		//00000
		a1 <= 1'b0;
		b1 <= 1'b0;
		a0 <= 1'b0;
		b0 <= 1'b0;
		carry_in <= 1'b0;
		#10;
		//00001
		a1 <= 1'b0;
		b1 <= 1'b0;
		a0 <= 1'b0;
		b0 <= 1'b0;
		carry_in <= 1'b1;
		#10;
		//00010
		a1 <= 1'b0;
		b1 <= 1'b0;
		a0 <= 1'b0;
		b0 <= 1'b1;
		carry_in <= 1'b0;
		#10;
		//00011
		a1 <= 1'b0;
		b1 <= 1'b0;
		a0 <= 1'b0;
		b0 <= 1'b1;
		carry_in <= 1'b1;
		#10;
		//00100
		a1 <= 1'b0;
		b1 <= 1'b0;
		a0 <= 1'b1;
		b0 <= 1'b0;
		carry_in <= 1'b0;
		#10;
		//00101
		a1 <= 1'b0;
		b1 <= 1'b0;
		a0 <= 1'b1;
		b0 <= 1'b0;
		carry_in <= 1'b1;
		#10;
		//00110
		a1 <= 1'b0;
		b1 <= 1'b0;
		a0 <= 1'b1;
		b0 <= 1'b1;
		carry_in <= 1'b0;
		#10;
		//00111
		a1 <= 1'b0;
		b1 <= 1'b0;
		a0 <= 1'b1;
		b0 <= 1'b1;
		carry_in <= 1'b1;
		#10;
		//01000
		a1 <= 1'b0;
		b1 <= 1'b1;
		a0 <= 1'b0;
		b0 <= 1'b0;
		carry_in <= 1'b0;
		#10;
		//01001
		a1 <= 1'b0;
		b1 <= 1'b1;
		a0 <= 1'b0;
		b0 <= 1'b0;
		carry_in <= 1'b1;
		#10;
		//01010
		a1 <= 1'b0;
		b1 <= 1'b1;
		a0 <= 1'b0;
		b0 <= 1'b1;
		carry_in <= 1'b0;
		#10;
		//01011
		a1 <= 1'b0;
		b1 <= 1'b1;
		a0 <= 1'b0;
		b0 <= 1'b1;
		carry_in <= 1'b1;
		#10;
		//01100
		a1 <= 1'b0;
		b1 <= 1'b1;
		a0 <= 1'b1;
		b0 <= 1'b0;
		carry_in <= 1'b0;
		#10;
		//01101
		a1 <= 1'b0;
		b1 <= 1'b1;
		a0 <= 1'b1;
		b0 <= 1'b0;
		carry_in <= 1'b1;
		#10;
		//01110
		a1 <= 1'b0;
		b1 <= 1'b1;
		a0 <= 1'b1;
		b0 <= 1'b1;
		carry_in <= 1'b0;
		#10;
		//01111
		a1 <= 1'b0;
		b1 <= 1'b1;
		a0 <= 1'b1;
		b0 <= 1'b1;
		carry_in <= 1'b1;
		#10;
		//10000
		a1 <= 1'b1;
		b1 <= 1'b0;
		a0 <= 1'b0;
		b0 <= 1'b0;
		carry_in <= 1'b0;
		#10;
		//10001
		a1 <= 1'b1;
		b1 <= 1'b0;
		a0 <= 1'b0;
		b0 <= 1'b0;
		carry_in <= 1'b1;
		#10;
		//10010
		a1 <= 1'b1;
		b1 <= 1'b0;
		a0 <= 1'b0;
		b0 <= 1'b1;
		carry_in <= 1'b0;
		#10;
		//10011
		a1 <= 1'b1;
		b1 <= 1'b0;
		a0 <= 1'b0;
		b0 <= 1'b1;
		carry_in <= 1'b1;
		#10;
		//10100
		a1 <= 1'b1;
		b1 <= 1'b0;
		a0 <= 1'b1;
		b0 <= 1'b0;
		carry_in <= 1'b0;
		#10;
		//10101
		a1 <= 1'b1;
		b1 <= 1'b0;
		a0 <= 1'b1;
		b0 <= 1'b0;
		carry_in <= 1'b1;
		#10;
		//10110
		a1 <= 1'b1;
		b1 <= 1'b0;
		a0 <= 1'b1;
		b0 <= 1'b1;
		carry_in <= 1'b0;
		#10;
		//10111
		a1 <= 1'b1;
		b1 <= 1'b0;
		a0 <= 1'b1;
		b0 <= 1'b1;
		carry_in <= 1'b1;
		#10;
		//11000
		a1 <= 1'b1;
		b1 <= 1'b1;
		a0 <= 1'b0;
		b0 <= 1'b0;
		carry_in <= 1'b0;
		#10;
		//11001
		a1 <= 1'b1;
		b1 <= 1'b1;
		a0 <= 1'b0;
		b0 <= 1'b0;
		carry_in <= 1'b1;
		#10;
		//11010
		a1 <= 1'b1;
		b1 <= 1'b1;
		a0 <= 1'b0;
		b0 <= 1'b1;
		carry_in <= 1'b0;
		#10;
		//11011
		a1 <= 1'b1;
		b1 <= 1'b1;
		a0 <= 1'b0;
		b0 <= 1'b1;
		carry_in <= 1'b1;
		#10;
		//11100
		a1 <= 1'b1;
		b1 <= 1'b1;
		a0 <= 1'b1;
		b0 <= 1'b0;
		carry_in <= 1'b0;
		#10;
		//11101
		a1 <= 1'b1;
		b1 <= 1'b1;
		a0 <= 1'b1;
		b0 <= 1'b0;
		carry_in <= 1'b1;
		#10;
		//11110
		a1 <= 1'b1;
		b1 <= 1'b1;
		a0 <= 1'b1;
		b0 <= 1'b1;
		carry_in <= 1'b0;
		#10;
		//11111
		a1 <= 1'b1;
		b1 <= 1'b1;
		a0 <= 1'b1;
		b0 <= 1'b1;
		carry_in <= 1'b1;
		#10;

	end
      
endmodule

