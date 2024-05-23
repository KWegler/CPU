`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2023 11:21:41 PM
// Design Name: 
// Module Name: Branch_AND_TB
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


module Branch_AND_TB(
    );
    
    reg clk;
    reg Branch_Check_Result;
    reg AND_Out;
    
    Branch_AND DUT(
    .clk(clk),
    .Branch_Check_Result(Branch_Check_Result),
    .AND_Out(AND_Out)
    );
    
    always
        #5 clk = ~clk;
    
    initial 
    begin 
    clk = 0;
    Branch_Check_Result = 0;
    #10 Branch_Check_Result = 1;
    #10 Branch_Check_Result = 0;
    end
endmodule