`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2025 23:26:40
// Design Name: 
// Module Name: parity_checker_4bit_tb
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

module parity_checker_4bit_tb;
    reg [3:0] D;
    reg parity;
    wire even_valid, odd_valid;

    // Instantiate the 4-bit Parity Checker
    parity_checker_4bit k1 (.D(D), .parity(parity), .even_valid(even_valid), .odd_valid(odd_valid));

    initial begin
        $monitor("Time=%0t | D=%b | Parity=%b | Even Valid=%b | Odd Valid=%b", 
                 $time, D, parity, even_valid, odd_valid);

        // Apply test cases
        D = 4'b0000; parity = 1; #10; // Even parity correct
        D = 4'b0001; parity = 0; #10; // Odd parity correct
        D = 4'b0011; parity = 1; #10; // Even parity correct
        D = 4'b0101; parity = 1; #10; // Even parity correct
        D = 4'b0111; parity = 0; #10; // Odd parity correct
        D = 4'b1111; parity = 1; #10; // Even parity correct
        D = 4'b1100; parity = 0; #10; // Odd parity correct

        $finish;
    end
endmodule
