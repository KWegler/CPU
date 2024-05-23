`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2023 08:55:11 PM
// Design Name: 
// Module Name: Data_Mem_TB
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


module Data_Mem_TB(

    );
    
    reg [15:0] addr;          // Memory Address
    reg signed [15:0] write_data;    // Memory Address Contents
    reg memwrite_read;
    reg reset;
    reg clk;              // All synchronous elements, including memories, should have a clock signal
    reg signed [15:0] read_data;
    
    Data_Mem DUT(
    .addr(addr),
    .write_data(write_data),
    .memwrite_read(memwrite_read),
    .reset(reset),
    .clk(clk),
    .read_data(read_data)
    );
    
    always
        #5 clk = ~clk;
    
    initial 
    begin 
    clk = 1;
    addr = 16'b0000000011100001;
    write_data = 16'b0000111100110011;
    memwrite_read = 1;
    reset = 1;
    #10 
    addr = 16'b0000000011100010;
    write_data = 16'b0000111100110101;
    #10
    addr = 16'b0000000011100011;
    write_data = 16'b0000111100111001;
    #10
    memwrite_read = 0;
    addr = 16'b0000000011100001;
    write_data = 16'b0000111100111111;
    #10
    reset = 0;
    end
    
endmodule
