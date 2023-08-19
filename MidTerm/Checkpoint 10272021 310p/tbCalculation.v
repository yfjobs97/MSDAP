`timescale 1ns / 1ps

module Calculation_tb;

  reg reset, validData;
  reg [15:0] dataInput;
  reg [15:0] coeffExtracted;
  reg coeffSign;
  reg [7:0] coeffValue;
  
  reg [15:0]mem [0:2027];//hold all raw data
  //reg [15:0]rj [0:15];//16rj
  reg [15:0]coeff [0:511];//512 coeff
  reg [15:0]data [0:1499];//1500 data
  integer dataIndex;
  reg [8:0] coeffIndex;
  integer dataSize = 1500;//For Debug Purpose
  integer i,n,fd;
  
  wire readyForData, readyForCoeffSign,thisNCompleted;
 	wire [39:0] currentUjOut;
	wire [39:0] overallResult;
	wire [3:0] status;
	

	
	reg sysclk;
	always begin
	  
	  sysclk = 1'b1;
	  #40;
	  sysclk = 1'b0;
	  #40;
	end
	
	
  Calculation UUT (.clk(sysclk),
	      .reset(reset),
        .inData(dataInput),
	      .validData(validData),
	      .readyForData(readyForData),
	      .inCoeffSign(coeffSign),
	      .readyForCoeffSign(readyForCoeffSign),
	      .thisNCompleted(thisNCompleted),
        .currentUjOut(currentUjOut),
	      .overallResult(overallResult),
        .status(status)
        );

  always@(posedge readyForData) begin
    //#10;//new wait
    coeffExtracted = coeff[coeffIndex];
    coeffSign = coeffExtracted[8];
    coeffValue = coeffExtracted[7:0];	  
    dataIndex = n - coeffValue;
    if (dataIndex < 0) begin
      validData = 0;
    end
    else begin
      dataInput = data[dataIndex];
      validData = 1;
    end
    coeffIndex = coeffIndex + 1;//This will sync with coeffIndex in MSDAP
    
  end
  always@(posedge thisNCompleted) begin
    //$fwriteh(fd,overallResult);
    $fdisplay(fd,"%h",overallResult);
    $display("y(%d) is %h", n, overallResult);
    if(n < dataSize - 1) begin//Since addition happen inside if bracket, use dataSize - 1 to run dataSize times.
      n = n + 1;
      //#10;
      reset = 1;
      #150;//ALMOST 2 CLK CYCLEs
      reset = 0;
    end
    else begin
      $display("Really done! \n");
      $fclose(fd);
      $stop;
    end
  end
  
  initial begin
    //Read data
    $readmemh("/home/010/y/yx/yxf160330/CE6306/HW6/modelsim/data1.in",mem);
    fd = $fopen("/home/010/y/yx/yxf160330/CE6306/HW6/modelsim/data1.out","w");
    //for(i = 0; i < 16; i=i+1) begin
    //  rj[i] = mem[i];  
    //end
    for(i = 16; i < 528; i=i+1) begin
      coeff[i-16] = mem[i];
      //$display("Number %d is %h \n",i-16, coeff[i-16]);  
    end
    for(i = 528; i < 2028; i=i+1) begin
      data[i-528] = mem[i];
      //$display("Number %d is %h \n",i-528, data[i-528]);  
    end
    //Reset MSDAP
    reset = 1;
    n=0;
    dataIndex = 0;
    coeffIndex = 0;
    validData = 0;
    #20;//Half UP CLK cycle
    reset = 0;
    //#40
 /*   while(n < dataSize) begin
      
      n = n + 1;
      #5;
      
    end*/
  end
endmodule
        
  