//Yu Feng and Luke Allen

`timescale 1ns / 1ps
`define RJ_SIZE 16
`define COEFF_SIZE 159
`define DATA_SIZE 512

module MSDAP(
    input sClk, //26.88 MHz = Clock period of 38 ns
    input dClk, //768 kHz = Clock period of 1302 ns
    input start,
    input reset_n,
    input frame,
    input inData,
    output reg inReady,
    output reg outReady,
    output reg [39:0] outData
    );
    
    //State memory
    reg [4:0] state = 4'b0000;
    
    //Registers
    reg [15:0] rj [0:`RJ_SIZE - 1];        //16 Rj
    reg [15:0]coeff [0:`COEFF_SIZE - 1];    //512 coeff
    
    //Clearable Memory
    reg [15:0] data [0:`DATA_SIZE - 1];    //512 data
    reg [15:0] tempIn;
    reg [31:0] zeroCount;
    reg [39:0] tempOut;
    reg [39:0] finalOut;
    reg [3:0] bitIndex;
    reg readFlag;
    reg writeFlag;
    reg [31:0] i;
    reg [3:0] rjIndex;
    reg [8:0] coeffIndex;
    reg [8:0] dataIndex;
    reg done;
    
    //Reading Input Data at falling edge of D Clock
    always @ (negedge dClk) begin
    
        if(inReady) begin                       //Only accept data when inReady is high
            if(frame) begin                     //Start when frame goes high
                readFlag = 1;                   //Set flag indicating reading has begun
                bitIndex = 15;                   //bitIndex keeps track the bits that have come in, starting with bit 15 (MSB)
                tempIn[bitIndex] = inData;       //Set the bit of tempIn at index bitIndex to the input data
                bitIndex = bitIndex - 1;
            end //end if frame
            else begin                          //If frame is low, we are either not reading yet, or we are in the middle of a chunk of data
                if(readFlag) begin              //If read flag is set to 1, we are in the middle of reading
                    tempIn[bitIndex] = inData;   //Set the bit of tempIn at index bitIndex to the input data
                    if(bitIndex == 0) begin      //If we have reached the last bit in the data sequence
                        readFlag = 0;           //Set readflag to 0 and wait for another frame signal
                        if(state == 4'b0010) begin
                            //Rj
                            rj[rjIndex] = tempIn;
			    $display("(In Module:) Rj just read was rj[%d] = %h", rjIndex, tempIn);
                            if(rjIndex == `RJ_SIZE - 1)
                                done = 1;//At Rj stage, done means finish reading ALL RJ
                            else
                                rjIndex = rjIndex + 1;
                        end
                        else if(state == 4'b0100) begin
                            //coefficients
                            coeff[coeffIndex] = tempIn;
			    $display("(In Module:) Coeff just read was coeff[%d] = %h", coeffIndex, tempIn);
                            if(coeffIndex == `COEFF_SIZE - 1)
                                done = 1;//At coefficient stage, done means finish reading ALL coefficients
                            else
                                coeffIndex = coeffIndex + 1;
                        end
                        else if(state == 4'b0110) begin
                            //data
                            data[dataIndex] = tempIn;
			    $display("(In Module:) Data just read was data[%d] = %h. Data Index omits 0 inputs during sleeping mode", dataIndex, tempIn);
                            done = 1;//At data stage, done means finish reading 1 data, NOT the entire dataset
                            dataIndex = dataIndex + 1;
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
    
        //if(outReady) begin                //Only transmit data when outReady is high
        outData = finalOut;                 //Set out data to value of tempOut at index of outCount
		$display("(In module:) finalOut attempted to send was %h", finalOut);
		//#19;//Wait half of CLK cycle to ensure enough time for tb to receive.
        outReady = 0;                       //Set outReady to 0 until a new output is ready
       // end //end if outReady
        
    end //end always @ (posedge sClk)
    
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
                tempIn = 0;
                zeroCount = 0;
                tempOut = 0;
                bitIndex = 0;
                finalOut = 0;
                readFlag = 0;
                writeFlag = 0;
                rjIndex = 0;
                coeffIndex = 0;
                dataIndex = 0;
                done = 0;
                
                for(i = 0; i < `DATA_SIZE; i = i + 1) begin
                    data [i] = 0;
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
                if(tempIn[15])
                    tempOut = tempIn | 40'hFFFFFF0000;
                else
                    tempOut = tempIn & 40'h000000FFFF;
                    
                finalOut = tempOut;
                
                outReady = 1'b1;
                
                if(tempIn == 0) begin                 //If input data is all zeros, increment zero counter
                    zeroCount = zeroCount + 1;
		    $display("Num of Zero Inputs Detected: %d", zeroCount);
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
                data [i] = 0;    //FLush all data in array
            end //end for loop
            
            tempIn = 0;
            zeroCount = 0;
            tempOut = 0;
            bitIndex = 0;
            finalOut = 0;
            readFlag = 0;
            writeFlag = 0;
            rjIndex = 0;
            coeffIndex = 0;
            dataIndex = 0;
            done = 0;
	    
	    state = 4'b0101;//Go back to state 5 during after finish
        
        end //end if state 7
        
        //State 8, Sleeping mode
        else if(state == 4'b1000) begin
        
            inReady = 1;
	       outReady = 0;
            zeroCount = 0;              //Reset zero counter
            if(inData) begin                  //If any nonzero input detected
                state = 4'b0110;        //Next state is state 6
		$display("Non-zero Input detected. Back to calculation...");
	    end
        
        end //end if state 8
    
    end //end always @ (posedge sClk or negedge reset_n)
    
endmodule
