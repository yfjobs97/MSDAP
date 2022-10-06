//Yu Feng and Luke Allen

`timescale 1ns / 1ps
`define RJ_SIZE 16
`define COEFF_SIZE 512
`define DATA_SIZE 256

module FSM_MSDAP(
	sClk, //26.88 MHz = Clock period of 38 ns
	dClk, //768 kHz = Clock period of 1302 ns
	start,
	reset_n,
	frame,
	inDataL,       //Only one bit is used
	inDataR,       //Only one bit is used
	inReady,
	outReadyToTB,
	outDataL, //Parallel
	outDataR
    );
    
	//CLK signals and start pull-up
	input sClk; //26.88 MHz = Clock period of 38 ns
	input dClk; //768 kHz = Clock period of 1302 ns
	input start;

	//State memory
	reg [3:0] state; //state = 0 moved to always block

	//"S2P" Registers    
	wire [8:0] coeffIndex;//only 8 bits are used. extra bit for overflow prevention 
	wire coeffWriteL;
	wire coeffWriteR;
	wire [7:0] dataIndexL;//Index to write to Mem
	wire [7:0] dataIndexR;
	wire dataWriteL;
	wire dataWriteR;
	wire [7:0] dataWriteIndexL;//same as dataIndexL/R. Updates slightly later
	wire [7:0] dataWriteIndexR;
	wire done;//For states 2 and 4, done means finished reading all Rj/Coeff. For state 6, done means finished reading 1 dataValue
	input frame;
	input [15:0] inDataL;       //Only one bit is used
	input [15:0] inDataR;       //Only one bit is used
	output reg inReady;//To controller and S2P
	//reg [7:0] n = 0;//Tells which slot to a data should put in. Merged with dataIndexL/R - 1
	reg S2PReset_n;
	reg resetDataDone_n;
	output wire [39:0] outDataL; //Parallel
	output wire [39:0] outDataR;
	reg outReady; 
	output wire outReadyToTB;
	reg resetCalc_n;
	input reset_n;
	wire [3:0] rjIndex;
	wire rjWriteL;
	wire rjWriteR;
	wire [15:0] toMemL;
	wire [15:0] toMemR;
	reg wakeupSignal; //= 1'b0;//Contact S2P to adjust dataIndexL and R and wakeup.
	reg [31:0] zeroCount;

	//Left Calc only Registers
	wire [15:0] coeffExtractedL; //become wire    
	wire [9:0] coeffIndexL;//Changed to wire
	wire [7:0] dataIndexToFetchL;
	wire [15:0] dataInputL;//become wire
	reg dataMemReset_nL;
	reg [39:0] finalOutL;
	wire outReadyL;
	wire [4:0] rjIndexL;//Only 4 bits are used. extra bit for overflow prevention
	wire [15:0] rjValueL;
	wire [39:0] tempOutL;

	//Right calc Only Registers
	wire [15:0] coeffExtractedR;//become wire
	wire [9:0] coeffIndexR;//Changed to wire
	wire [7:0] dataIndexToFetchR;
	wire [15:0] dataInputR;//become wire
	reg dataMemReset_nR;
	reg [39:0] finalOutR;
	wire outReadyR;
	wire [4:0] rjIndexR;//Only 4 bits are used. extra bit for overflow prevention
	wire [15:0] rjValueR;
	wire [39:0] tempOutR;

	S2P serialRead(
		.dClk(dClk),
		.coeffIndex(coeffIndex),
		.coeffWriteL(coeffWriteL),
		.coeffWriteR(coeffWriteR),
		.dataIndexL(dataIndexL),
		.dataIndexR(dataIndexR),
		.dataWriteL(dataWriteL),
		.dataWriteR(dataWriteR),
		.dataWriteIndexL(dataWriteIndexL),
		.dataWriteIndexR(dataWriteIndexR),
		.done(done),
		.frame(frame),
		.inSerialDataL(inDataL),
		.inSerialDataR(inDataR),
		.inReady(inReady),
		.reset_n(S2PReset_n),
		.resetDataDone_n(resetDataDone_n),
		.rjIndex(rjIndex),
		.rjWriteL(rjWriteL),
		.rjWriteR(rjWriteR),
		.FSMState(state),
		.start(start),
		.toMemL(toMemL),
		.toMemR(toMemR),
		.wakeupSignal(wakeupSignal)
	);


	RJ_MEM rjLeft(
		.rjReadAddr(rjIndexL),
		.rjWriteAddr(rjIndex),
		.rjDataIn(toMemL),
		.rjDataOut(rjValueL),
		.writeEnable(rjWriteL)
	);
	RJ_MEM rjRight(
		.rjReadAddr(rjIndexR),
		.rjWriteAddr(rjIndex),
		.rjDataIn(toMemR),
		.rjDataOut(rjValueR),
		.writeEnable(rjWriteR)
	);
	COEFF_MEM coeffLeft(
		.coeffReadAddr(coeffIndexL),
		.coeffWriteAddr(coeffIndex),
		.coeffDataIn(toMemL),
		.coeffDataOut(coeffExtractedL),
		.writeEnable(coeffWriteL)
	);
	COEFF_MEM coeffRight(
		.coeffReadAddr(coeffIndexR),
		.coeffWriteAddr(coeffIndex),
		.coeffDataIn(toMemR),
		.coeffDataOut(coeffExtractedR),
		.writeEnable(coeffWriteR)
	);
	DATA_MEM dataLeft(
		.sClk(sClk),
		.dataReadAddr(dataIndexToFetchL),
		.dataWriteAddr(dataWriteIndexL),
		.dataValueIn(toMemL),
		.dataValueOut(dataInputL),
		.memReset_n(dataMemReset_nL),
		.writeEnable(dataWriteL)
	);
	DATA_MEM dataRight(
		.sClk(sClk),
		.dataReadAddr(dataIndexToFetchR),
		.dataWriteAddr(dataWriteIndexR),
		.dataValueIn(toMemR),
		.dataValueOut(dataInputR),
		.memReset_n(dataMemReset_nR),
		.writeEnable(dataWriteR)
	);


	Calculation calcL (
		.sClk(sClk),
		.reset_n(resetCalc_n),
		.currentCoeffIndex(coeffIndexL),
		.coeffExtracted(coeffExtractedL),
		.dataIndex(dataIndexL),
		.dataIndexToFetch(dataIndexToFetchL),
		.inData(dataInputL),
		.currentRjIndex(rjIndexL),
		.currentRjValue(rjValueL),
		.thisNCompleted(outReadyL),
		.overallResult(tempOutL)
	);

	Calculation calcR (
		.sClk(sClk),
		.reset_n(resetCalc_n),
		.currentCoeffIndex(coeffIndexR),
		.coeffExtracted(coeffExtractedR),
		.dataIndex(dataIndexR),
		.dataIndexToFetch(dataIndexToFetchR),
		.inData(dataInputR),
		.currentRjIndex(rjIndexR),
		.currentRjValue(rjValueR),
		.thisNCompleted(outReadyR),
		.overallResult(tempOutR)
	);
	
	resultOutputModule resOut(
		.sClk(sClk),
		.outDataL(outDataL),
		.outDataR(outDataR),
		.outReadyFromFSM(outReady),
		.outReadyToTB(outReadyToTB),
		.resultL(finalOutL),
		.resultR(finalOutR)
	);



	//Finite State Machine
	always @(posedge sClk or negedge reset_n) begin

		if(reset_n == 0) begin
			if(state >= 5) begin //reset should have no effect when writing in Rj and Coeff
				$display("(In FSM module:)Reset signal detected. Clearing data... \n");
				state = 4'b0111;
				//Clear all registers except Rj and coefficients
				dataMemReset_nL = 1'b0;//Clearing Left Data memory
				dataMemReset_nR = 1'b0;//Clearing Right Data memory

			end//end if (state >= 5)
			else begin
				state = 4'b0000;
				inReady = 1'b0;
