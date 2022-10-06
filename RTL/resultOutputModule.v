//Yu Feng and Luke Allen

`timescale 1ns/1ps

module resultOutputModule(
	sClk,
	outDataL,
	outDataR,
	outReadyFromFSM,
	outReadyToTB,
	resultL,
	resultR
);
	input sClk;
	output reg [39:0] outDataL;
	output reg [39:0] outDataR;
	input outReadyFromFSM;
	output reg outReadyToTB;
	input [39:0] resultL;
	input [39:0] resultR;
	//Writing output Data at negedge outReady to ensure enough time spent in sending out data.
	always @ (negedge sClk) begin  //Only transmit data when outReady is high
		if(outReadyFromFSM == 0) begin
			outReadyToTB = 1'b0;
		end
		else if (outReadyFromFSM == 1) begin
			outDataL = resultL;        //Set out data to value of tempOut
			outDataR = resultR;
			outReadyToTB =1'b1;
			$display("(In resultOutput module:) Results attempted to send were %h and %h", resultL, resultR);
		end
	end //end always @ (posedge sClk)
endmodule