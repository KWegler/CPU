`timescale 1ns / 1ps

module CPU_Core_TB(

    );
    reg clk;
    reg reset;
//    wire Halt;
    
    //Branch + PC_ADD + Instruct. Input/Output (For Testing)
//    wire Branch_Result;
//    wire [15:0] Branch_Address; <----Only uncomment when testing issues regarding PC

    //Useful for identifying what the next PC address is and current Instruction
    wire [15:0] Next_PC;
    wire [15:0] Current_Instr;
    
    //Controller Input/Output (For Testing)
//    wire RegWrite;
//    wire Immediate;
//    wire Mov;
//    wire BM;
    wire MemWrite_MemRead;
//    wire [2:0] BranchCheck;
//    wire [2:0] ALU;
//    wire MemReg;

    //RegFile Input/Output (For Testing)
//    wire signed [15:0] RR_Write_Data;
//    wire signed [15:0] RS1_Data;
//    wire signed [15:0] RS2_Data;
//    wire [3:0] RS1;
//    wire [3:0] RS2;
//    wire[15:0] Reg0_3_Data;
    wire signed [15:0] RR_Data;

    //ALU Input/Output (For Testing)
//    wire signed [15:0] ALU_Out;
    wire signed [7:0] Concatenate;
    
    //ALU-Mem Mux Input/Output (For Testing)
    wire signed [15:0] DataMem;
//    wire signed [15:0] Data;
    
    //Immediate Add Input/Output (For Testing)
//    wire signed [15:0] Result;
    
    //Immediate Mux Input/Output (For Testing)
//    wire signed [15:0] WriteBack;  <----Only uncomment when testing issues regarding RR Write or IM_Mux
    
    CPU_Core DUT(
    .clk(clk),
    .reset(reset)
    //.Halt(Halt)
    //,.Branch_Result(Branch_Result) 
    //,.Branch_Address(Branch_Address)
    ,.Next_PC(Next_PC), .Current_Instr(Current_Instr)         //Useful for identifying what the next PC address is and current Instruction
    /*,.RegWrite(RegWrite), .Immediate(Immediate), .Mov(Mov), .BM(BM)*/, .MemWrite_MemRead(MemWrite_MemRead)//, .BranchCheck(BranchCheck), .ALU(ALU), .MemReg(MemReg)
    /*,.RR_Write_Data(RR_Write_Data), .RS1_Data(RS1_Data), .RS2_Data(RS2_Data), .RS1(RS1), .RS2(RS2), .Reg0_3_Data(Reg0_3_Data)*/, .RR_Data(RR_Data)
    /*,.ALU_Out(ALU_Out)*/, .Concatenate(Concatenate)
    ,.DataMem(DataMem)/*, .Data(Data)*/
    //,.Result(Result)
//  ,.WriteBack(WriteBack)    <----Only uncomment when testing issues regarding RR Write or IM_Mux 
    );
    
    always
        #5 clk = ~clk;
    
    /*---------Commented Values inside of 'initial' should only be uncommented for testing purposes------*/
    initial 
    begin 
    clk = 1;
    reset = 0;
//    Branch_Result = 0;   
//    Branch_Address = 16'b0000000000000100;
//    RR_Write_Data = 0;
    #5 reset = 1;
//    #5 RR_Write_Data = 8;
//    #10 RR_Write_Data = 15;
//    #10 RR_Write_Data = 8;

    end
endmodule