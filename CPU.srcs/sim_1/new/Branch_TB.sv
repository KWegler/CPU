`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2023 10:56:13 PM
// Design Name: 
// Module Name: Branch_TB
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


module Branch_TB(
    );
    
    reg signed [7:0] ALU_Out;
    reg [2:0] Branch;
    wire Result;
    
    Branch_Check DUT(
    .ALU_Out(ALU_Out),
    .Branch(Branch),
    .Result(Result)
    );
    
    
    initial 
    begin 
    ALU_Out = 1;
    #10 Branch = 3'b000;
    #10 Branch = 3'b001;
    #10 Branch = 3'b010;
    #10 Branch = 3'b011;
    #10 Branch = 3'b100;
    #10 Branch = 3'b101;
    #10 Branch = 3'b110;
    #10 Branch = 3'b111;
    ALU_Out = 0;
    #10 Branch = 3'b000;
    #10 Branch = 3'b001;
    #10 Branch = 3'b010;
    #10 Branch = 3'b011;
    #10 Branch = 3'b100;
    #10 Branch = 3'b101;
    #10 Branch = 3'b110;
    #10 Branch = 3'b111;
    ALU_Out = -1;
    #10 Branch = 3'b000;
    #10 Branch = 3'b001;
    #10 Branch = 3'b010;
    #10 Branch = 3'b011;
    #10 Branch = 3'b100;
    #10 Branch = 3'b101;
    #10 Branch = 3'b110;
    #10 Branch = 3'b111;
    end
endmodule