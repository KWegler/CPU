`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2023 10:58:07 AM
// Design Name: 
// Module Name: Controller_TB
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


module Controller_TB(
    );
    
    reg [3:0] ControllerIn;
    wire RegWrite;
    wire Immediate;
    wire Mov;
    wire BM;
    wire MemWrite_MemRead;
    wire [2:0] BranchCheck;
    wire [2:0] ALU;
    wire MemReg;
    
    Controller DUT(
    .ControllerIn(ControllerIn),
    .RegWrite(RegWrite),
    .Immediate(Immediate),
    .Mov(Mov),
    .BM(BM),
    .MemWrite_MemRead(MemWrite_MemRead),
    .BranchCheck(BranchCheck),
    .ALU(ALU),
    .MemReg(MemReg)
    );
    
    
    initial 
    begin
    ControllerIn = 4'b0000; 
    #10 ControllerIn = 4'b0001; 
    #10 ControllerIn = 4'b0010; 
    #10 ControllerIn = 4'b0011; 
    #10 ControllerIn = 4'b0100; 
    #10 ControllerIn = 4'b0101; 
    #10 ControllerIn = 4'b0110; 
    #10 ControllerIn = 4'b0111; 
    #10 ControllerIn = 4'b1000; 
    #10 ControllerIn = 4'b1001; 
    #10 ControllerIn = 4'b1010; 
    #10 ControllerIn = 4'b1011; 
    #10 ControllerIn = 4'b1100;
    #10 ControllerIn = 4'b1101;
    #10 ControllerIn = 4'b1110;
    #10 ControllerIn = 4'b1111;
    end
endmodule
