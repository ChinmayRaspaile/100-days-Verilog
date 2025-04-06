`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2025 16:34:44
// Design Name: 
// Module Name: ring_counter_4bit
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


module ring_counter_4bit (
    input clk,         // Clock signal
    input reset,       // Asynchronous reset
    output reg [3:0] Q // 4-bit output
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            Q <= 4'b0001;       // Initial state
        else
            Q <= {Q[2:0], Q[3]}; // Rotate left
    end
endmodule
