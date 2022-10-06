//Yu Feng and Luke Allen
`timescale 1ns / 1ps
`define RJ_SIZE 16
`define COEFF_SIZE 512
module S2P(
	dClk,
	coeffIndex,
	coeffWriteL,
	coeffWriteR,
	dataIndexL,
	dataIndexR,
	dataWriteL,
	dataWriteR,
	dataWriteIndexL,
	dataWriteIndexR,
	done,
	frame,
	inSerialDataL,
	inSerialDataR,
	inReady,
	reset_n,
	resetDataDone_n,
	rjIndex,
	rjWriteL,
	rjWriteR,
	FSMState,
	start,
	toMemL,
	toMemR,
	wakeupSignal
	
	
	);
	input dClk;
	reg [3:0] bitIndex;// = 0;//Current bit received. S2P reads the same bit to tempInL and tempInR at the same time
	output reg [8:0] coeffIndex;// = 0;//Coefficient Address to write to COEFF_MEM, via FSM
	output reg coeffWriteL;
	output reg coeffWriteR;//to COEFF_MEM coeffRight's writeEnable signal via FSM
	output reg [7:0] dataIndexL;// = 0;
	output reg [7:0] dataIndexR;// = 0;
	output reg dataWriteL;
	output reg dataWriteR;//to DATA_MEM dataRight's writeEnable signal via FSM
	output reg [7:0] dataWriteIndexL;//Same as data dataIndexL/R, just updates later
	output reg [7:0] dataWriteIndexR;//data Address to write to DATA_MEM, via FSM
	output reg done;//= 0;//to FSM
	input frame;//From Main Controller via FSM
	input [3:0] FSMState; //Current state of FSM
	input inReady;//From FSM
	input [15:0] inSerialDataL; //One bit of dataL from Main Controller via FSM 
	input [15:0] inSerialDataR;//One bit of dataR from Main Controller via FSM 
	reg readFlag;// = 0;	
	input reset_n;//From Main Controller via FSM
	input resetDataDone_n;
	output reg [3:0] rjIndex;// = 0;//RJ Address to write to RJ_MEM, via FSM
	output reg rjWriteL;
	output reg rjWriteR;//to RJ_MEM rjRight's writeEnable signal via FSM
	input wire start;
	reg [15:0] tempInL;//Reassembling data received, to corresponding memory
	reg [15:0] tempInR;
	output reg [15:0] toMemL;
	output reg [15:0] toMemR;
	input wakeupSignal;//Adjust dataIndexL and R at wakeup

//Reading Input Data at falling edge of D Clock
	always @ (negedge dClk or posedge wakeupSignal or negedge reset_n or negedge resetDataDone_n) begin
		if(wakeupSignal == 1) begin//wakeup
			dataIndexL = dataIndexL - 1;//Move to S2P
			dataIndexR = dataIndexR - 1;
			$display("(In S2P module:)Time to awake. Adjusting dataIndex... in S2P \n");
		end
		else if (reset_n == 0) begin //Reset
			bitIndex = 0;
			coeffIndex = 0;
			dataIndexL = 0;
			dataIndexR = 0;
			done = 0;
			readFlag = 0;
			rjIndex = 4'b0000; //Only With Start
				rjWriteL = 1'b0;
				rjWriteR = 1'b0;
				coeffWriteL = 1'b0;
				coeffWriteR = 1'b0;
				dataWriteL = 1'b0;
				dataWriteR = 1'b0;
		end
		else if(resetDataDone_n == 0) begin
			done = 0;
		end
		else if(inReady) begin                       //Only accept data when inReady is high
			if(frame) begin                     //Start when frame goes high
				if(rjWriteL && rjWriteR) begin
					rjIndex = rjIndex + 1;
				end
				rjWriteL = 1'b0;
				rjWriteR = 1'b0;
				if(coeffWriteL && coeffWriteR) begin
					coeffIndex = coeffIndex + 1;

				end
				coeffWriteL = 1'b0;
				coeffWriteR = 1'b0;
				if(dataWriteL && dataWriteR) begin
					dataWriteIndexL = dataIndexL;
					dataWriteIndexR = dataIndexR;
				end
				dataWriteL = 1'b0;
				dataWriteR = 1'b0;
				done = 1'b0;
				readFlag = 1;                   //Set flag indicating reading has begun, local reset
				bitIndex = 15;                   //bitIndex keeps track the bits that have come in, starting with bit 15 (MSB)
				tempInL[bitIndex] = inSerialDataL[0];       //Set the bit of tempIn at index bitIndex to the input data
				tempInR[bitIndex] = inSerialDataR[0]; 
				bitIndex = bitIndex - 1;
			end //end if frame
			else begin                          //If frame is low, we are either not reading yet, or we are in the middle of a chunk of data
				if(readFlag) begin              //If read flag is set to 1, we are in the middle of reading
					tempInL[bitIndex] = inSerialDataL[0];   //Set the bit of tempIn at index bitIndex to the input data
					tempInR[bitIndex] = inSerialDataR[0];
					toMemL = tempInL;
					toMemR = tempInR;
					if(bitIndex == 0) begin      //If we have reached the last bit in the data sequence
						readFlag = 0;           //Set readflag to 0 and wait for another frame signal
						if(FSMState == 4'b0010) begin
							//Rj
							rjWriteL = 1'b1;//Write to RJ Memory
							rjWriteR = 1'b1;
							$display("(In S2P module:) Rj just read was rjL[%d] = %h and rjR[%d] = %h", rjIndex, tempInL, rjIndex, tempInR);

							if(rjIndex == `RJ_SIZE - 1) begin
								done = 1;//At Rj stage, done means finish reading ALL RJL and RJR
							end//end if (rjIndex== `RJ_SIZE - 1) block
						end//end if (FSMState == 4'b0010)
						else if(FSMState == 4'b0100) begin
							//coefficients
							coeffWriteL = 1'b1;
							coeffWriteR = 1'b1;
							$display("(In S2P module:) Coeff just read was coeffL[%d] = %h and coeffR[%d] = %h", coeffIndex, tempInL, coeffIndex, tempInR);
							if(coeffIndex == `COEFF_SIZE - 1) begin
								done = 1;//At coefficient stage, done means finish reading ALL coefficients
							end
						end//end if (FSMState == 4'b0100)
						else if(FSMState == 4'b0110) begin
							//data
							dataWriteL = 1'b1;
							dataWriteR = 1'b1;
							$display("(In S2P module:) Data just read was dataL[%d] = %h and dataR[%d] = %h. Data Index omits 0 inputs during sleeping mode", dataIndexL, tempInL, dataIndexR, tempInR);
							done = 1;//At data stage, done means finish reading 1 pair data, NOT the entire dataset
							dataWriteIndexL = dataIndexL;
							dataWriteIndexR = dataIndexR;
							dataIndexL = dataIndexL + 1;
							dataIndexR = dataIndexR + 1;

						end//end if (FSMState == 4'b0110) 

					end //end if bitIndex == 0
				
				else //If we have not reached the last bit
					bitIndex = bitIndex - 1;  //Decrement the bitIndex
				end //end if readFlag
			end //end else frame 
		end //end if inReady
	
	end //end always @ (negedge dClk)
	
endmodule