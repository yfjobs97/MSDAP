//Yu Feng and Luke Allen
`timescale 1ns / 1ps

//inOperandA + inOperandB = calcResult
module calcAdder(
	sClk,
	inCoeffSign,
	inOperandA,
	inOperandB,
	calcResult,
	ALUResultReady,
	ALUReset_n

    );
	input sClk;
	input inCoeffSign;               //1 = negative, perform subtraction; 0 = positive, perform addition
	input [39:0] inOperandA;
	input [39:0] inOperandB;
	output reg [39:0] calcResult;
	output reg ALUResultReady;
	input ALUReset_n;
	always @ (negedge sClk or negedge ALUReset_n) begin
		if(ALUReset_n == 0) begin
			ALUResultReady = 1'b0;
		end
		else if (ALUReset_n == 1) begin
			if(inCoeffSign) begin//subtracting, perform two's compliment
			      calcResult = ((~inOperandA) + 1) + inOperandB;
			end
			else begin//adding
			      calcResult = inOperandA + inOperandB;
			end
			ALUResultReady = 1'b1;
		end

	end
    
endmodule
