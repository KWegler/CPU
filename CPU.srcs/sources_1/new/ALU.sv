`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2023 08:53:10 PM
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [15:0] RS1,
    input signed [3:0] RS1_Reg,
    input [15:0] RS2,
    input signed [3:0] RS2_Reg,
    input [2:0] Funct,
    output reg signed [15:0] Out,
    output reg signed [7:0] Concate
    );
    
    always @ *
        begin    
        Out = (Funct == 3'b000) ? (RS1 + RS2) :
              (Funct == 3'b001) ? (RS1 - RS2) : 
              (Funct == 3'b010) ? (RS1 & RS2) :
              (Funct == 3'b011) ? (RS1 | RS2) :
              (RS1 - RS2);
        Concate = {RS2_Reg , RS1_Reg};
        end
endmodule