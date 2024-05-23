`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2023 08:41:11 PM
// Design Name: 
// Module Name: ImmediateMux
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


module Immediate_Mux(
    input Immediate,
    input signed [15:0] Data,
    input signed [15:0] ADD,
    output reg signed [15:0] RegData
    );
    
    //always @ (Immediate or Data or ADD)
    always @ *
        RegData = (Immediate == 1'b0) ? Data : ADD;
    
endmodule