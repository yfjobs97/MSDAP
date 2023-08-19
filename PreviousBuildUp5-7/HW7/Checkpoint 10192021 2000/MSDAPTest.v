`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2021 06:35:13 PM
// Design Name: 
// Module Name: MSDAPTest
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


module MSDAPTest(
    output reg sClk,
    output reg dClk,
    output reg start,
    output reg reset_n,
    output reg frame,
    output reg inData,
    input inReady,
    input outReady,
    input outData
    );
    
    
    MSDAP UUT (
        .sClk(sClk), 
        .dClk(dClk),
        .start(start),
        .reset_n(reset_n), 
        .frame(frame), 
        .inData(inData), 
        .inReady(inReady), 
        .outReady(outReady), 
        .outData(outData)
    );
    
    //Registers
    reg [15:0] rj [0:15];        //16 Rj
    reg [15:0] coeff [0:511];    //512 coeff
    reg [15:0] data [0:511];    //512 data
    reg [31:0] arrayIndex = 0;
    reg [2:0] bitIndex = 15;
    reg [15:0] tempOut;
    reg [8:0] resultIndex = 39;
    reg [39:0] tempResult;
    integer fd;
    
    
    
    initial begin
    
        $readmemh("D:\Documents\Verilog\FSM\FSM.srcs\sources_1\new\rj1.in", rj);
        $readmemh("D:\Documents\Verilog\FSM\FSM.srcs\sources_1\new\coeff1.in", coeff);
        $readmemh("D:\Documents\Verilog\FSM\FSM.srcs\sources_1\new\data1.in", data);
        
        fd = $fopen("D:\Documents\Verilog\FSM\FSM.srcs\sources_1\new\data1.out", "w");
        
        sClk = 0;
        dClk = 0;
        start = 0;
        reset_n = 0;
        frame = 0;
        inData = 0;
    
    end
    
    always begin
    
        #19;
        sClk = ~sClk;
        
    end
    
    always begin
    
        #651;
        dClk = ~ dClk;
    
    end
    
    always begin
    
        #76;
        start = 1;
        
        
    
    end
    
    //Input to MSDAP
    always @ (posedge dClk) begin 
    
        if(inReady) begin
            frame = 1;
            //Send Rj
            if(arrayIndex < 16) begin
                tempOut = rj[arrayIndex];
                inData = tempOut[bitIndex];
                if(bitIndex == 15)
                    frame = 0;
                else if(bitIndex == 0) begin
                    bitIndex = 15;
                    arrayIndex = arrayIndex + 1;
                end
                else
                    bitIndex = bitIndex - 1;
            end
            //Send Coeff
            else if(arrayIndex > 15 && arrayIndex < 528) begin
                tempOut = coeff[arrayIndex];
                inData = tempOut[bitIndex];
                if(bitIndex == 15)
                    frame = 0;
                else if(bitIndex == 0) begin
                    bitIndex = 15;
                    arrayIndex = arrayIndex + 1;
                end
                else
                    bitIndex = bitIndex - 1;
            end
            //Send Data
            else if(arrayIndex >= 528) begin
                tempOut = data[arrayIndex];
                inData = tempOut[bitIndex];
                if(bitIndex == 15)
                    frame = 0;
                else if(bitIndex == 0) begin
                    bitIndex = 15;
                    arrayIndex = arrayIndex + 1;
                end
                else
                    bitIndex = bitIndex - 1;
            end
            
        end
    
    end
    
    //Output from MSDAP
    always @ (posedge sClk) begin
    
        if(outReady == 1) begin
            tempResult[resultIndex] = outData;
            if(resultIndex == 0) begin
                 resultIndex = 39;
                 $fdisplay(fd, "%h", tempResult);
                 $display("%h", tempResult);
            end
            else
                resultIndex = resultIndex - 1;
        end
        
    end
    
    
endmodule
