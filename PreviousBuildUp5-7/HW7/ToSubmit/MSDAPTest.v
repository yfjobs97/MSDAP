//Yu Feng and Luke Allen

`timescale 1ns / 1ps
`define RJ_SIZE 16
`define COEFF_SIZE 159
`define DATA_SIZE 512
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
    reg [15:0] rj [0:`RJ_SIZE-1];        //16 Rj
    reg [15:0] coeff [0:`COEFF_SIZE-1];    //512 coeff
    reg [15:0] data [0:`DATA_SIZE-1];    //512 data
    reg [31:0] arrayIndex = 0;
    reg [3:0] bitIndex = 15;
    reg [15:0] tempOut;
    integer resultIndex = 39;
    reg [39:0] tempResult;
    integer fd, i;
    //integer testReset = 1;//Test Reset
    integer testReset = 0;//Don't test reset
    
    
    initial begin
    
        $readmemh("C:\Users\Luke\Desktop\Rj1.in", rj);
        $readmemh("C:\Users\Luke\Desktop\Coeff1.in", coeff);
        //$readmemh("/home/010/y/yx/yxf160330/CE6306/HW7/modelsim/data1.in", data);
	$readmemh("C:\Users\Luke\Desktop\data1With0.in", data);//For testing sleep mode
	for(i = 0; i < `RJ_SIZE; i=i+1) begin
	  $display("Rj Number %d is %h \n",i, rj[i]);  
	end
	for(i = `RJ_SIZE; i < `RJ_SIZE + `COEFF_SIZE; i=i+1) begin

	  $display("Coeff Number %d is %h \n",i - (`RJ_SIZE), coeff[i - (`RJ_SIZE)]);  
	end
	for(i = `RJ_SIZE + `COEFF_SIZE; i < `RJ_SIZE + `COEFF_SIZE + `DATA_SIZE; i=i+1) begin

	  $display("Data Number %d is %h \n",i-(`RJ_SIZE + `COEFF_SIZE), data[i-(`RJ_SIZE + `COEFF_SIZE)]);  
	end        


        //fd = $fopen("D:\Documents\Verilog\FSM\FSM.srcs\sources_1\new\data1.out", "w");
        
        sClk = 0;
        dClk = 0;
        start = 0;
        reset_n = 1;//Start at 1 as we are not resetting. When reset is needed, change reset_n to 0 for some time. Otherwise the FSM is keep resetting.
        frame = 0;
        inData = 0;
	
    end
    
    //SYSTEM CLOCK
    always begin
    
        #19;
        sClk = ~sClk;
        
    end
    //DATA CLOCK
    always begin
    
        #651;
        dClk = ~ dClk;
    
    end
    //Initialise to 1
    always begin
    
        #76;
        start = 1;
        if(testReset == 1) begin//Only test reset once.
	  #3958004;//Time after all Rj, coefficents, are read. Along with 1 data. unit: ns 3958080 - 76
	  $display("(In Controller:) Now resetting...\n");
	  reset_n = 0;

	  #19;//Hold reset_n low for 1/2 sClk
	  reset_n = 1;
	  testReset = 0;
	end
        
    
    end
    
    //For testing reset_n

    //Input to MSDAP
    always @ (posedge dClk) begin 
    
        if(inReady) begin
            if(bitIndex == 15) begin
		frame = 1;
	    end
	    else begin
		frame = 0;//Ensure frame is held up during the entire time bitIndex=15
	    end
            //Send Rj
            if(arrayIndex < `RJ_SIZE) begin
		tempOut = rj[arrayIndex];
                inData = tempOut[bitIndex];
                if(bitIndex == 0) begin
                    bitIndex = 15;
                    arrayIndex = arrayIndex + 1;
                end
                else
                    bitIndex = bitIndex - 1;
            end
            //Send Coeff
            else if(arrayIndex >= `RJ_SIZE && arrayIndex < (`RJ_SIZE+`COEFF_SIZE)) begin
                tempOut = coeff[arrayIndex - `RJ_SIZE];
                inData = tempOut[bitIndex];
                if(bitIndex == 0) begin
                    bitIndex = 15;
                    arrayIndex = arrayIndex + 1;
                end
                else
                    bitIndex = bitIndex - 1;
            end
            //Send Data
            else if(arrayIndex >= (`RJ_SIZE+`COEFF_SIZE)) begin
                tempOut = data[arrayIndex - (`RJ_SIZE + `COEFF_SIZE)];
                inData = tempOut[bitIndex];
                if(bitIndex == 0) begin
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
                 //$fdisplay(fd, "%h", tempResult);
                 $display("(In Controller:) tempResult is %h\n\n", tempResult);
            end
            else
                resultIndex = resultIndex - 1;
        end
	else begin//For sudden reset or other situations, reset resultIndex back to 39.
	    tempResult = 0;
	    resultIndex = 39;
	end
        
    end
    
    
endmodule
