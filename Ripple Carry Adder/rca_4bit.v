`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2025 17:25:03
// Design Name: 
// Module Name: rca_4bit
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


module rca_4bit (
    input [3:0] A, B,
    input Cin,
    output reg [3:0] Sum,
    output reg Cout);
    
    reg C1, C2, C3; // Intermediate carry signals

    always @(*) begin
        {C1, Sum[0]} = A[0] + B[0] + Cin;
        {C2, Sum[1]} = A[1] + B[1] + C1;
        {C3, Sum[2]} = A[2] + B[2] + C2;
        {Cout, Sum[3]} = A[3] + B[3] + C3;
    end
endmodule

