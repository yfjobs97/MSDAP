`timescale 1ns / 1ps





module MSDAP (clk,
	      reset,
              inData,
	      validData,
	      readyForData,
	      inCoeffSign,
	      readyForCoeffSign,
              currentUjOut,
	      overallResult,
              status

	      );

	input wire reset;
	input wire clk;
	input wire [15:0] inData;
	input wire validData;
	output reg readyForData;
	input wire inCoeffSign;
	output reg readyForCoeffSign;

	output reg [39:0] currentUjOut;
	output reg [39:0] overallResult;
	output reg [3:0] status;
	
	reg [3:0] endCoeffIndex;
  
	reg [39:0] processedData;
	reg [3:0] currentCoeffIndex;
	reg [3:0] currentRjIndex;
	
  reg RJ_SIZE = 4'd16;
	reg [7:0] rj = {
	    8'h0020,      // r1
	    8'h0020,      // r2
	    8'h0020,      // r3
	    8'h0020,      // r4
	    8'h0020,      // r5
	    8'h0020,      // r6
	    8'h0020,      // r7
	    8'h0020,      // r8
	    8'h0020,      // r9
	    8'h0020,      // r10
	    8'h0020,      // r11
	    8'h0020,      // r12
	    8'h0020,      // r13
	    8'h0020,      // r14
	    8'h0020,      // r15
	    8'h0020      // r16
	};

	always@(posedge clk) begin//{
	  if(reset) begin//{
	    readyForData = 1'b0;
	    readyForCoeffSign = 1'b0;
	    status = 4'b0;
	    currentCoeffIndex = 0;
	    currentRjIndex = 0;
	    endCoeffIndex = rj[currentRjIndex];//rj[] not in yet
	    
	    currentUjOut = 0;
	    overallResult = 0;
	  end//}end if reset
	  else begin//{
	    if(status==4'b0000) begin//{(calculateUj statge)
	      readyForData = 1'b1;
	      $display("data input is %h.\t", inData);
	      if(!validData) begin//{
		currentUjOut = 0;
	      end//}end if (!validData)
	      else begin//{validData == 1
		//Bitextender24()
		if(inData[15]) begin//{inData[15] is sign bit of input data. Equal to 1 if negative
		    processedData = inData | 'hFF0000;
		end//}end if(inData[15])
		else begin//{
		    processedData = inData & 'h00FFFF;
		end//}end else begin (inData[15] chunk)
		//Extend to 40 bit and adjust with 2's complement()
		readyForCoeffSign = 1'b1;
		if(inCoeffSign == 1'b1) begin //{Coeffcient is negative
		  processedData = {((~processedData)+1), 16'h0000};
		  currentUjOut = currentUjOut + processedData;
		end//}end inCoeffSign==1
		else begin//{
		  processedData = {processedData,16'h0000};
		  currentUjOut = currentUjOut + processedData;
		end//}end else begin (inCoeffSign chunk)
		
	      end//} end else begin (!validData chunk)

	      $display("data input is %h.\t CoeffSign is %h. \t currentUjOut is %h \n", inData, inCoeffSign, currentUjOut);
	      currentCoeffIndex = currentCoeffIndex + 1;
	      readyForCoeffSign = 1'b0;//pulse to ensure new data is in at next stage
	      readyForData = 1'b0;
	      if(currentCoeffIndex == endCoeffIndex) begin//{
		status = 4'b0001;//Go to shifting stage
		
	      end//}end if currentCoeffIndex == endCoeffIndex

	      
	    end//}end if (status==0000)  (calculateUj stage)
	    
	    if(status==4'b0001) begin//{shifting stage
	      overallResult = overallResult + currentUjOut;
	      //Rightshift1bit()
	      if(overallResult[39] == 1) begin//{overallResult is negative
		overallResult = overallResult >> 1 | 'h8000000000;//Pad 1 at MSB
	      end//} end overallResult[39]==1
	      else begin//{
		overallResult = overallResult >> 1;
	      end//}end else begin (overallResult[39]==1 chunk)
	      currentRjIndex = currentRjIndex + 1;
	      //Determine which stage to go
	      if(currentRjIndex == RJ_SIZE) begin//{all result calculated, prepare output
		
		status = 4'b0010;
	      end//}end currentRjIndex == RJ_SIZE
	      else begin//{Haven't gone thorugh all stages
		endCoeffIndex = rj[currentRjIndex];//Update endCoeffIndex
		
		status = 4'b0000;
	      end//}end else begin(currentRjIndex==RJ_SIZE chunk)
	      
	    end//}end if (status==0001) (shifting stage)
	    if(status==4'b0010) begin//{
	      $display("Output is now ready. overallResult is %h \n", overallResult);
	    end//} end if (status==0010)

	   end//}end else begin(reset chunk)

	end//}End always loop
endmodule
