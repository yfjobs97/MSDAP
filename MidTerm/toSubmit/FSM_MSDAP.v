//Yu Feng and Luke Allen

`timescale 1ns / 1ps
`define RJ_SIZE 16
`define COEFF_SIZE 512
`define DATA_SIZE 256

module FSM_MSDAP(
    input sClk, //26.88 MHz = Clock period of 38 ns
    input dClk, //768 kHz = Clock period of 1302 ns
    input start,
    input reset_n,
    input frame,
    input [15:0] inDataL,       //Only one bit is used
    input [15:0] inDataR,       //Only one bit is used
    output reg inReady,
    output reg outReady = 0,
    output reg [39:0] outDataL, //Parallel
    output reg [39:0] outDataR
    );
    
    //State memory
    reg [4:0] state = 4'b0000;
    
    //Registers
    reg [15:0] rjL [0:`RJ_SIZE - 1];        //16 Rj, left
    reg [15:0] rjR [0:`RJ_SIZE - 1];  
    
    reg [15:0] coeffL [0:`COEFF_SIZE - 1];    //512 coeff, left
    reg [15:0] coeffR [0:`COEFF_SIZE - 1];
    
    //Clearable Memory
    reg [15:0] dataL [0:`DATA_SIZE - 1];    //512 data, left
    reg [15:0] dataR [0:`DATA_SIZE - 1];

    reg [15:0] tempInL;
    reg [15:0] tempInR;
    
    reg [31:0] zeroCount;//NEED L/R?

  
    reg [39:0] finalOutL;
    reg [39:0] finalOutR;

    reg [3:0] bitIndex; //No need L and R as both channels are reading in at the same time
    reg readFlag;
    reg writeFlag;
    reg [31:0] i; //Memory index for data buffer when clearing to 0
    
    reg [3:0] rjIndex;

    
    reg [8:0] coeffIndex;
    
    reg [7:0] dataIndexL;//Index to fetch in memory for L and R
    reg [7:0] dataIndexR;
    
    wire [3:0] rjIndexL;
    wire readyforDataL;
    wire outReadyL;
    wire [39:0] tempOutL;
    
    reg [7:0] dataIndexToFetchL;
    reg [8:0] coeffExtractedL;
    reg [8:0] coeffIndexL;
    reg coeffSignL;
    reg [7:0] coeffValueL;
    reg [15:0] dataInputL;
    reg [9:0] endCoeffIndexL = 0;
    
    wire [3:0] rjIndexR;
    wire readyforDataR;
    reg coeffSignR;
    wire outReadyR;
    wire [39:0] tempOutR;
    
    reg [7:0] dataIndexToFetchR;
    reg [8:0] coeffExtractedR;
    reg [8:0] coeffIndexR;
    reg [7:0] coeffValueR;
    reg [15:0] dataInputR;
    reg [9:0] endCoeffIndexR = 0;
    
    reg [7:0] n = 0;
    reg done;
    reg resetCalc_n;
    wire requestNextEndCoeffL;
    wire requestNextEndCoeffR;
    
    Calculation calcL (
    .clk(sClk),
    .reset(resetCalc_n),
    .inData(dataInputL),
    .readyForData(readyforDataL),
    .inCoeffSign(coeffSignL),
    .rjIn( rjL[rjIndexL]),
    .endCoeffIndex(endCoeffIndexL),
    .currentRjIndex(rjIndexL),
    .thisNCompleted(outReadyL),
    .overallResult(tempOutL),
    .requestNextEndCoeff(requestNextEndCoeffL)
    );
    
    Calculation calcR (
    .clk(sClk),
    .reset(resetCalc_n),
    .inData(dataInputR),
    .readyForData(readyforDataR),
    .inCoeffSign(coeffSignR),
    .rjIn( rjR[rjIndexR]),
    .endCoeffIndex(endCoeffIndexR),
    .currentRjIndex(rjIndexR),
    .thisNCompleted(outReadyR),
    .overallResult(tempOutR),
    .requestNextEndCoeff(requestNextEndCoeffR)
    );

