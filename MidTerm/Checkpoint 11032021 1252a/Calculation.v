`timescale 1ns / 1ps

`define RJ_SIZE 15

module Calculation (
          clk,
	      reset,
          inData,
	      readyForData,
	      inCoeffSign,
	      rjIn,
	      endCoeffIndex,
	      currentRjIndex,
	      thisNCompleted,
	      overallResult
	      );

    input wire clk;
	input wire reset;
	input wire [15:0] inData;
	input wire inCoeffSign;
	input wire [15:0] rjIn;
	input wire [9:0] endCoeffIndex;//In case of overflowing
	
	output reg readyForData;
	output reg [3:0] currentRjIndex;
	output reg thisNCompleted;
	output reg [39:0] overallResult;
	
    reg [39:0] currentUjOut;
	reg [3:0] status;
  
	reg [39:0] processedData;
	reg [9:0] currentCoeffIndex;//In case of overflowing

	always@(posedge clk or negedge reset) begin//{
	  
	  if(reset == 0) begin//{
	  
	    readyForData = 1'b0;
	    thisNCompleted = 0;
	    status = 0;
	    currentCoeffIndex = 0;
	    currentRjIndex = 0;
	    //$display("endCoeffIndex is %h \n", endCoeffIndex);
	    currentUjOut = 0;
	    overallResult = 0;
	    
	  end//}end if reset
	  else begin//{
	  
        if(status==4'b0000) begin//{(calculateUj statge)
	      readyForData = 1'b1;
	      #10; //1/4 UP CLK CYCLE
	      readyForData = 1'b0;
	      #5;
		  currentUjOut = currentUjOut + 0;
	      
		      //$display("data input is %h.\t", inData);
		      //Bitextender24()
		      if(inData[15]) begin//{inData[15] is sign bit of input data. Equal to 1 if negative
		          processedData = inData | 24'hFF0000;
		      end//}end if(inData[15])
		      else begin//{
		          processedData = inData & 24'h00FFFF;
		      end//}end else begin (inData[15] chunk)
		      
		      //Extend to 40 bit and adjust with 2's complement()
		      if(inCoeffSign == 1'b1) begin //{Coeffcient is negative
		          processedData = {((~processedData)+1), 16'h0000};
		          //$display("ProcessData is %h \n",processedData);
		          currentUjOut = currentUjOut + processedData;
		      end//}end inCoeffSign==1
		      else begin//{
		          processedData = {processedData,16'h0000};
		          //$display("ProcessData is %h \n",processedData);
		          currentUjOut = currentUjOut + processedData;
		      end//}end else begin (inCoeffSign chunk)
		      //$display("data input is %h.\t CoeffSign is %h. \t currentUjOut is %h \n", inData, inCoeffSign, currentUjOut);
	      
	      //$display("Just finished with coefficient %d. \n", currentCoeffIndex);
	      currentCoeffIndex = currentCoeffIndex + 1;
	      if(currentCoeffIndex == endCoeffIndex) begin//{
		      status = 4'b0001;//Go to shifting stage
	      end//}end if currentCoeffIndex == endCoeffIndex
	      
	    end//}end if (status==0000)  (calculateUj stage)
	    
	    else if(status==4'b0001) begin//{shifting stage
	    
	      overallResult = overallResult + currentUjOut;
	      //Rightshift1bit()
	      if(overallResult[39] == 1) begin//{overallResult is negative
		      overallResult = overallResult >> 1 | 'h8000000000;//Pad 1 at MSB
	      end//} end overallResult[39]==1
	      else begin//{
		      overallResult = overallResult >> 1;
	      end//}end else begin (overallResult[39]==1 chunk)
	      
	      currentRjIndex = currentRjIndex + 1;
	      #10;
	      //$display("u_%d after shifting and adding with previous terms is %h \n", currentRjIndex,overallResult);
	      //Determine which stage to go
	      if(currentRjIndex == `RJ_SIZE) begin//{all result calculated, prepare output
		      status = 4'b0010;
	       end//}end currentRjIndex == RJ_SIZE
	       else begin//{Haven't gone thorugh all stages
		      currentUjOut = 0;//Set back to 0
		      status = 4'b0000;
	       end//}end else begin(currentRjIndex==RJ_SIZE chunk)
	      
	    end//}end else if (status==0001) (shifting stage)
	    else if(status==4'b0010) begin//{
	      //$display("Output is now ready. overallResult is %h \n", overallResult);
	      thisNCompleted = 1'b1;
	      #10;//1/4 CLK CYCLE
	    end//} end else if (status==0010)

	   end//}end else begin(reset chunk)

	end//}End always loop

endmodule
