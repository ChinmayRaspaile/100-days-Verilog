`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2025 17:51:47
// Design Name: 
// Module Name: parity_generator_4bit_tb
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


module parity_generator_4bit_tb;
    reg [3:0] D;
    wire even_parity, odd_parity;

    // Instantiate the 4-bit Parity Generator
    parity_generator_4bit k1 ( .D(D), .even_parity(even_parity), .odd_parity(odd_parity));

    initial begin
        $monitor("Time=%0t | D=%b | Even Parity=%b | Odd Parity=%b", 
                 $time, D, even_parity, odd_parity);

        // Apply test cases
        D = 4'b0000; #10;
        D = 4'b0001; #10;
        D = 4'b0011; #10;
        D = 4'b0101; #10;
        D = 4'b0111; #10;
        D = 4'b1111; #10;

        $finish;
    end
endmodule

