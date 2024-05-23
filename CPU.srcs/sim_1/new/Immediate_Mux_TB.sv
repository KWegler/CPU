`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2023 08:43:01 PM
// Design Name: 
// Module Name: Immediate_Mux_TB
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


module Immediate_Mux_TB(
    );
    
    reg signed [16:0] Data;
    reg signed [16:0] ADD;
    wire signed [16:0] RegData;
    reg Immediate;
    
    Immediate_Mux DUT(
    .Data(Data),
    .ADD(ADD),
    .RegData(RegData),
    .Immediate(Immediate)
    );
    
    
    initial 
    begin 
    Data = 16'b0000000001000000;
    ADD = 16'b0000000001001111;
    #5 Immediate = 1'b0;
    #5 Immediate = 1'b1;
    end
endmodule