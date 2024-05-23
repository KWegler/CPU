`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2023 11:32:12 PM
// Design Name: 
// Module Name: Immediate_Add_TB
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


module Immediate_Add_TB(
    );
    
    reg signed [7:0] Data;
    reg signed [15:0] RegData;
    wire signed [15:0] Result;
    
    Immediate_Add DUT(
    .Data(Data),
    .RegData(RegData),
    .Result(Result)
    );
    
    
    initial 
    begin 
    RegData = 16'b0111101101001101;
    Data = 8'b0001001;
    #10 Data = 8'b10111100;
    #10 RegData = 16'b1110000111000011;
    end
endmodule
