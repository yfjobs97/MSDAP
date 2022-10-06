//Yu Feng and Luke Allen

`timescale 1ns / 1ps
`define RJ_SIZE 16
`define COEFF_SIZE 512
`define TB_DATA_SIZE 7000
`define FILE_SIZE 15056//3056(1000 data)//15056(all data)//16*2+512*2+7000*2
module FSM_MSDAPTest(
    );
	//CLK and start signals
	reg sClk;
	reg dClk;
	reg start;

	//Registers
	reg [31:0] arrayIndex = 0;
	reg [3:0] bitIndex = 15;
	reg [15:0] coeffL [0:`COEFF_SIZE-1];    //512 coeffL
	reg [15:0] coeffR [0:`COEFF_SIZE-1];    //512 coeffR
	reg [39:0] controllerOutputResultL;//Original tempResultL and R
	reg [39:0] controllerOutputResultR;
	integer dataItem;
	reg [15:0] dataL[0:`TB_DATA_SIZE - 1];    //256 data each for both L and R
	reg [15:0] dataR[0:`TB_DATA_SIZE - 1];

	integer fd;
	reg [15:0] fileInput [0:`FILE_SIZE - 1]; //Prepare space for holding data.in
	reg frame;
	integer i;
	reg [15:0] inDataL;
	reg [15:0] inDataR;
	wire inReady;
	integer j;
	wire outReadyToTB;
	wire [39:0] outDataL;
	wire [39:0] outDataR;
	reg reset_n;
	reg [15:0] rjL [0:`RJ_SIZE-1];        //16 RjL
	reg [15:0] rjR [0:`RJ_SIZE-1];        //16 RjR
	integer testReset = 1;//Test Reset
	//integer testReset = 0;//Don't test reset
	reg [15:0] valueExtractedL;//Original Tempout in previous version. Register to store input extracted from file
	reg [15:0] valueExtractedR;
	reg [1:0]firstBootState;
	FSM_MSDAP UUT (
	    .sClk(sClk), 
	    .dClk(dClk),
	    .start(start),
	    .reset_n(reset_n), 
	    .frame(frame), 
	    .inDataL(inDataL),
	    .inDataR(inDataR),
	    .inReady(inReady), 
	    .outReadyToTB(outReadyToTB), 
	    .outDataL(outDataL),
	    .outDataR(outDataR)
	);

    initial begin
	
      dataItem = 0;

	$readmemh("/home/010/y/yx/yxf160330/CE6306/Final/datasets/data1.in",fileInput);//Input data1
	//$readmemh("/home/010/y/yx/yxf160330/CE6306/Final/datasets/data2.in",fileInput);
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


        fd = $fopen("/home/010/y/yx/yxf160330/CE6306/Final/datasets/Verify/MyData1.out", "w"); //write to output1
	//fd = $fopen("/home/010/y/yx/yxf160330/CE6306/Final/datasets/MyData2.out", "w"); //write to output2
        
        sClk = 0;
        dClk = 0;
        start = 0;
        
        frame = 0;
        inDataL = 0;
	inDataR = 0;
	firstBootState = 0;

	//reset_n = 0;//Start at 1 as we are not resetting. When reset is needed, change reset_n to 0 for some time. Otherwise the FSM is keep resetting.

    end
    
    //SYSTEM CLOCK
    always begin
    
        #9;//#70;//#19;
        sClk = ~sClk;
        
    end
    //DATA CLOCK
    always begin
    
        #651;//closest to 1302
        dClk = ~ dClk;
    
    end
    //Initialise to 1

    //For testing reset_n

always @ (negedge frame) begin//As it happens close to the first half of the frame

        if(testReset == 1) begin//Only test reset at the particular input.
	  if(dataItem == 4200 || dataItem == 6000) begin
	  $display("(In Controller:) Now resetting...\n");
	  //#stop; //STOP HERE to see RESET_N in simulation
	  reset_n = 0;
	  #9
	  reset_n = 1;
	  end
	end
end

    always @ (negedge dClk) begin//Provide start signal
	if(firstBootState == 0)begin
		reset_n = 1;
		firstBootState = 1;
	end
	else if(firstBootState == 1) begin
		start = 1;
		reset_n = 0;
		firstBootState = 2;
	end
	else if(firstBootState == 2) begin
		reset_n = 1;
		firstBootState = 3;
	end

    end
    /**/



    always @ (negedge reset_n) begin//For sudden unwanted change
	    controllerOutputResultL = 0;
	    controllerOutputResultR = 0;
    end

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
		    $display("(In Controller:) Rj just sent was rjIndex %d in file.\n", arrayIndex);
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
		    $display("(In Controller:) Coeff just sent was coeffIndex %d in file.\n", arrayIndex - `RJ_SIZE);
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
		
                if(bitIndex == 0) begin//Finish sending a data
		    $display("(In Controller:) Data just sent was dataItem %d in file.\n", dataItem);
                    bitIndex = 15;
                    arrayIndex = arrayIndex + 1;
		    dataItem = dataItem + 1;
                end
                else
                    bitIndex = bitIndex - 1;
            end//end else if (arrayIndex >= (`RJ_SIZE+`COEFF_SIZE)) and the if(arrayIndex < `RJ_SIZE) chunk
            
        end//end if (inReady)
    
    end//end always(posedge dClk)
    
    //Output from MSDAP
    always @ (negedge outReadyToTB) begin
    
        if(dataItem > 0) begin
            controllerOutputResultL = outDataL;
	    controllerOutputResultR = outDataR;
	    if (dataItem < 6999) begin//To not ouput the last 2 results to file, since they are not needed
	      $fdisplay(fd, "%h \t %h", controllerOutputResultL,controllerOutputResultR);
	      $display("(In Controller:) controllerOutputResultL is %h, and controllerOutputResultR is %h\n\n", controllerOutputResultL, controllerOutputResultR);
	    end
	
        end
	if(dataItem >= 7000) begin//
	  $fclose(fd);
	  $stop;
	end
        
    end
    
    
endmodule
