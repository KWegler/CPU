`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2023 08:18:17 PM
// Design Name: 
// Module Name: PC_Mux
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


module PC_Mux(
    input wire AND_Out,
    input wire [15:0] ADD,
    input wire [15:0] Branch,
    output reg [15:0] PC_Change
    );
    
    always @ (AND_Out or ADD or Branch)
        PC_Change = (AND_Out == 1'b0) ? ADD : Branch;
    
endmodule
