`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2025 18:00:34
// Design Name: 
// Module Name: barrel_shifter_4bit_tb
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

module barrel_shifter_4bit_tb;
    reg [3:0] D;
    reg [1:0] S;
    reg dir;
    wire [3:0] Y;

    // Instantiate the 4-bit Barrel Shifter
    barrel_shifter_4bit k1 ( .D(D), .S(S), .dir(dir), .Y(Y));

    initial begin
        $monitor("Time=%0t | D=%b S=%b dir=%b | Y=%b", 
                 $time, D, S, dir, Y);

        // Apply test cases
        D = 4'b1101; S = 2'b00; dir = 0; #10; // No shift
        D = 4'b1101; S = 2'b01; dir = 0; #10; // Left shift by 1
        D = 4'b1101; S = 2'b10; dir = 0; #10; // Left shift by 2
        D = 4'b1101; S = 2'b11; dir = 0; #10; // Left shift by 3
        D = 4'b1101; S = 2'b01; dir = 1; #10; // Right shift by 1
        D = 4'b1101; S = 2'b10; dir = 1; #10; // Right shift by 2
        D = 4'b1101; S = 2'b11; dir = 1; #10; // Right shift by 3

        $finish;
    end
endmodule

