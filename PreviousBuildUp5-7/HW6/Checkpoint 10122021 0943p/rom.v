//-----------------------------------------------------
// Design Name : rom
// File Name   : rom.v
// Function    : ROM Using readmemb
// Coder       : Deepak Kumar Tala
//-----------------------------------------------------
module rom (
clk,        // Clock
address,    // Data Address
data        // Data output
);
    input        clk;
    input [15:0] address;
    output reg [7:0] data;
      
    reg [15:0]    mem [0:1023] ; //Array of registers for data to be stored
    
    initial begin
      
      //Reads entire file into mem
      $readmemb("D:/Documents/Verilog/ROM/ROM.srcs/sources_1/new/memory.list",mem); //Change file path
      
    end

    
    always @ (posedge clk) begin
        
        data = mem[address]; //At the posedge of clk, output the contents of memory at address
        
    end

endmodule


