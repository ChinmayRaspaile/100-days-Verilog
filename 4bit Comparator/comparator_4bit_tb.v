`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2025 20:04:38
// Design Name: 
// Module Name: comparator_4bit_tb
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

module comparator_4bit_tb;
    reg [3:0] A, B;
    wire G, L, E;

    // Instantiate the 4-bit Comparator
    comparator_4bit uut (.A(A), .B(B), .G(G), .L(L), .E(E));

    initial begin
        $monitor("Time=%0t | A=%b B=%b | Greater=%b Lesser=%b Equal=%b", 
                 $time, A, B, G, L, E);

        // Apply test cases
        A = 4'b0000; B = 4'b0000; #10;
        A = 4'b0010; B = 4'b0001; #10;
        A = 4'b0100; B = 4'b0110; #10;
        A = 4'b1010; B = 4'b1010; #10;
        A = 4'b1111; B = 4'b0111; #10;
        A = 4'b1001; B = 4'b1100; #10;

        $finish;
    end
endmodule

