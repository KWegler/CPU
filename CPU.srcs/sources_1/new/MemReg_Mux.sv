`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2023 08:34:28 PM
// Design Name: 
// Module Name: MemReg_Mux
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


module MemReg_Mux(
    input MemReg,
    input signed [15:0] ALU,
    input signed [15:0] DataMem,
    output reg signed [15:0] Data
    );
    
    always @ (ALU or DataMem or MemReg)
    begin
        Data = (MemReg == 1'b0) ? ALU : DataMem;
    end    
endmodule