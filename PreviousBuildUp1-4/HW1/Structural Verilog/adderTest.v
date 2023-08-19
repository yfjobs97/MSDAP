`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:14:20 08/31/2021
// Design Name:   adder2Bit_Verilog
// Module Name:   C:/Users/Marco/Desktop/EE/CE6306/FullAdder1Bit/adderTest.v
// Project Name:  FullAdder1Bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder2Bit_Verilog
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adderTest;

	// Inputs
	reg a1;
	reg a0;
	reg b1;
	reg b0;
	reg carry_in;

	// Outputs
	wire carry_out;
	wire sum1;
	wire sum0;

	// Instantiate the Unit Under Test (UUT)
	adder2Bit_Verilog uut (
		.a1(a1), 
		.a0(a0), 
		.b1(b1), 
		.b0(b0), 
		.carry_in(carry_in), 
		.carry_out(carry_out), 
		.sum1(sum1), 
		.sum0(sum0)
	);

	initial begin
		// Initialize Inputs
		a1 = 0;
		a0 = 0;
		b1 = 0;
		b0 = 0;
		carry_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		//Test all cases of a, b, and carry_in in the same order as the truth table
		
		//00000
		a0 <= 1'b0;
		b0 <= 1'b0;
		a1 <= 1'b0;
		b1 <= 1'b0;
		carry_in <= 1'b0;
		#100;
		//00001
		a0 <= 1'b0;
		b0 <= 1'b0;
		a1 <= 1'b0;
		b1 <= 1'b0;
		carry_in <= 1'b1;
		#100;
		
		//00010
		a0 <= 1'b0;
		b0 <= 1'b0;
		a1 <= 1'b0;
		b1 <= 1'b1;
		carry_in <= 1'b0;
		#100;
		//00011
		a0 <= 1'b0;
		b0 <= 1'b0;
		a1 <= 1'b0;
		b1 <= 1'b1;
		carry_in <= 1'b1;
		#100;
		
		//00100
		a0 <= 1'b0;
		b0 <= 1'b0;
		a1 <= 1'b1;
		b1 <= 1'b0;
		carry_in <= 1'b0;
		#100;
		//00101
		a0 <= 1'b0;
		b0 <= 1'b0;
		a1 <= 1'b1;
		b1 <= 1'b0;
		carry_in <= 1'b1;
		#100;
		//00110
		a0 <= 1'b0;
		b0 <= 1'b0;
		a1 <= 1'b1;
		b1 <= 1'b1;
		carry_in <= 1'b0;
		#100;
		//00111
		a0 <= 1'b0;
		b0 <= 1'b0;
		a1 <= 1'b1;
		b1 <= 1'b1;
		carry_in <= 1'b1;
		#100;
		
		//01000
		a0 <= 1'b0;
		b0 <= 1'b1;
		a1 <= 1'b0;
		b1 <= 1'b0;
		carry_in <= 1'b0;
		#100;
		//01001
		a0 <= 1'b0;
		b0 <= 1'b1;
		a1 <= 1'b0;
		b1 <= 1'b0;
		carry_in <= 1'b1;
		#100;
		//01010
		a0 <= 1'b0;
		b0 <= 1'b1;
		a1 <= 1'b0;
		b1 <= 1'b1;
		carry_in <= 1'b0;
		#100;
		//01011
		a0 <= 1'b0;
		b0 <= 1'b1;
		a1 <= 1'b0;
		b1 <= 1'b1;
		carry_in <= 1'b1;
		#100;
		//01100
		a0 <= 1'b0;
		b0 <= 1'b1;
		a1 <= 1'b1;
		b1 <= 1'b0;
		carry_in <= 1'b0;
		#100;
		//01101
		a0 <= 1'b0;
		b0 <= 1'b1;
		a1 <= 1'b1;
		b1 <= 1'b0;
		carry_in <= 1'b1;
		#100;
		//01110
		a0 <= 1'b0;
		b0 <= 1'b1;
		a1 <= 1'b1;
		b1 <= 1'b1;
		carry_in <= 1'b0;
		#100;
		//01111
		a0 <= 1'b0;
		b0 <= 1'b1;
		a1 <= 1'b1;
		b1 <= 1'b1;
		carry_in <= 1'b1;
		#100;
		
		//10000
		a0 <= 1'b1;
		b0 <= 1'b0;
		a1 <= 1'b0;
		b1 <= 1'b0;
		carry_in <= 1'b0;
		#100;
		//10001
		a0 <= 1'b1;
		b0 <= 1'b0;
		a1 <= 1'b0;
		b1 <= 1'b0;
		carry_in <= 1'b1;
		#100;
		//10010
		a0 <= 1'b1;
		b0 <= 1'b0;
		a1 <= 1'b0;
		b1 <= 1'b1;
		carry_in <= 1'b0;
		#100;
		//10011
		a0 <= 1'b1;
		b0 <= 1'b0;
		a1 <= 1'b0;
		b1 <= 1'b1;
		carry_in <= 1'b1;
		#100;
		//10100
		a0 <= 1'b1;
		b0 <= 1'b0;
		a1 <= 1'b1;
		b1 <= 1'b0;
		carry_in <= 1'b0;
		#100;
		//10101
		a0 <= 1'b1;
		b0 <= 1'b0;
		a1 <= 1'b1;
		b1 <= 1'b0;
		carry_in <= 1'b1;
		#100;
		//10110
		a0 <= 1'b1;
		b0 <= 1'b0;
		a1 <= 1'b1;
		b1 <= 1'b1;
		carry_in <= 1'b0;
		#100;
		//10111
		a0 <= 1'b1;
		b0 <= 1'b0;
		a1 <= 1'b1;
		b1 <= 1'b1;
		carry_in <= 1'b1;
		#100;
		//11000
		a0 <= 1'b1;
		b0 <= 1'b1;
		a1 <= 1'b0;
		b1 <= 1'b0;
		carry_in <= 1'b0;
		#100;
		//11001
		a0 <= 1'b1;
		b0 <= 1'b1;
		a1 <= 1'b0;
		b1 <= 1'b0;
		carry_in <= 1'b1;
		#100;
		//11010
		a0 <= 1'b1;
		b0 <= 1'b1;
		a1 <= 1'b0;
		b1 <= 1'b1;
		carry_in <= 1'b0;
		#100;
		//11011
		a0 <= 1'b1;
		b0 <= 1'b1;
		a1 <= 1'b0;
		b1 <= 1'b1;
		carry_in <= 1'b1;
		#100;
		//11100
		a0 <= 1'b1;
		b0 <= 1'b1;
		a1 <= 1'b1;
		b1 <= 1'b0;
		carry_in <= 1'b0;
		#100;
		//11101
		a0 <= 1'b1;
		b0 <= 1'b1;
		a1 <= 1'b1;
		b1 <= 1'b0;
		carry_in <= 1'b1;
		#100;
		//11110
		a0 <= 1'b1;
		b0 <= 1'b1;
		a1 <= 1'b1;
		b1 <= 1'b1;
		carry_in <= 1'b0;
		#100;
		//11111
		a0 <= 1'b1;
		b0 <= 1'b1;
		a1 <= 1'b1;
		b1 <= 1'b1;
		carry_in <= 1'b1;
		#100;		
	end
      
endmodule

