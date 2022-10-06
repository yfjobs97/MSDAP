//Yu Feng and Luke Allen
`timescale 1ns / 1ps



module calcSignExtend(
	inData,
	dataBitExtended
    );
	input [15:0] inData;
	output reg [39:0] dataBitExtended;
      always @ (inData) begin
          //Sign extend/Pad module
          //Sign extends to 24 bits, then pads sixteen 0's on the right
	  //$display("data input is %h.\t", inData);
	  //Bitextender24()->40
	  if(inData[15]) begin//{inData[15] is sign bit of input data. Equal to 1 if negative
	      dataBitExtended = {(inData | 24'hFF0000), 16'h0000};
	  end//}end if(inData[15])
	  else begin//{
	      dataBitExtended = {(inData & 24'h00FFFF), 16'h0000};
	  end//}end else begin (inData[15] chunk)

      
      end
      
endmodule
