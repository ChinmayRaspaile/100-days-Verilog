`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2025 19:40:47
// Design Name: 
// Module Name: logic_gates
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


module logic_gates (
    input A, B,
    output AND_OUT, OR_OUT, XOR_OUT, NAND_OUT, NOR_OUT, XNOR_OUT);
    assign AND_OUT = A & B;
    assign OR_OUT = A | B;
    assign XOR_OUT = A ^ B;
    assign NAND_OUT = ~(A & B);
    assign NOR_OUT = ~(A | B);
    assign XNOR_OUT = ~(A ^ B);
endmodule
