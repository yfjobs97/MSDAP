`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:14:41 10/05/2021 
// Design Name: 
// Module Name:    calculateUj 
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
module calculateUj(
    input n,
    input [23:0] dataX,
    input [8:0] coeff,
    input startPoint,
    input endPoint,
    output reg uj
    );
    
    integer i, coeffSign, coeffValue, dataIndex, processedData, sign;
    integer ujTemp = 0; 

    always @ (*) begin

        for (i = startPoint; i < endPoint; i = i + 1) begin
        
            decodeCoeff(.coeff(coeff[i]), .sign(coeffSign), .value(coeffValue));
            dataIndex = n - coeffValue;
            if(dataIndex < 0) begin
                ujTemp = ujTemp + 0;
            end
            else begin
                findSignBit(.data(dataX[dataIndex]), .sign(sign));
                bitExtender24(.data(dataX[dataIndex]), .padValue(sign), .returnData(processedData));
                
                if(coeffSign == 1) begin
                    processedData = ((~processedData) + 1) << 40;
                    ujTemp = ujTemp + processedData;
                end
                else begin
                    processedData = processedData << 40;
                    ujTemp = ujTemp + processedData;
                end
            end
        end
        
        uj = ujTemp; 

    end

endmodule
