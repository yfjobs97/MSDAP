//Yu Feng and Luke Allen
`timescale 1ns / 1ps


module calcBitShifter(
	calcStage,
	ALUResult,
	shifterDataResult
	
	
    );
	input [39:0] ALUResult;
	input [2:0] calcStage;
	output reg [39:0] shifterDataResult;
    

	always @ (calcStage) begin
		if(calcStage == 3'b001) begin //If we have gone through all coefficients, now we must shift
			if(ALUResult[39] == 1) begin//If ALUResult is negative
			    shifterDataResult = ALUResult >> 1 | 40'h8000000000;//Pad 1 at MSB
			end//} end ALUResult[39]==1
			else begin//{
			    shifterDataResult = ALUResult >> 1;
			end//}end else begin (ALUResult[39]==1 chunk)
		end //}end if(calcStage)

	end
   
endmodule
