`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2023 08:36:59 PM
// Design Name: 
// Module Name: MemReg_Mux_TB
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


module MemReg_Mux_TB(
    );
    
    reg signed [15:0] DataMem;
    reg signed [15:0] ALU;
    reg MemReg;
    wire signed [15:0] Data;
    
    MemReg_Mux DUT(
    .Data(Data),
    .DataMem(DataMem),
    .ALU(ALU),
    .MemReg(MemReg)
    );
    
    
    initial 
    begin 
    ALU = 16'b1001001100100000;
    DataMem = 16'b0010111001001111;
    #5 MemReg = 1'b0;
    #5 MemReg = 1'b1;
    end
endmodule