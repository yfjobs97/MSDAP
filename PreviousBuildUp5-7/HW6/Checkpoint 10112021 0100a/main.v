`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:03:51 10/05/2021 
// Design Name: 
// Module Name:    MSDAP 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module main(
    output reg [39:0] dataOut,
    input [15:0] dataIn,
    input [11:0] coeff,
    input [8:0] rj
    );

    integer dataSize, rjSize, n, j, prevRj, overallResult, currentResult;
    
    always @ (*) begin
    
        for(n = 0; n < dataSize; n = n + 1) begin
            overallResult = 0;
            prevRj = 0;
        
            for(j = 0; j < rjSize; j = j + 1) begin
            
                currentResult = 0;
                //Needs Fix
                calculateUj(.n(n),  .dataX(dataIn), .coeff(coeff), .startPoint(prevRj), .endPoint(prevRj + rj[j]), .uj(currentResult));
                overallResult = overallResult + currentResult;
                //Check
                shiftResultRight1Bit(.dataIn(overallResult), .dataOut(overallResult));
                //Needs Fix
                prevRj = prevRj + rj[j];
            
            end
            
            //Check
            dataOut = overallResult >> 24;
        
        end
    
    end

endmodule
