`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2023 10:43:50 PM
// Design Name: 
// Module Name: Branch_Check
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


module Branch_Check(
    input signed [15:0] ALU_Out,
    input [2:0] Branch,
    output reg Result
    );
    
    always @ (ALU_Out or Branch)
        begin
            case(Branch)
                3'b000: Result = 0;
                3'b001: begin
                    if (ALU_Out < 0) Result = 0;
                    else Result = 1; end
                3'b010: begin
                    if (ALU_Out == 0) Result = 0;
                    else Result = 1; end
                3'b011: begin
                    if (ALU_Out <= 0) Result = 0;
                    else Result = 1; end
                3'b100: begin
                    if (ALU_Out > 0) Result = 0;
                    else Result = 1; end        
                3'b101: begin
                    if (ALU_Out != 0) Result = 0;
                    else Result = 1; end
                3'b110: begin
                    if (ALU_Out >= 0) Result = 0;
                    else Result = 1; end
                3'b111: Result = 0;
            endcase
        end
endmodule