//  				S2PReset_n = 1'b1;
//  				dataMemReset_nL = 1'b1;
//  				dataMemReset_nR = 1'b1;
			end
		
		end //end if (!reset_n)
		else begin
			//$display("FSM is in state %d now. \n", state);

			if(state == 4'b0000) begin		// State 0, Initialization
				if(start) begin
					//Start Resetting values
					zeroCount = 0;
					wakeupSignal = 0;
					inReady = 1'b0;
					outReady = 1'bz;

					S2PReset_n = 1'b0;	
					resetDataDone_n = 1;


					
					state = 1;  //Next state is state 1
				end //end if start
			end //end if state 0
		
			//State 1, Wait to recieve Rj
			else if(state == 4'b0001) begin
				/*Stop Resetting some values*/
// 				dataMemReset_nL = 1'b1;
// 				dataMemReset_nR = 1'b1;
				S2PReset_n = 1'b1;
				inReady = 1'b1;
				if(frame) begin
					state = 2;  //Next state is state 2
				end
			end //end if state 1
		
			//State 2, Read Rj
			else if(state == 4'b0010) begin
					dataMemReset_nL = 1'b0;
					dataMemReset_nR = 1'b0;
				inReady = 1'b1;//inReady Remains high
				//Read Rj values in always dClk statement
				if(done) begin
					state = 3;
				end
			end //end if state 2
		
			//State 3, Wait to recieve Coefficient
			else if(state == 4'b0011) begin

				inReady = 1'b1;
				if(frame == 1 && done == 0) begin
					state = 4;  //Next state is state 4
				end
			end //end if state 3
		
			//State 4, Reading coefficient
			else if(state == 4'b0100) begin
				dataMemReset_nL = 1'b1;
				dataMemReset_nR = 1'b1;
				inReady = 1'b1;//inReady Remains high
				//Read coefficients (in S2P)
				if(done) begin
					state = 5;
				end
			end //end if state 4
		
			//State 5, Waiting to recieve data
			else if(state == 4'b0101) begin
				inReady = 1'b1;//inReady Remains high
				resetCalc_n = 0;//Hold at 0 until state 6
				if(frame == 1 && done == 0) begin
					state = 6;  //Next state is state 6
				end
			end //end if state 5
		
			//State 6, Working mode 
			else if(state == 4'b0110) begin
				wakeupSignal = 1'b0;
				inReady = 1'b1;//inReady Remains high
				if(done) begin
					resetDataDone_n = 0;
					resetCalc_n = 1;//enables calc module                    
					if(toMemL == 0 && toMemR == 0) begin                 //If input data is all zeros, increment zero counter
					    zeroCount = zeroCount + 1;
					    $display("(In FSM module:)Num of Zero Inputs Detected: %d", zeroCount);
					end
					else begin
					    zeroCount = 0;//Consecutive 0's broken
					    $display("(In FSM module:)Since New data detected. Num of Zero Inputs Detected: %d", zeroCount);
					end// end if(toMemL==0 && toMemR==0) block

					if(zeroCount == 800) begin             //If zero counter has reached 10, next state is state 8
					    state = 4'b1000;
					    $display("(In FSM module:)Since 800 zeros are detected consecutively in both channels, Entering Sleep mode...");
					end// end if(zeroCount==800)	
				end
				else begin
				      if(outReadyL && outReadyR) begin//If calc modules of both sides have produced result
					finalOutL = tempOutL;
					finalOutR = tempOutR;
					outReady = 1'b1;

					resetCalc_n = 0;

				      end// end if (outReadyL && outReadyR)
				      else begin
					      outReady = 1'b0;

					      resetDataDone_n = 1;
				      end// end if (outReadyL && outReadyR) chunk
				end
			end //end if state 6
	    
			//State 7, Clearing mode
			else if(state == 4'b0111) begin
				inReady = 0;
				resetCalc_n = 0;//Hold at 0 until required
				zeroCount = 0;
				finalOutL = 0;
				finalOutR = 0;

				outReady = 0;
				dataMemReset_nL = 1'b1;
				dataMemReset_nR = 1'b1;
				state = 4'b0101;//Go back to state 5  after finish
			end //end if state 7
		
			//State 8, Sleeping mode
			else if(state == 4'b1000) begin
				resetCalc_n = 0;//No calculation required during sleep
				resetDataDone_n = 1;
				inReady = 1;
				outReady = 0;
				zeroCount = 0;              //Reset zero counter
				if(inDataL[0] || inDataR[0]) begin                  //If any nonzero input detected
					wakeupSignal = 1'b1;

					//$stop; //STOP HERE to simulate to wake up point
					state = 4'b0110;        //Next state is state 6
					$display("(In FSM module:)Non-zero Input detected. Back to calculation...");
				end
			end //end if state 8

		end
    
	end //end always @ (posedge sClk or negedge reset_n)
    
endmodule
