`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2025 23:26:05
// Design Name: 
// Module Name: parity_chekcer_4bit
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


module parity_checker_4bit (
    input [3:0] D,  // 4-bit input data
    input parity,   // Received parity bit
    output reg even_valid, odd_valid);
    always @(*) begin
        even_valid = ~(^D ^ parity); // Even parity check
        odd_valid = (^D ^ parity);   // Odd parity check
    end
endmodule

