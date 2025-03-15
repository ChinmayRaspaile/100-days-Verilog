`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2025 19:48:02
// Design Name: 
// Module Name: full_adder
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


module full_adder (
    input A, B, Cin,
    output reg S, Cout);
    always @(*) begin
        S = A ^ B ^ Cin;          // Sum
        Cout = (A & B) | (Cin & (A ^ B)); // Carry
    end
endmodule
