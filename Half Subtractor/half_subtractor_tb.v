`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2025 15:38:43
// Design Name: 
// Module Name: half_subtractor_tb
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

module half_subtractor_tb;
    reg A, B;
    wire D, B_out;

    // Instantiate the Half Subtractor module
    half_subtractor l1 (.A(A), .B(B), .D(D), .B_out(B_out));

    initial begin
        $monitor("Time=%0t | A=%b B=%b | Difference=%b Borrow=%b", 
                 $time, A, B, D, B_out);

        // Apply test cases
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        $finish;
    end
endmodule

