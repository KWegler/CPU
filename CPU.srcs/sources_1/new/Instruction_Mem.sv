`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2023 01:26:53 PM
// Design Name: 
// Module Name: Instruction_Mem
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


module Instruction_Mem(
    input [15:0] PC,
    output reg [15:0] Instruct
    );
    
    reg [15:0] ROM [0:1024];
    
    initial $readmemb ("instr.mem", ROM, 0, 1024);
    
    always @ (PC)
        Instruct = ROM[{PC}];
endmodule