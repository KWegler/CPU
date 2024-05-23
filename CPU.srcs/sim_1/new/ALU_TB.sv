`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2023 10:35:09 PM
// Design Name: 
// Module Name: ALU_TB
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


module ALU_TB(
    );
    
    reg signed [15:0] RS1;
    reg signed [15:0] RS2;
    reg [3:0] RS1_Reg;
    reg [3:0] RS2_Reg;
    reg [2:0] Funct;
    wire signed [15:0] Out;
    wire signed [7:0] Concate;
    
    ALU DUT(
    .RS1(RS1),
    .RS2(RS2),
    .RS1_Reg(RS1_Reg),
    .RS2_Reg(RS2_Reg),
    .Funct(Funct),
    .Out(Out),
    .Concate(Concate)
    );
    
    
    initial 
    begin 
    RS1 = 16'b1010001101110111;
    RS2 = 16'b0010101101100100;
    RS1_Reg = 4'b1101;
    RS2_Reg = 4'b0011;
    #5 Funct = 3'b001;
    #10 Funct = 3'b000;
    #10 Funct = 3'b010;
    #10 Funct = 3'b011;
    #10 Funct = 3'b100;
    #10 Funct = 3'b101;
    #10 Funct = 3'b110;
    #10 Funct = 3'b111;
    #10 Funct = 3'b000;
    end
endmodule