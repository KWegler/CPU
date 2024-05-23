`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2023 11:17:28 PM
// Design Name: 
// Module Name: Branch_AND
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


module Branch_AND(
    input wire clk,
    input wire Branch_Check_Result,
    output reg AND_Out
    );
    
    always @ (posedge clk)
        if (Branch_Check_Result == 1) AND_Out = 1;
        else AND_Out = 0;
endmodule