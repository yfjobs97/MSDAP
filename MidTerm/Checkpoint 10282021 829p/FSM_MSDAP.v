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

    reg [39:0] tempOutL;
    reg [39:0] tempOutR;
  
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
    
    reg nextRjL;
    reg [3:0] rjIndexL;
    reg readyforDataL;
    reg CoeffSignL;
    reg outReadyL;
    reg [39:0] tempOutL;
    
    reg [8:0] coeffExtractedL;
    reg [8:0] coeffIndexL;
    reg coeffSignL;
    reg [7:0] coeffValueL;
    reg [15:0] dataInputL;
    reg [9:0] endCoeffIndexL;
    
    
    reg nextRjR;
    reg [3:0] rjIndexR;
    reg readyforDataR;
    reg CoeffSignR;
    reg outReadyR;
    reg [39:0] tempOutR;
    
    reg [8:0] coeffExtractedR;
    reg [8:0] coeffIndexR;
    reg coeffSignR;
    reg [7:0] coeffValueR;
    reg [15:0] dataInputR;
    reg [9:0] endCoeffIndexR;
    
    reg n;
    reg done;
    reg resetCalc;
    
    Calculation calcL (
    .clk(sClk),
    .reset(resetCalc),
    .inData(tempInL),
    .readyForData(readyforDataL),
    .inCoeffSign(CoeffSignL),
    .rjIn( rjL[rjIndexL]),
    .endCoeffIndex(endCoeffIndexL),
    .nextRj(nextRjL),
    .thisNCompleted(outReadyL),
    .overallResult(tempOutL)
    );
    
    Calculation calcR (
    .clk(sClk),
    .reset(resetCalc),
    .inData(tempInR),
    .readyForData(readyforDataR),
    .inCoeffSign(CoeffSignR),
    .rjIn( rjR[rjIndexR]),
    .endCoeffIndex(endCoeffIndexR),
    .nextRj(nextRjR),
    .thisNCompleted(outReadyR),
    .overallResult(tempOutR)
    );

