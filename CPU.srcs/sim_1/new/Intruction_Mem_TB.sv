`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2023 01:39:34 PM
// Design Name: 
// Module Name: Intruction_Mem_TB
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


module Instruction_Mem_TB(
    );
    
    reg [15:0] PC;
    wire [15:0] Instruct;
    
    Instruction_Mem DUT(
    .PC(PC),
    .Instruct(Instruct)
    );
    
    initial 
    begin
    PC = 16'b0;
    end
    
    always
        #5 PC = PC+1;
endmodule