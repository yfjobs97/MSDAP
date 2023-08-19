`timescale 1ns / 1ps
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
    input sClk,
    input dClk,
    input start,
    input reset_n,
    input frame,
    input inputL,
    input inputR,
    output reg inReady,
    output reg outReady,
    output reg outputL,
    output reg outputR
    );
    
    //State memory
    reg [0:4] state = 4'b0000;
    
    //Registers
    reg [7:0] rj [15:0];        //16 Rj
    reg [15:0]coeff [0:511];    //512 coeff
    reg [15:0]data [0:1499];    //1500 data
    
    always begin
    
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
        
            //Computation done here
        
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
            if(!reset_n)                //If reset is low
                state = 4'b0111;        //Nest state is state 7
            else if(inputL || inputR)   //If any nonzero input detected
                state = state + 1;      //Next state is state 6
        
        end
    
    end
    
endmodule
