`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2025 19:32:23
// Design Name: 
// Module Name: half_adder_tb
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

module half_adder_tb;
    reg A, B;
    wire S, C;

    // Instantiate the Half Adder module
    half_adder k1 (.A(A), .B(B), .S(S), .C(C));

    initial begin
        $monitor("Time=%0t | A=%b B=%b | Sum=%b Carry=%b", 
                 $time, A, B, S, C);

        // Apply test cases
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        $finish;
    end
endmodule