//Reading Input Data at falling edge of D Clock
    always @ (negedge dClk) begin
    
        if(inReady) begin                       //Only accept data when inReady is high
            if(frame) begin                     //Start when frame goes high
                readFlag = 1;                   //Set flag indicating reading has begun
                bitIndex = 15;                   //bitIndex keeps track the bits that have come in, starting with bit 15 (MSB)
                tempInL[bitIndex] = inDataL;       //Set the bit of tempIn at index bitIndex to the input data
		        tempInR[bitIndex] = inDataR; 
                bitIndex = bitIndex - 1;
            end //end if frame
            else begin                          //If frame is low, we are either not reading yet, or we are in the middle of a chunk of data
                if(readFlag) begin              //If read flag is set to 1, we are in the middle of reading
                    tempInL[bitIndex] = inDataL;   //Set the bit of tempIn at index bitIndex to the input data
		            tempInR[bitIndex] = inDataR;
                    if(bitIndex == 0) begin      //If we have reached the last bit in the data sequence
                        readFlag = 0;           //Set readflag to 0 and wait for another frame signal
                        if(state == 4'b0010) begin
                            //Rj
                            rjL[rjIndex] = tempInL;
			                rjR[rjIndex] = tempInR;
			                $display("(In Module:) Rj just read was rjL[%d] = %h and rjR[%d] = %h", rjIndex, tempInL, rjIndex, tempInR);

                            if(rjIndex == `RJ_SIZE - 1)
                                done = 1;//At Rj stage, done means finish reading ALL RJL and RJR
                            else
                                rjIndex = rjIndex + 1;
                        end
                        else if(state == 4'b0100) begin
                            //coefficients
                            coeffL[coeffIndex] = tempInL;
			                coeffR[coeffIndex] = tempInR;
			                $display("(In Module:) Coeff just read was coeffL[%d] = %h and coeffR[%d] = %h", coeffIndex, tempInL, coeffIndex, tempInR);
                            if(coeffIndex == `COEFF_SIZE - 1)
                                done = 1;//At coefficient stage, done means finish reading ALL coefficients
                            else
                                coeffIndex = coeffIndex + 1;
                        end
                        else if(state == 4'b0110) begin
                            //data
                            dataL[dataIndexL] = tempInL;
			                dataR[dataIndexR] = tempInR;
			                $display("(In Module:) Data just read was dataL[%d] = %h and dataR[%d] = %h. Data Index omits 0 inputs during sleeping mode", dataIndexL, tempInL, dataIndexR, tempInR);
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
    always @ (posedge sClk && outReady) begin
    
        //if(outReady) begin              //Only transmit data when outReady is high
        outDataL = finalOutL;        //Set out data to value of tempOut
	    outDataR = finalOutR;
	    $display("(In module:) finalOut attempted to send were %h and %h", finalOutL, finalOutR);
	    #38;// ensure tb reception.
        outReady = 0;                   //Set outReady to 0 until a new output is ready

       // end //end if outReady
        
    end //end always @ (posedge sClk)
    
    always @(posedge nextRjL) begin
    
        rjIndexL = rjIndexL + 1;
    
    end
    
    always @(posedge nextRjR) begin
    
        rjIndexR = rjIndexR + 1;
    
    end
    
    always @(posedge readyforDataL) begin
    
        endCoeffIndexL = rjL[rjIndexL] + endCoeffIndexL;
        coeffExtractedL = coeffL[coeffIndexL];
        coeffSignL = coeffExtractedL[8];
        coeffValueL = coeffExtractedL[7:0];
        dataIndexL = n - coeffValueL;
        if (dataIndexL < 0) begin

        end
        else begin
          dataInputL = dataL[dataIndexL];
        end
        coeffIndexL = coeffIndexL + 1;//This will sync with coeffIndex in MSDAP
        
    end
    
    always @(posedge readyforDataR) begin
    
        endCoeffIndexR = rjR[rjIndexR] + endCoeffIndexR;
        coeffExtractedR = coeffR[coeffIndexR];
        coeffSignR = coeffExtractedR[8];
        coeffValueR = coeffExtractedR[7:0];
        dataIndexR = n - coeffValueR;
        if (dataIndexR < 0) begin

        end
        else begin
          dataInputR = dataR[dataIndexR];
        end
        coeffIndexR = coeffIndexR + 1;//This will sync with coeffIndex in MSDAP
        
    end
    
    //Finite State Machine
    always @(posedge sClk or negedge reset_n) begin
    
        if(!reset_n) begin
	    
            if(state >= 5) begin //reset should have no effect when writing in Rj and Coeff
		$display("Reset signal detected. Clearing data... \n");
                state = 4'b0111;
	    end
        
        end //end if reset_n
        
	//$display("FSM is in state %d now. \n", state);
        // State 0, Initialization
        if(state == 4'b0000) begin
            
            if(start) begin
                //Initialize all registers
                tempInL = 0;
		        tempInR = 0;
                zeroCount = 0;
                tempOutL = 0;
		        tempOutR = 0;
                bitIndex = 0;
                finalOutL = 0;
		        finalOutR = 0;
                readFlag = 0;
                writeFlag = 0;
                rjIndex = 0;
                coeffIndex = 0;
                dataIndexL = 0;
		        dataIndexR = 0;
		        rjIndex = 0;
                done = 0;
                resetCalc = 1;
                #10;
                resetCalc = 0;
                
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
            if(frame)
                state = state + 1;  //Next state is state 6
        
        end //end if state 5
        
        //State 6, Working mode 
        else if(state == 4'b0110) begin
	        inReady = 1'b1;//inReady Remains high
            if(done) begin
                done = 0;
                
                //Computation done here
//                if(tempInL[15])
//                    tempOutL = tempInL | 40'hFFFFFF0000;
//                else
//                    tempOutL = tempInL & 40'h000000FFFF;
//                if(tempInR[15])
//                    tempOutR = tempInR | 40'hFFFFFF0000;
//                else
//                    tempOutR = tempInR & 40'h000000FFFF;

                

                if(outReadyL && outReadyR) begin
                    outDataL = tempOutL;
                    outDataR = tempOutR;
                    resetCalc = 1;
                    outReady = 1'b1;
                    endCoeffIndexL = 0;
                    endCoeffIndexR = 0;
                    #10;
                    resetCalc = 0;
                end
                    
                if(tempInL == 0 && tempInR == 0) begin                 //If input data is all zeros, increment zero counter
                    zeroCount = zeroCount + 1;
		            $display("Num of Zero Inputs Detected: %d", zeroCount);
                end
		        else begin
                    zeroCount = 0;//Consecutive 0's broken
                    $display("Since New data detected. Num of Zero Inputs Detected: %d", zeroCount);
                end
                if(zeroCount == 10) begin             //If zero counter has reached 10, next state is state 8
                    state = 4'b1000;
                    $display("Since 10 zeros are detected consecutively, Entering Sleep mode...");
                end
            end
        
        end //end if state 6
    
    //State 7, Clearing mode
        else if(state == 4'b0111) begin
        
            inReady = 0;
            //Clear all registers except Rj and coefficients
            for(i = 0; i < `DATA_SIZE; i = i + 1) begin
                dataL [i] = 0;    //FLush all data in array
		        dataR [i] = 0;
            end //end for loop
            
            tempInL = 0;
	        tempInR = 0;
            zeroCount = 0;
	        tempOutL = 0;
	        tempOutR = 0;
            bitIndex = 0;
            finalOutL = 0;
	        finalOutR = 0;
            readFlag = 0;
            writeFlag = 0;
            rjIndex = 0;
            coeffIndex = 0;
            dataIndexL = 0;
	        dataIndexR = 0;
            done = 0;
            
            resetCalc = 1;
            #10;
            resetCalc = 0;
	    
	    state = 4'b0101;//Go back to state 5 during after finish
        
        end //end if state 7
        
        //State 8, Sleeping mode
        else if(state == 4'b1000) begin
        
            inReady = 1;
	        outReady = 0;
            zeroCount = 0;              //Reset zero counter
            if(inDataL || inDataR) begin                  //If any nonzero input detected
                state = 4'b0110;        //Next state is state 6
		        $display("Non-zero Input detected. Back to calculation...");
	    end
        
        end //end if state 8
    
    end //end always @ (posedge sClk or negedge reset_n)
    
endmodule
