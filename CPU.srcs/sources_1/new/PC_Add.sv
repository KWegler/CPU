`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 01:26:22 PM
// Design Name: 
// Module Name: PC_Add
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


module PC_Add(
    input wire [15:0] PC,
    output reg [15:0] Result
    );
    
    always @ (PC)
        Result = PC + 16'b0000000000000001;
    
endmodule