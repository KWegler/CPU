`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2023 11:27:36 PM
// Design Name: 
// Module Name: Immediate_Add
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


module Immediate_Add(
    input signed [7:0] Data,
    input signed [15:0] RegData,
    output reg signed [15:0] Result
    );
    
    always @ (Data or RegData)
        Result = RegData + Data;
    
endmodule