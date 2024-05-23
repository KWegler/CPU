`timescale 1ns / 1ps

module Datapath_TB(

    );
    reg clk;
    reg reset;
    
//    wire [15:0] Next_PC;
//    wire [15:0] Current_Instr;
//    wire MemWrite;
//    wire MemRead;
//    wire signed [15:0] RR_Data;
//    wire signed [7:0] Concatenate;
//    wire signed [15:0] DataMem;

    Datapath DUT(
    .clk(clk),
    .reset(reset)
    //,.Next_PC(Next_PC), .Current_Instr(Current_Instr)         //Useful for identifying what the next PC address is and current Instruction
//    , .MemWrite(MemWrite), .MemRead(MemRead)//, .BranchCheck(BranchCheck), .ALU(ALU), .MemReg(MemReg)
//    , .RR_Data(RR_Data)
//    , .Concatenate(Concatenate)
//    ,.DataMem(DataMem)
    );
    
    always
        #2 clk = ~clk;
    
    initial 
    begin 
    clk = 1;
    reset = 0;
    #2 reset = 1;
    end
endmodule
