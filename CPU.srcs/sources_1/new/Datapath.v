`timescale 1ns / 1ps

module Datapath(
    clk,
    reset
    
//    ,Next_PC,
//    Current_Instr,
//    MemWrite,
//    MemRead,
//    RR_Data,
//    Concatenate
//    ,DataMem
    );
    
    input clk;
    input reset;
    
//    input wire signed [15:0] DataMem;
//    output wire [15:0] Next_PC;
//    output wire [15:0] Current_Instr;
//    output wire MemWrite;
//    output wire MemRead;
//    output wire signed [15:0] RR_Data;
//    output wire signed [7:0] Concatenate;

    wire signed [15:0] DataMem;
//    wire [15:0] Next_PC;
//    wire [15:0] Current_Instr;
    wire MemWrite;
    wire MemRead;
    wire signed [15:0] RR_Data;
    wire signed [7:0] Concatenate;

    CPU_Core CPU(.clk(clk), .reset(reset), /*.Next_PC(Next_PC), .Current_Instr(Current_Instr),*/ .MemWrite(MemWrite), .MemRead(MemRead), .RR_Data(RR_Data), .Concatenate(Concatenate), .DataMem(DataMem));
    
    Data_Mem Mem(.write_data(RR_Data), .RW_addr(Concatenate), .memwrite(MemWrite), .memread(MemRead), .reset(reset), .clk(clk), .read_data(DataMem));

endmodule