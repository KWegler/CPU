`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2023 11:06:51 AM
// Design Name: 
// Module Name: PC_TB
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


module PC_TB(
    );
    
    reg clk;
    reg reset;
    reg [15:0] PC_In;
    wire [15:0] PC_Out;
    
    PC DUT(
    .clk(clk),
    .reset(reset),
    .PC_In(PC_In),
    .PC_Out(PC_Out)
    );
    
    always
        #5 clk = ~clk;
    
    initial 
    begin 
    clk = 0;
    reset = 1;
    PC_In = 16'b00000010001010011;
    #10 PC_In = 16'b00000001010101111;
    #10 reset = 0;
    #10 PC_In = 16'b01;
    #10 reset = 1;
    end
endmodule