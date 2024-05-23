`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2023 08:23:55 PM
// Design Name: 
// Module Name: PC_Mux_TB
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


module PC_Mux_TB(
    );
    
    wire [15:0] PC_Change;
    reg [15:0] Branch;
    reg [15:0] ADD;
    reg AND_Out;
    
    PC_Mux DUT(
    .PC_Change(PC_Change),
    .Branch(Branch),
    .ADD(ADD),
    .AND_Out(AND_Out)
    );
    
    
    initial 
    begin 
    ADD = 16'b0100110010000000;
    Branch = 16'b0110110100111100;
    #5 AND_Out = 1'b0;
    #5 AND_Out = 1'b1;
    end
endmodule