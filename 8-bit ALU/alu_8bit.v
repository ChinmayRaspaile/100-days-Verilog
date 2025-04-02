`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2025 18:32:15
// Design Name: 
// Module Name: alu_8bit
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


module alu_8bit (
    input [7:0] A, B,  // 8-bit input operands
    input [2:0] Op,    // 3-bit operation selector
    output reg [7:0] Result, // 8-bit output
    output reg Carry    // Carry flag for addition
);
    always @(*) begin
        case (Op)
            3'b000: {Carry, Result} = A + B;   // Addition with carry
            3'b001: {Carry, Result} = A - B;   // Subtraction with borrow
            3'b010: Result = A & B;  // Bitwise AND
            3'b011: Result = A | B;  // Bitwise OR
            3'b100: Result = A ^ B;  // Bitwise XOR
            3'b101: Result = ~(A | B); // Bitwise NOR
            3'b110: Result = ~(A & B); // Bitwise NAND
            3'b111: Result = ~(A ^ B); // Bitwise XNOR
            default: Result = 8'b00000000;
        endcase
    end
endmodule

