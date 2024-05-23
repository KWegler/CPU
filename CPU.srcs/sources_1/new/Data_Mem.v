`timescale 1ns / 1ps

module Data_Mem (
    input wire signed [15:0] write_data,      
    input wire [7:0] RW_addr,    
    input wire memwrite,
    input wire memread,
    input wire reset,
    input wire clk,                  // All synchronous elements, including memories, should have a clock signal
    output reg signed [15:0] read_data    
    );

    reg [15:0] MEMORY[0:255];  // 256 words of 16-bit memory
    
    integer i;

    initial begin
      read_data <= 0;
      for (i = 0; i < 256; i = i + 1) begin
        if (i <= 127) MEMORY[i] = i*100;
        else MEMORY[i] = (i-127)*(-100);
      end
    end
    
    // Using @(addr) will lead to unexpected behavior as memories are synchronous elements like registers
    always @ (posedge clk) begin
      #1
      if (reset == 1'b0) begin
        read_data <= 0; end
      else if (memread == 1'b0) begin
        if (memwrite == 1'b1) MEMORY[RW_addr] <= write_data; end
      else begin read_data <= MEMORY[RW_addr];end      
      end
endmodule