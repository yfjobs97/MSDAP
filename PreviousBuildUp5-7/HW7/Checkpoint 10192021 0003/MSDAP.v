`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2021 11:46:47 PM
// Design Name: 
// Module Name: MSDAP
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MSDAP(
    input sClk, //26.88 MHz = Clock period of 38 ns
    input dClk, //768 kHz = Clock period of 1302 ns
    input start,
    input reset_n,
    input frame,
    input inData,
    output reg inReady,
    output reg outReady,
    output reg outData
    );
    
    //State memory
    reg [4:0] state = 4'b0000;
    
    //Registers
    reg [7:0] rj [0:15];        //16 Rj
    reg [15:0]coeff [0:511];    //512 coeff
    
    //Clearable Memory
    reg [15:0] data [0:1499];    //1500 data
    reg [15:0] tempIn;
    reg [31:0] zeroCount = 0;
    reg [39:0] tempOut;
    reg [3:0] inCount;
    reg [5:0] outCount = 39;
    reg readFlag = 0;
    reg writeFlag = 0;
    
    //Reading Input Data at falling edge of D Clock
    always @ (negedge dClk) begin
    
        if(inReady) begin                       //Only accept data when inReady is high
            if(frame) begin                     //Start when frame goes high
                readFlag = 1;                   //Set flag indicating reading has begun
                inCount = 15;                   //inCount keeps track the bits that have come in, starting with bit 15
                tempIn[inCount] = inData;       //Set the bit of tempIn at index inCount to the input data
            end
            else begin                          //If frame is low, we are either not reading yet, or we are in the middle of a chunk of data
                if(readFlag) begin              //If read flag is set to 1, we are in the middle of reading
                    tempIn[inCount] = inData;   //Set the bit of tempIn at index inCount to the input data
                    if(inCount == 0) begin      //If we have reached the last bit in the data sequence
                        readFlag = 0;           //Set readflag to 0 and wait for another frame signal
                    end
                    else                        //If we ahve not reached the last bit
                        inCount = inCount - 1;  //Decrement the inCount
                end 
            end
        end
    
    end
    
    //Writing output Data at rising edge of S Clock
    always @ (posedge sClk) begin
    
        if(outReady) begin                      //Only transmit data when outReady is high. This should be aligned with rising edge of frame. How???
            outData = tempOut[outCount];        //Set out data to value of tempOut at index of outCount
            if(outCount == 0) begin             //If we have reached the last bit
                outCount = 39;                  //Reset outCount to 39
                outReady = 0;                   //Set outReady to 0 until a new output is ready
            end 
            else                                //If we still have more bits to go
                outCount = outCount - 1;        //Decrement the outCount
        end
        
    end
    
    //Finite State Machine
    always begin   //Is this supposed to be sensitive to sClk???
    
        // State 0, Initialization
        if(state == 4'b0000) begin
            
            if(start) begin
                //Clear all registers
                state = state + 1;  //Next state is state 1
            end
        
        end
        
        //State 1, Wait to recieve Rj
        else if(state == 4'b0001) begin
        
            inReady = 1'b1;
            if(frame)
                state = state + 1;  //Next state is state 2
        
        end
        
        //State 2, Read Rj
        else if(state == 4'b0010) begin
        
            //Read Rj values
            state = state + 1;  //Next state is state 3
        
        end
        
        //State 3, Wait to recieve Coefficient
        else if(state == 4'b0011) begin
        
            inReady = 1'b1;
            if(frame)
                state = state + 1;  //Next state is state 4
        
        end
        
        //State 4, Reading coefficient
        else if(state == 4'b0100) begin
        
            //Read coefficients
            state = state + 1;  //Next state is state 5
        
        end
        
        //State 5, Waiting to recieve data
        else if(state == 4'b0101) begin
        
            if(!reset_n)            //If reset is low
                state = 4'b0111;    //Nest state is state 7
            else if(frame)
                state = state + 1;  //Next state is state 6
        
        end
        
        //State 6, Working mode 
        else if(state == 4'b0110) begin
        
            if(!reset_n)            //If reset is low
                state = 4'b0111;    //Nest state is state 7
                
            //Computation done here
            tempOut = {tempIn, 24'h000000}; //Extend input to 40 bits 
            outReady = 1;
            
            if(tempIn == 0)                 //If input data is all zeros, increment zero counter
                zeroCount = zeroCount + 1;
            
            if(zeroCount == 10)             //If zero counter has reached 10, next state is state 8
                state = 4'b1000;
        
        end
        
        //State 7, Clearing mode
        else if(state == 4'b0111) begin
        
            inReady = 0;
            //Clear all registers except Rj and coefficients
            if(reset_n)             //If reset is not low, proceed to state 5. Else repeat state 7.
                state = 4'b0101;    //Next state is state 5
        
        end
        
        //State 8, Sleeping mode
        else if(state == 4'b1000) begin
        
            inReady = 1;
            zeroCount = 0;              //Reset zero counter
            if(!reset_n)                //If reset is low
                state = 4'b0111;        //Next state is state 7
            else if(inData)             //If any nonzero input detected
                state = state + 1;      //Next state is state 6
        
        end
    
    end
    
    //Reset ??? Unsure if this needs its own always or if it can be in the FSM's sensitivity list
    always @ (!reset_n) begin   //When reset is set low
    
        
    
    end
    
endmodule
