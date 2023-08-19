`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:41:50 10/05/2021
// Design Name:   main
// Module Name:   /home/ise/ASIC/mainTest.v
// Project Name:  ASIC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mainTest;

	// Inputs
	reg [15:0] dataIn;
	reg [11:0] coeff;
	reg [8:0] rj;

	// Outputs
	wire [39:0] dataOut;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.dataOut(dataOut), 
		.dataIn(dataIn), 
		.coeff(coeff), 
		.rj(rj)
	);
	
	// Array of registers which will contain the data from input file
	reg [1499:0] dataFile [15:0];
	reg [511:0] coeffFile [8:0];
	reg [15:0] rjFile [7:0];
	
	localparam i = 0;

	// Initialize Inputs
	initial begin
		
		dataIn = 0;
		coeff = 0;
		rj = 0;
		#10;
        
		

	end
	
	// This will loop and update the input to the device every 10 time units
	always begin
		
		
		dataIn =
		coeff = 
		rj = 
		#10;
		
	end
		
      
endmodule

