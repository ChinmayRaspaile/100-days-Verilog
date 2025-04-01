`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2025 22:39:04
// Design Name: 
// Module Name: alu_4bit
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


module alu_4bit (
    input [3:0] A, B,  // 4-bit operands
    input [1:0] Op,    // Operation selector
    output reg [3:0] Result, // 4-bit output
    output reg Carry    // Carry flag for addition
);
    always @(*) begin
        case (Op)
            2'b00: {Carry, Result} = A + B;   // Addition with carry
            2'b01: {Carry, Result} = A - B;   // Subtraction with borrow
            2'b10: Result = A & B;  // Bitwise AND
            2'b11: Result = A | B;  // Bitwise OR
            default: Result = 4'b0000;
        endcase
    end
endmodule