//Reading Input Data at falling edge of D Clock
    always @ (negedge dClk) begin
    
        if(inReady) begin                       //Only accept data when inReady is high
            if(frame) begin                     //Start when frame goes high
                readFlag = 1;                   //Set flag indicating reading has begun
                bitIndex = 15;                   //bitIndex keeps track the bits that have come in, starting with bit 15 (MSB)
                tempInL[bitIndex] = inDataL[0];       //Set the bit of tempIn at index bitIndex to the input data
		tempInR[bitIndex] = inDataR[0]; 
                bitIndex = bitIndex - 1;
            end //end if frame
            else begin                          //If frame is low, we are either not reading yet, or we are in the middle of a chunk of data
                if(readFlag) begin              //If read flag is set to 1, we are in the middle of reading
                    tempInL[bitIndex] = inDataL[0];   //Set the bit of tempIn at index bitIndex to the input data
		    tempInR[bitIndex] = inDataR[0];
                    if(bitIndex == 0) begin      //If we have reached the last bit in the data sequence
                        readFlag = 0;           //Set readflag to 0 and wait for another frame signal
                        if(state == 4'b0010) begin
                            //Rj
                            rjL[rjIndex] = tempInL;
			    rjR[rjIndex] = tempInR;
			    $display("(In FSM module:) Rj just read was rjL[%d] = %h and rjR[%d] = %h", rjIndex, tempInL, rjIndex, tempInR);

                            if(rjIndex == `RJ_SIZE - 1)
                                done = 1;//At Rj stage, done means finish reading ALL RJL and RJR
                            else
                                rjIndex = rjIndex + 1;
                        end
                        else if(state == 4'b0100) begin
                            //coefficients
                            coeffL[coeffIndex] = tempInL;
			    coeffR[coeffIndex] = tempInR;
			    $display("(In FSM module:) Coeff just read was coeffL[%d] = %h and coeffR[%d] = %h", coeffIndex, tempInL, coeffIndex, tempInR);
                            if(coeffIndex == `COEFF_SIZE - 1)
                                done = 1;//At coefficient stage, done means finish reading ALL coefficients
                            else
                                coeffIndex = coeffIndex + 1;
                        end
                        else if(state == 4'b0110) begin
                            //data
                            dataL[dataIndexL] = tempInL;
			    dataR[dataIndexR] = tempInR;
			    $display("(In FSM module:) Data just read was dataL[%d] = %h and dataR[%d] = %h. Data Index omits 0 inputs during sleeping mode", dataIndexL, tempInL, dataIndexR, tempInR);
                            done = 1;//At data stage, done means finish reading 1 pair data, NOT the entire dataset
                            dataIndexL = dataIndexL + 1;
			    dataIndexR = dataIndexR + 1;
                        end
			
                    end //end if bitIndex == 0
                    else                        //If we ahve not reached the last bit
                        bitIndex = bitIndex - 1;  //Decrement the bitIndex
                end //end if readFlag
            end //end else frame 
        end //end if inReady
    
    end //end always @ (negedge dClk)
    
    //Writing output Data at rising edge of S Clock. or posedge outReady to ensure enough time spent in sending out data.
    always @ (posedge outReady) begin
    
        //if(outReady) begin              //Only transmit data when outReady is high
        outDataL = finalOutL;        //Set out data to value of tempOut
	outDataR = finalOutR;
	$display("(In FSM module:) finalOut attempted to send were %h and %h", finalOutL, finalOutR);
	#3;//#18;// ensure tb reception. 2xup cycle
        outReady = 0;                   //Set outReady to 0 until a new output is ready

       // end //end if outReady
        
    end //end always @ (posedge sClk)
    
    always @(negedge requestNextEndCoeffL) begin
        //$display("endCoeffIndexL before update is %h.\n", endCoeffIndexL);
        endCoeffIndexL = rjL[rjIndexL] + endCoeffIndexL;
        //$display("rjL[%d] is %h. endCoeffIndexL is now %h.\n",rjIndexL, rjL[rjIndexL], endCoeffIndexL);
    end

    always @(negedge readyforDataL) begin
	if(resetCalc_n == 1) begin //Calc is NOT resetting
	  coeffExtractedL = coeffL[coeffIndexL];
	  coeffSignL = coeffExtractedL[8];
	  coeffValueL = coeffExtractedL[7:0];
	  dataIndexToFetchL = n - coeffValueL;
	  if (dataIndexToFetchL < 0) begin

	  end
	  else begin
	    dataInputL = dataL[dataIndexToFetchL];
	  end
	  coeffIndexL = coeffIndexL + 1;//This will sync with coeffIndex in MSDAP
        end
    end
    always @(negedge requestNextEndCoeffR) begin
            endCoeffIndexR = rjR[rjIndexR] + endCoeffIndexR;
    end
    always @(negedge readyforDataR) begin
	if(resetCalc_n == 1) begin // Calc is NOT resetting
	  coeffExtractedR = coeffR[coeffIndexR];
	  coeffSignR = coeffExtractedR[8];
	  coeffValueR = coeffExtractedR[7:0];
	  dataIndexToFetchR = n - coeffValueR;
	  if (dataIndexToFetchR < 0) begin

	  end
	  else begin
	    dataInputR = dataR[dataIndexToFetchR];
	  end
	  coeffIndexR = coeffIndexR + 1;//This will sync with coeffIndex in MSDAP
        end
    end
    
    //Finite State Machine
    always @(posedge sClk or negedge reset_n) begin
    
        if(!reset_n) begin
	    
            if(state >= 5) begin //reset should have no effect when writing in Rj and Coeff
		$display("(In FSM module:)Reset signal detected. Clearing data... \n");
                state = 4'b0111;
		i = 0;
		//Clear all registers except Rj and coefficients
		for(i = 0; i < `DATA_SIZE; i = i + 1) begin
		    dataL [i] = 0;    //FLush all data in array
		    dataR [i] = 0;
		end //end for loop
	    end
        
        end //end if reset_n
        
	//$display("FSM is in state %d now. \n", state);
        // State 0, Initialization
        if(state == 4'b0000) begin
            
            if(start) begin
		            //Start Resetting values
		            zeroCount = 0;
		            bitIndex = 0;
		            readFlag = 0;
		            writeFlag = 0;
		            i = 0;
		            rjIndex = 0;
		            coeffIndex = 0;
		            dataIndexL = 0;
		            dataIndexR = 0;
		            dataIndexToFetchL = 0;
		            dataIndexToFetchR = 0;
		            coeffIndexL = 0;
		            coeffIndexR = 0;
		            n = 0;
		            done = 0;

			    outReady = 0;
			    endCoeffIndexL = 0;
			    endCoeffIndexR = 0;
		            
                for(i = 0; i < `DATA_SIZE; i = i + 1) begin
                    dataL [i] = 0;
		            dataR [i] = 0;
                end //end for loop
                
                state = state + 1;  //Next state is state 1
            end //end if start
        
        end //end if state 0
        
        //State 1, Wait to recieve Rj
        else if(state == 4'b0001) begin
        
            inReady = 1'b1;
            if(frame)
                state = state + 1;  //Next state is state 2
        
        end //end if state 1
        
        //State 2, Read Rj
        else if(state == 4'b0010) begin
        
	        inReady = 1'b1;//inReady Remains high
            //Read Rj values in always dClk statement
            
            if(done) begin
                done = 0;
                state = state + 1;  //Next state is state 3
            end
        
        end //end if state 2
        
        //State 3, Wait to recieve Coefficient
        else if(state == 4'b0011) begin
        
            inReady = 1'b1;
            if(frame)
                state = state + 1;  //Next state is state 4
        
        end //end if state 3
        
        //State 4, Reading coefficient
        else if(state == 4'b0100) begin
	        inReady = 1'b1;//inReady Remains high
            //Read coefficients
            if(done) begin
                done = 0;
                state = state + 1;  //Next state is state 5
            end
        
        end //end if state 4
        
        //State 5, Waiting to recieve data
        else if(state == 4'b0101) begin
	        inReady = 1'b1;//inReady Remains high
	        resetCalc_n = 0;//Hold at 0 until state 6
            if(frame)
                state = state + 1;  //Next state is state 6
        
        end //end if state 5
        
        //State 6, Working mode 
        else if(state == 4'b0110) begin
	    inReady = 1'b1;//inReady Remains hig
                
            if(done) begin
                done = 0;
		resetCalc_n = 1;
                //Computation done here
//                if(tempInL[15])
//                    tempOutL = tempInL | 40'hFFFFFF0000;
//                else
//                    tempOutL = tempInL & 40'h000000FFFF;
//                if(tempInR[15])
//                    tempOutR = tempInR | 40'hFFFFFF0000;
//                else
//                    tempOutR = tempInR & 40'h000000FFFF;

                

                    
                if(tempInL == 0 && tempInR == 0) begin                 //If input data is all zeros, increment zero counter
                    zeroCount = zeroCount + 1;
		    $display("(In FSM module:)Num of Zero Inputs Detected: %d", zeroCount);
                end
		else begin
                    zeroCount = 0;//Consecutive 0's broken
                    $display("(In FSM module:)Since New data detected. Num of Zero Inputs Detected: %d", zeroCount);
                end
                if(zeroCount == 800) begin             //If zero counter has reached 10, next state is state 8
                    state = 4'b1000;
                    $display("(In FSM module:)Since 800 zeros are detected consecutively in both channels, Entering Sleep mode...");
                end
            end //end if done
	    if(outReadyL && outReadyR) begin
	      finalOutL = tempOutL;
	      finalOutR = tempOutR;
	      outReady = 1'b1;
	      #3;//#10;
	      resetCalc_n = 0;
	      endCoeffIndexL = 0;
	      endCoeffIndexR = 0;
	      n = n + 1;
	      //#3;
	      //resetCalc_n = 1;
            end
        
        end //end if state 6
    
    //State 7, Clearing mode
        else if(state == 4'b0111) begin
        
            inReady = 0;

            
	    resetCalc_n = 0;//Hold at 0 until required
            tempInL = 0;
	    tempInR = 0;
            zeroCount = 0;
	    //tempOutL = 0;
	    //tempOutR = 0;
            bitIndex = 0;
            finalOutL = 0;
	    finalOutR = 0;
            readFlag = 0;
            writeFlag = 0;
            rjIndex = 0;
            coeffIndex = 0;
	    coeffIndexL = 0;
	    coeffIndexR = 0;
            dataIndexL = 0;
	    dataIndexR = 0;
	    dataInputL=0;
	    dataInputR=0;
	    dataIndexToFetchL = 0;
	    dataIndexToFetchR = 0;
            done = 0;
	    outReady = 0;
	    endCoeffIndexL = rjL[0];
	    endCoeffIndexR = rjR[0];
            coeffExtractedL = 0;
	    coeffExtractedR = 0;
	    n = 0;
	    state = 4'b0101;//Go back to state 5 during after finish
        
        end //end if state 7
        
        //State 8, Sleeping mode
        else if(state == 4'b1000) begin
	    resetCalc_n = 0;//No calculation required during sleep
            inReady = 1;
	    outReady = 0;
            zeroCount = 0;              //Reset zero counter
            if(inDataL[0] || inDataR[0]) begin                  //If any nonzero input detected
		dataIndexL = dataIndexL - 1;
		dataIndexR = dataIndexR - 1;
		//$stop; //STOP HERE to simulate to wake up point
                state = 4'b0110;        //Next state is state 6
		$display("(In FSM module:)Non-zero Input detected. Back to calculation...");
	    end
        
        end //end if state 8
    
    end //end always @ (posedge sClk or negedge reset_n)
    
endmodule
