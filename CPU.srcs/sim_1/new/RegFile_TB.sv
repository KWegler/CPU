`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2023 09:21:21 PM
// Design Name: 
// Module Name: RegFile_TB
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


module RegFile_TB(

    );
    reg [11:0] Instruct;
    reg mov;
    reg RegWrite;
    reg BM;
    reg signed [15:0] RR_Write_Data;
    wire signed [15:0] RS1_Data;
    wire signed [15:0] RS2_Data;
    wire [3:0] RS1;
    wire [3:0] RS2;
    wire [15:0] Reg0_3;
    wire signed [15:0] Bit4_7;
    
    RegFile DUT(
    .Instruct(Instruct),
    .mov(mov),
    .RegWrite(RegWrite),
    .BM(BM),
    .RR_Write_Data(RR_Write_Data),
    .RS1_Data(RS1_Data),
    .RS2_Data(RS2_Data),
    .RS1(RS1),
    .RS2(RS2),
    .Reg0_3(Reg0_3),
    .Bit4_7(Bit4_7)
    );
    
    initial 
    begin 
    mov = 0;
    RegWrite = 1;
    BM = 0;
    Instruct = 12'b010001010010;
    RR_Write_Data = 16'b0000000011000110;
    #10
    Instruct = 12'b010001010011;
    RR_Write_Data = 16'b0000000011000111;
    #10
    Instruct = 12'b010001010100;
    RR_Write_Data = 16'b0000000011001000;
    #10
    Instruct = 12'b010001010101;
    RR_Write_Data = 16'b0000000011001001;
    #10
    Instruct = 12'b010001010110;
    RR_Write_Data = 16'b0000000011001010;
    #10
    Instruct = 12'b010001010111;
    RR_Write_Data = 16'b0000000011001011;
    #10
    Instruct = 12'b010001011000;
    RR_Write_Data = 16'b0000000011001100;
    #10
    Instruct = 12'b010001011001;
    RR_Write_Data = 16'b0000000011001101;
    #10
    Instruct = 12'b010001011010;
    RR_Write_Data = 16'b0000000011001110;
    #10
    Instruct = 12'b010001011011;
    RR_Write_Data = 16'b0000000011001111;
    #10
    Instruct = 12'b010001011100;
    RR_Write_Data = 16'b0000000011010000;
    #10
    Instruct = 12'b010001011101;
    RR_Write_Data = 16'b0000000011010001;
    #10
    Instruct = 12'b010001011110;
    RR_Write_Data = 16'b0000000011010010;
    #10
    RegWrite = 0;
    mov = 1;
    Instruct = 12'b011011001010;
    RR_Write_Data = 16'b0000000011010100;
    #10
    RegWrite = 1;
    mov = 0;
    Instruct = 12'b110010101000;
    RR_Write_Data = 16'b0000000011010101;
    #10
    BM = 1; 
    Instruct = 12'b000100011000;
    RegWrite = 1;  
    end
endmodule