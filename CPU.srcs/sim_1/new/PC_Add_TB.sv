`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 01:27:42 PM
// Design Name: 
// Module Name: PC_Add_TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module PC_Add_TB(
    );
    
    reg [15:0] PC;
    wire [15:0] Result;
    
    PC_Add DUT(
    .PC(PC),
    .Result(Result)
    );
    
    always
        #5 PC = PC + 1;
    
    initial 
    begin 
    PC = 16'b0000000111001010;
    #20 PC = 16'b0000000010110110;
    #20 PC = 16'b0000110100011100;
    end
endmodule