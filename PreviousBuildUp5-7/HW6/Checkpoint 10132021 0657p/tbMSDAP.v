`timescale 1ns / 1ps

module newMSDAP_tb;

  reg reset, validData, coeffSignInput;
  reg [15:0] dataInput;
  reg [15:0] coeffExtracted;
  wire coeffSign;
  wire [7:0] coeffValue;
  
  reg [15:0]mem [0:2027];//hold all raw data
  //reg [15:0]rj [0:15];//16rj
  reg [15:0]coeff [0:511];//512 coeff
  reg [15:0]data [0:1499];//1500 data
  reg dataIndex, coeffIndex;
  reg dataSize = 1500;
  integer i,n;
  
  wire readyForData, readyForCoeffSign;
 	wire [39:0] currentUjOut;
	wire [39:0] overallResult;
	wire [3:0] status;
	
	assign coeffSign = coeffExtracted[8];
	assign coeffValue = coeffExtracted[7:0];
	
	reg sysclk;
	always begin
	  sysclk = 1'b1;
	  #10;
	  sysclk = 1'b0;
	  #10;
	end
	
	
  MSDAP UUT (.clk(sysclk),
	      .reset(reset),
        .inData(dataInput),
	      .validData(validData),
	      .readyForData(readyForData),
	      .inCoeffSign(coeffSign),
	      .readyForCoeffSign(readyForCoeffSign),
        .currentUjOut(currentUjOut),
	      .overallResult(overallResult),
        .status(status)
        );

  always@(posedge readyForData) begin
    coeffExtracted = coeff[coeffIndex];

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
  
  initial begin
    //Read data
    $readmemh("/home/010/y/yx/yxf160330/CE6306/HW6/modelsim/data1.in",mem);
    //for(i = 0; i < 16; i=i+1) begin
    //  rj[i] = mem[i];  
    //end
    for(i = 16; i < 528; i=i+1) begin
      coeff[i-16] = mem[i];
      $display("Number %d is %h \n",i-16, coeff[i-16]);  
    end
    for(i = 528; i < 2028; i=i+1) begin
      data[i-528] = mem[i];
      $display("Number %d is %h \n",i-528, data[i-528]);  
    end
    //Reset MSDAP
    reset = 1;
    n=0;
    dataIndex = 0;
    coeffIndex = 0;
    validData = 0;
    #10;
    reset = 0;
    
    while(n < dataSize) begin
      n = n + 1;
    end
    #800;
    $stop;
  end
endmodule
        
  