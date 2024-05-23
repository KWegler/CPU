`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2023 09:16:40 AM
// Design Name: 
// Module Name: Controller
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


module Controller(
    input [3:0] ControllerIn,
    input reset,
    output reg RegWrite,
    output reg Immediate,
    output reg Mov,
    output reg BM,
    output reg MemWrite,
    output reg MemRead,
    output reg [2:0] BranchCheck,
    output reg [2:0] ALU,
    output reg MemReg,
    output reg Halt
    );
    
    always @ (negedge reset)
        Halt = 0;
    
    always @ (ControllerIn)
        begin
            case(ControllerIn)
                4'b0000:
                    begin
                        Immediate <= 1'b0;
                        Mov <= 1'b0;
                        BM <= 1'b0;
                        RegWrite <= 1'b0;
                        MemWrite <= 1'b0;
                        MemRead <= 1'b1;
                        BranchCheck <= 3'b000;
                        ALU <= 3'b000;
                        MemReg <= 1'b0;
                        Halt <= 1;
                    end
                4'b0001:
                    begin
                        Immediate <= 1'b0;
                        Mov <= 1'b0;
                        BM <= 1'b0;
                        RegWrite <= 1'b0;
                        MemWrite <= 1'b1;
                        MemRead <= 1'b0;
                        BranchCheck <= 3'b000;
                        ALU <= 3'b100;
                        MemReg <= 1'b0;
                        Halt <= 0;
                    end
                4'b0010:
                    begin
                        Immediate <= 1'b0;
                        Mov <= 1'b0;
                        BM <= 1'b0;
                        RegWrite <= 1'b1;
                        MemRead <= 1'b1;
                        MemWrite <= 1'b0;
                        BranchCheck <= 3'b000;
                        ALU <= 3'b100;
                        MemReg <= 1'b1;
                        Halt <= 0;
                    end
                4'b0011:
                    begin
                        Immediate <= 1'b0;
                        Mov <= 1'b0;
                        BM <= 1'b0;
                        RegWrite <= 1'b1;
                        MemRead <= 1'b1;
                        MemWrite <= 1'b0;
                        BranchCheck <= 3'b000;
                        ALU <= 3'b000;
                        MemReg <= 1'b0;
                        Halt <= 0;
                    end
                4'b0100:
                    begin
                        Immediate <= 1'b0;
                        Mov <= 1'b0;
                        BM <= 1'b0;
                        RegWrite <= 1'b1;
                        MemRead <= 1'b1;
                        MemWrite <= 1'b0;
                        BranchCheck <= 3'b000;
                        ALU <= 3'b010;
                        MemReg <= 1'b0;
                        Halt <= 0;
                    end
                4'b0101:
                    begin
                        Immediate <= 1'b0;
                        Mov <= 1'b0;
                        BM <= 1'b0;
                        RegWrite <= 1'b0;
                        MemRead <= 1'b1;
                        MemWrite <= 1'b0;
                        BranchCheck <= 3'b001;
                        ALU <= 3'b001;
                        MemReg <= 1'b0;
                        Halt <= 0;
                    end
                4'b0110:
                    begin
                        Immediate <= 1'b0;
                        Mov <= 1'b0;
                        BM <= 1'b0;
                        RegWrite <= 1'b0;
                        MemRead <= 1'b1;
                        MemWrite <= 1'b0;
                        BranchCheck <= 3'b100;
                        ALU <= 3'b001;
                        MemReg <= 1'b0;
                        Halt <= 0;
                    end
                4'b0111:
                    begin
                        Immediate <= 1'b0;
                        Mov <= 1'b0;
                        BM <= 1'b1;
                        RegWrite <= 1'b0;
                        MemRead <= 1'b1;
                        MemWrite <= 1'b0;
                        BranchCheck <= 3'b000;
                        ALU <= 3'b000;
                        MemReg <= 1'b0;
                        Halt <= 0;
                    end
                4'b1000:
                    begin
                        Immediate <= 1'b0;
                        Mov <= 1'b1;
                        BM <= 1'b0;
                        RegWrite <= 1'b0;
                        MemRead <= 1'b1;
                        MemWrite <= 1'b0;
                        BranchCheck <= 3'b000;
                        ALU <= 3'b000;
                        MemReg <= 1'b0;
                        Halt <= 0;
                    end
                4'b1001:
                    begin
                        Immediate <= 1'b0;
                        Mov <= 1'b0;
                        BM <= 1'b0;
                        RegWrite <= 1'b0;
                        MemRead <= 1'b1;
                        MemWrite <= 1'b0;
                        BranchCheck <= 3'b101;
                        ALU <= 3'b001;
                        MemReg <= 1'b0;
                        Halt <= 0;
                    end
                4'b1010:
                    begin
                        Immediate <= 1'b1;
                        Mov <= 1'b0;
                        BM <= 1'b0;
                        RegWrite <= 1'b1;
                        MemRead <= 1'b1;
                        MemWrite <= 1'b0;
                        BranchCheck <= 3'b000;
                        ALU <= 3'b100;
                        MemReg <= 1'b0;
                        Halt <= 0;
                    end
                4'b1011:
                    begin
                        Immediate <= 1'b0;
                        Mov <= 1'b0;
                        BM <= 1'b0;
                        RegWrite <= 1'b1;
                        MemRead <= 1'b1;
                        MemWrite <= 1'b0;
                        BranchCheck <= 3'b000;
                        ALU <= 3'b001;
                        MemReg <= 1'b0;
                        Halt <= 0;
                    end
               4'b1100:
                    begin
                        Immediate <= 1'b0;
                        Mov <= 1'b0;
                        BM <= 1'b0;
                        RegWrite <= 1'b1;
                        MemRead <= 1'b1;
                        MemWrite <= 1'b0;
                        BranchCheck <= 3'b000;
                        ALU <= 3'b011;
                        MemReg <= 1'b0;
                        Halt <= 0;
                    end
                4'b1101:
                    begin
                        Immediate <= 1'b0;
                        Mov <= 1'b0;
                        BM <= 1'b0;
                        RegWrite <= 1'b0;
                        MemRead <= 1'b1;
                        MemWrite <= 1'b0;
                        BranchCheck <= 3'b011;
                        ALU <= 3'b001;
                        MemReg <= 1'b0;
                        Halt <= 0;
                    end
                4'b1110:
                    begin
                        Immediate <= 1'b0;
                        Mov <= 1'b0;
                        BM <= 1'b0;
                        RegWrite <= 1'b0;
                        MemRead <= 1'b1;
                        MemWrite <= 1'b0;
                        BranchCheck <= 3'b110;
                        ALU <= 3'b001;
                        MemReg <= 1'b0;
                        Halt <= 0;
                    end
                4'b1111:
                    begin
                        Immediate <= 1'b0;
                        Mov <= 1'b0;
                        BM <= 1'b0;
                        RegWrite <= 1'b0;
                        MemRead <= 1'b1;
                        MemWrite <= 1'b0;
                        BranchCheck <= 3'b010;
                        ALU <= 3'b001;
                        MemReg <= 1'b0;
                        Halt <= 0;
                    end
            endcase
        end
endmodule
