`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2023 11:03:14 AM
// Design Name: 
// Module Name: PC
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


module PC(
    input wire clk,
    input wire reset,
    input wire [15:0] PC_In,
    input wire Halt,
    output reg [15:0] PC_Out
    );
    
    always @ (posedge clk or negedge reset) begin
        if (reset == 0) PC_Out = 16'b0000000000000000;
        else if (!Halt) PC_Out = PC_In;
    end
endmodule