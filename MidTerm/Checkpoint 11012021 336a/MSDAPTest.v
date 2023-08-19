//Yu Feng and Luke Allen

`timescale 1ns / 1ps
`define RJ_SIZE 16
`define COEFF_SIZE 512
`define DATA_SIZE 7000
`define FILE_SIZE 15056//3056(1000 data)//15056(all data)//16*2+512*2+7000*2
module FSM_MSDAPTest(
    output reg sClk,
    output reg dClk,
    output reg start,
    output reg reset_n,
    output reg frame,
    output reg [15:0] inDataL,
    output reg [15:0] inDataR,
    input inReady,
    input outReady,
    input reg [39:0] outDataL,
    input reg [39:0] outDataR
    );
    
    
    FSM_MSDAP UUT (
        .sClk(sClk), 
        .dClk(dClk),
        .start(start),
        .reset_n(reset_n), 
        .frame(frame), 
        .inDataL(inDataL),
	.inDataR(inDataR),
        .inReady(inReady), 
        .outReady(outReady), 
        .outDataL(outDataL),
	.outDataR(outDataR)
    );
    


    //Registers
    reg [15:0] fileInput [0:`FILE_SIZE - 1]; //Prepare space for holding data.in
    reg [15:0] rjL [0:`RJ_SIZE-1];        //16 RjL
    reg [15:0] rjR [0:`RJ_SIZE-1];        //16 RjR

    
    reg [15:0] coeffL [0:`COEFF_SIZE-1];    //512 coeffL
    reg [15:0] coeffR [0:`COEFF_SIZE-1];    //512 coeffR

    //256 data each for both L and R
    reg [15:0] dataL[0:`DATA_SIZE - 1];
    reg [15:0] dataR[0:`DATA_SIZE - 1];

    reg [31:0] arrayIndex = 0;
    reg [3:0] bitIndex = 15;
    reg [15:0] valueExtractedL;//Original Tempout in previous version. Register to store input extracted from file
    reg [15:0] valueExtractedR;

    reg [39:0] tempResultL;
    reg [39:0] tempResultR;
    integer fd, i,j;
    //integer testReset = 1;//Test Reset
    integer testReset = 0;//Don't test reset
    
    
    initial begin
    
        //$readmemh("/home/010/y/yx/yxf160330/CE6306/HW7/modelsim/Rj1.in", rj);
        //$readmemh("/home/010/y/yx/yxf160330/CE6306/HW7/modelsim/Coeff1.in", coeff);
        //$readmemh("/home/010/y/yx/yxf160330/CE6306/HW7/modelsim/data1.in", data);
	//$readmemh("/home/010/y/yx/yxf160330/CE6306/HW7/modelsim/data1With0.in", data);//For testing sleep mode
	$readmemh("/home/010/y/yx/yxf160330/CE6306/Midterm/datasets/data1.in",fileInput);
	j = 0;
	for(i = 0; i < `RJ_SIZE * 2; i=i+2) begin
	  rjL[j] = fileInput[i];
	  rjR[j] = fileInput[i + 1];
	  $display("RjL and RjR at Number %d is %h and %h \n",i, rjL[j], rjR[j]); 
	  j = j + 1;
	end
	j = 0;
	for(i = `RJ_SIZE * 2; i < `RJ_SIZE  * 2 + `COEFF_SIZE * 2; i=i+2) begin
	  coeffL[j] = fileInput[i];
	  coeffR[j] = fileInput[i + 1];
	  $display("CoeffL and CoeffR at Number %d is %h and %h \n",j, coeffL[j], coeffR[j]); 
	  j = j + 1;
	end
	j=0;
	for(i = `RJ_SIZE * 2 + `COEFF_SIZE * 2; i < `FILE_SIZE; i=i+2) begin
	  dataL[j] = fileInput[i];
	  dataR[j] = fileInput[i + 1];
	  $display("DataL and DataR at Number %d is %h and %h \n", j, dataL[j], dataR[j]);
	  j = j + 1;
	end        


        //fd = $fopen("D:\Documents\Verilog\FSM\FSM.srcs\sources_1\new\data1.out", "w");
        
        sClk = 0;
        dClk = 0;
        start = 0;
        reset_n = 1;//Start at 1 as we are not resetting. When reset is needed, change reset_n to 0 for some time. Otherwise the FSM is keep resetting.
        frame = 0;
        inDataL = 0;
	inDataR = 0;
	
    end
    
    //SYSTEM CLOCK
    always begin
    
        #80;//#19;
        sClk = ~sClk;
        
    end
    //DATA CLOCK
    always begin
    
        #651;
        dClk = ~ dClk;
    
    end
    //Initialise to 1

    //For testing reset_n    

    always begin
    
        #320;//#76; 4xup cycle
        start = 1;
	/*Unchanged yet from here*/
        if(testReset == 1) begin//Only test reset once.
	  #3958004;//Time after all Rj, coefficents, are read. Along with 1 data. unit: ns 3958080 - 76
	  $display("(In Controller:) Now resetting...\n");
	  reset_n = 0;

	  #19;//Hold reset_n low for 1/2 sClk
	  reset_n = 1;
	  testReset = 0;
	end
       
    
    end
    /**/




    //Input to MSDAP
    always @ (posedge dClk) begin 
    
        if(inReady) begin
            if(bitIndex == 15) begin
		frame = 1;
	    end//end if(bitIndex == 15)
	    else begin
		frame = 0;//Ensure frame is held up during the entire time bitIndex=15
	    end//end else begin, chunk of if(bitIndex == 15)
            
	    //Send Rj
            if(arrayIndex < `RJ_SIZE) begin
		valueExtractedL = rjL[arrayIndex];
		valueExtractedR = rjR[arrayIndex];
		
                inDataL[0] = valueExtractedL[bitIndex];
		inDataR[0] = valueExtractedR[bitIndex];
		
                if(bitIndex == 0) begin
                    bitIndex = 15;
                    arrayIndex = arrayIndex + 1;
                end
                else
                    bitIndex = bitIndex - 1;
            end//end if(arrayIndex < `RJ_SIZE)
            //Send Coeff
            else if(arrayIndex >= `RJ_SIZE && arrayIndex < (`RJ_SIZE+`COEFF_SIZE)) begin
                valueExtractedL = coeffL[arrayIndex - `RJ_SIZE];
		valueExtractedR = coeffR[arrayIndex - `RJ_SIZE];
		
                inDataL[0] = valueExtractedL[bitIndex];
		inDataR[0] = valueExtractedR[bitIndex];
		
                if(bitIndex == 0) begin
                    bitIndex = 15;
                    arrayIndex = arrayIndex + 1;
                end
                else
                    bitIndex = bitIndex - 1;
            end//end else if(arrayIndex >= `RJ_SIZE && arrayIndex < (`RJ_SIZE+`COEFF_SIZE))
            //Send Data
            else if(arrayIndex >= (`RJ_SIZE+`COEFF_SIZE)) begin
                valueExtractedL = dataL[arrayIndex - (`RJ_SIZE + `COEFF_SIZE)];
		valueExtractedR = dataR[arrayIndex - (`RJ_SIZE + `COEFF_SIZE)];
                
		inDataL[0] = valueExtractedL[bitIndex];
		inDataR[0] = valueExtractedR[bitIndex];
		
                if(bitIndex == 0) begin
                    bitIndex = 15;
                    arrayIndex = arrayIndex + 1;
                end
                else
                    bitIndex = bitIndex - 1;
            end//end else if (arrayIndex >= (`RJ_SIZE+`COEFF_SIZE)) and the if(arrayIndex < `RJ_SIZE) chunk
            
        end//end if (inReady)
    
    end//end always(posedge dClk)
    
    //Output from MSDAP
    always @ (negedge sClk) begin
    
        if(outReady == 1) begin
            tempResultL = outDataL;
	    tempResultR = outDataR;
            //$fdisplay(fd, "%h", tempResult);
            $display("(In Controller:) tempResultL is %h, and tempResultR is %h\n\n", tempResultL, tempResultR);
        end
	else begin//For sudden reset or other situations, reset 
	    tempResultL = 0;
	    tempResultR = 0;

	end
        
    end
    
    
endmodule
