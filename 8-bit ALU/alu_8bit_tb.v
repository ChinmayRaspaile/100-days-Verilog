`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2025 18:32:58
// Design Name: 
// Module Name: alu_8bit_tb
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


`timescale 1ns / 1ps
module alu_8bit_tb;
    reg [7:0] A, B;
    reg [2:0] Op;
    wire [7:0] Result;
    wire Carry;

    // Instantiate the ALU
    alu_8bit l1 ( .A(A), .B(B), .Op(Op), .Result(Result), .Carry(Carry));

    initial begin
        $monitor("Time=%0t | A=%b B=%b Op=%b | Result=%b Carry=%b", 
                 $time, A, B, Op, Result, Carry);

        // Apply test cases
        A = 8'b00001111; B = 8'b00000001; Op = 3'b000; #10;  // Addition
        A = 8'b10101010; B = 8'b01010101; Op = 3'b001; #10;  // Subtraction
        A = 8'b11001100; B = 8'b10101010; Op = 3'b010; #10;  // AND
        A = 8'b11001100; B = 8'b10101010; Op = 3'b011; #10;  // OR
        A = 8'b11001100; B = 8'b10101010; Op = 3'b100; #10;  // XOR
        A = 8'b11001100; B = 8'b10101010; Op = 3'b101; #10;  // NOR
        A = 8'b11001100; B = 8'b10101010; Op = 3'b110; #10;  // NAND
        A = 8'b11001100; B = 8'b10101010; Op = 3'b111; #10;  // XNOR

        $finish;
    end
endmodule

