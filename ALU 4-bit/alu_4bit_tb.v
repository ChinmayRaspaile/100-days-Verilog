`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2025 22:41:13
// Design Name: 
// Module Name: alu_4bit_tb
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

module alu_4bit_tb;
    reg [3:0] A, B;
    reg [1:0] Op;
    wire [3:0] Result;
    wire Carry;

    // Instantiate the ALU
    alu_4bit l1 (.A(A), .B(B), .Op(Op), .Result(Result), .Carry(Carry));

    initial begin
        $monitor("Time=%0t | A=%b B=%b Op=%b | Result=%b Carry=%b", 
                 $time, A, B, Op, Result, Carry);

        // Apply test cases
        A = 4'b0101; B = 4'b0011; Op = 2'b00; #10;  // Addition (5+3)
        A = 4'b1001; B = 4'b0010; Op = 2'b01; #10;  // Subtraction (9-2)
        A = 4'b1100; B = 4'b1010; Op = 2'b10; #10;  // AND
        A = 4'b1100; B = 4'b1010; Op = 2'b11; #10;  // OR

        $finish;
    end
endmodule

