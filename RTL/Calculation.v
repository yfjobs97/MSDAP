`timescale 1ns / 1ps

`define RJ_SIZE 16

module Calculation (
	      sClk,
	      reset_n,
	      currentCoeffIndex,
	      coeffExtracted,
	      dataIndex,
	      dataIndexToFetch,
	      inData,
	      currentRjIndex,
	      currentRjValue,
	      thisNCompleted,
	      overallResult
	      );
	/*Clac Status*/
	input wire sClk;
	input wire reset_n;
	reg [2:0] calcStage;
	/*Coeff Related*/
	output reg [9:0] currentCoeffIndex;//In case of overflowing
	input [15:0] coeffExtracted;  
	reg inCoeffSign; 
	reg [7:0] coeffValue;
	reg requestNextEndCoeff; 
	reg [15:0] endCoeffIndex;//To Fit with currentRjValue. Only 8 bits are used
	/*RJ related*/
	output reg [4:0] currentRjIndex;
	input [15:0] currentRjValue;
	/*Data Related*/
	input [7:0] dataIndex; 
	output reg [7:0] dataIndexToFetch; 
	input wire [15:0] inData;
	/*SignExtendRelated*/
	reg loadDataToSignExtend; 
	wire [39:0] dataBitExtended; 
	/*ALU Related*/
	reg ALUReset_n;
	wire [39:0] ALUResult; 
	wire ALUResultReady;  
	wire [39:0] inOperandB; 
	reg firstValue; //Used to determine the value of inOperandB at the assign statement
	/*Bitshifter Realted*/
	reg shifted;
	wire [39:0] shifterDataResult;
	/*Result*/
	output reg [39:0] overallResult;	
	output reg thisNCompleted;
	assign inOperandB = shifted ? shifterDataResult : (firstValue ? 0 : ALUResult);
	calcSignExtend signExt(
		.inData(inData),
		.dataBitExtended(dataBitExtended)
	);
	calcAdder adder(
		.sClk(sClk),
		.inCoeffSign(inCoeffSign),
		.inOperandA(dataBitExtended),
		.inOperandB(inOperandB),
		.calcResult(ALUResult),
		.ALUResultReady(ALUResultReady),
		.ALUReset_n(ALUReset_n)
	);
	calcBitShifter bitShift(
		.calcStage(calcStage),
		.ALUResult(ALUResult),
		.shifterDataResult(shifterDataResult)
	);

	always @ (posedge sClk or negedge reset_n) begin//{
		if(reset_n == 0) begin//{
			shifted = 1'b0;
			thisNCompleted = 0;
			calcStage = 3'b000;
			currentCoeffIndex = 0;
			currentRjIndex = 0;
			dataIndexToFetch = 0;
			endCoeffIndex = currentRjValue;
			requestNextEndCoeff = 0;
			loadDataToSignExtend = 1;
			firstValue = 1;
			ALUReset_n = 0;
		end//}end if reset_n
		else begin//{
			if(calcStage==3'b000) begin//Fetch data and Perform calculation
				if(loadDataToSignExtend) begin
					  ALUReset_n = 1;
					  loadDataToSignExtend = 0;
					  if(requestNextEndCoeff)begin
						  requestNextEndCoeff = 0;
						  endCoeffIndex = currentRjValue + endCoeffIndex;
					  end
					  inCoeffSign = coeffExtracted[8];
					  coeffValue = coeffExtracted[7:0];
					  dataIndexToFetch = (dataIndex - 1) - coeffValue;//n=dataIndexR - 1
					  
				end//end if (loadDataToSignExtend)

				
					calcStage = 3'b111;

			end//}end if (calcStage==0000)  (Fetch and Calc stage)
			else if(calcStage == 3'b111) begin
				if(ALUResultReady) begin
					//$display("Just finished with coefficient %d. \n", currentCoeffIndex);
					firstValue = 0;
					shifted = 1'b0;
					currentCoeffIndex = currentCoeffIndex + 1;
					ALUReset_n = 0;
					//Determine which state to go
					if(currentCoeffIndex == endCoeffIndex) begin//{
						  calcStage = 3'b001;//Go to shifting stage
						  currentRjIndex = currentRjIndex + 1;

					end//}end if currentCoeffIndex == endCoeffIndex
					else begin//Not yet accumulated all x(n-k) terms in current Uj
						loadDataToSignExtend = 1;
						calcStage = 3'b000;
					end//end if currentCoeffIndex == endCoeffIndex chunk
				end//end if(ALUResultReady)
			end
			else if(calcStage==3'b001) begin//{shifting stage
				shifted = 1'b1;
				//Determine which stage to go
				if(currentRjIndex == `RJ_SIZE) begin//{all result calculated, prepare output
					calcStage = 3'b010;
				end//}end currentRjIndex == RJ_SIZE
				else begin//{Haven't gone thorugh all coefficients
					requestNextEndCoeff = 1;
					calcStage = 3'b000;//Changed to read data stage
					loadDataToSignExtend = 1;
				end//}end else begin(currentRjIndex==RJ_SIZE chunk)
			end//}end else if (calcStage==0001) (shifting stage)
			else if(calcStage==3'b010) begin//{
				//$display("Output is now ready. overallResult is %h \n", overallResult);
				overallResult = shifterDataResult;
				thisNCompleted = 1'b1;
			end//} end else if (calcStage==0010)

		      end//}end else begin(reset_n chunk)

	end//}End always loop

endmodule
