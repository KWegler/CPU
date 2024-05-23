`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2023 10:18:42 PM
// Design Name: 
// Module Name: RegFile_V
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


module RegFile_V(
    input [11:0] Instruct,
    input mov,
    input RegWrite,
    input BM,
    input signed [15:0] RR_Write_Data,
    output reg signed [15:0] RS1_Data,
    output reg signed [15:0] RS2_Data,
    output reg [3:0] RS1,
    output reg [3:0] RS2,
    output reg [15:0] Reg0_3,
    output reg signed [15:0] Bit4_7,
    output reg signed [15:0] Red,
    output reg [9:0] Bed
    );
    
    reg [15:0] Register[0:15];
    reg [3:0] RR;
    reg [1:0] BMR;
    reg [10:0] Temp;
    
    initial begin
    for (integer i = 0; i < 15; i=i+1) begin
            Register[i] = 1;
            BMR = 0;
            RR = 0;
            Register[15] = 0;
            Bed = 0;
        end
    end
    
    always @ (Instruct or mov or RegWrite or RR_Write_Data or BM)
         begin
         
         BMR = Instruct [1:0];
         RR = Instruct[3:0];
         RS1 = Instruct[7:4];
         RS2 = Instruct[11:8];
         Temp = Instruct[11:2];
         
         RS1_Data = Register[RS1]; //Data of RS1 Register
         RS2_Data = Register[RS2]; //Data of RS2 Register
         
         Reg0_3 = Register[BMR]; //Data of 2 LSBs of RR Register for Branch Address
         
         Bit4_7 = Register[RR];  //Data of RR register for Immediate Add
         
         if (mov == 1) begin
            Register[RR] = Register[RS1]; //Assigns RS1 Register Data to Register RR
            Register[RS1] = Register[RS2]; //Assigns RS2 Register Data to Register RS1
         end
         
         else if (BM == 1) begin 
            Register[BMR] = Instruct[11:2]; //Assigns bits 11-2 of instruction to Register [BMR = RR]
            Bed = Instruct[11:2];
         end
         
         else if (RegWrite == 1) begin
            Register[RR] = RR_Write_Data; //Data to be written back into RR address 
            Red = RR_Write_Data;
         end   
     end    
endmodule