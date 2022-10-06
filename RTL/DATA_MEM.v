//Yu Feng and Luke Allen

`timescale 1ns / 1ps
`define DATA_SIZE 256
module DATA_MEM(
	sClk,
	dataReadAddr,
	dataWriteAddr,
	dataValueIn,
	dataValueOut,
	memReset_n,
	writeEnable
	);

	input sClk;
	input [7:0] dataReadAddr;
	input [7:0] dataWriteAddr;
	input [15:0] dataValueIn;
	output reg [15:0] dataValueOut;
	reg [15:0] DATA_STORAGE [0:`DATA_SIZE - 1];
	input memReset_n;
	reg [8:0] resetAddrIndex; //= 0;
	reg resetCaptured; //= 1'b0;
	input writeEnable;
	reg [1:0] flushStage;
// 	wire [15:0] zeroVal;
// 	assign zeroVal = 16'b0;

	always @(dataReadAddr) begin
		if(memReset_n == 1) begin //NOT resetting
			dataValueOut <= DATA_STORAGE[dataReadAddr];
			//$display("(In DATA MEM): Value just read was DATA_STORAGE[%d] = %h", dataReadAddr, DATA_STORAGE[dataReadAddr]);
		end
	end//end always@(negedge dataIndexReady)
	
	always @ (posedge sClk or negedge memReset_n or posedge writeEnable) begin//Perform clearing while not blocking memReset_n//May Cause more power?
		if(memReset_n == 0) begin //Resetting
			resetCaptured <= 1'b1;
			resetAddrIndex <= 0;
			flushStage <= 0;
		end
		else begin
			if(writeEnable == 1) begin
				DATA_STORAGE[dataWriteAddr] <= dataValueIn;
			end
			else if(resetCaptured == 1) begin
				if(flushStage == 0) begin
					DATA_STORAGE[resetAddrIndex] <= 16'b0;
					flushStage <= 1;
				end
				else if(flushStage == 1) begin
					resetAddrIndex <= resetAddrIndex + 1;
					flushStage <= 2;
				end
				else if (flushStage == 2) begin
					if(resetAddrIndex < `DATA_SIZE) begin
					      flushStage <= 0;
					end
					else begin
					      	resetCaptured <= 0;
						flushStage <= 3;
						$display("(In DATA MEM): Memory cleared! \n");
					end
				end
			end
		end
	end//end always @ (resetCaptured)

endmodule