`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2025 16:38:13
// Design Name: 
// Module Name: full_subtractor_tb
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


module full_subtractor_tb;
    reg A, B, Bin;
    wire D, B_out;

    // Instantiate the Full Subtractor module
    full_subtractor k1 (.A(A), .B(B), .Bin(Bin), .D(D), .B_out(B_out));

    initial begin
        $monitor("Time=%0t | A=%b B=%b Bin=%b | Difference=%b Borrow=%b", 
                 $time, A, B, Bin, D, B_out);

        // Apply test cases
        A = 0; B = 0; Bin = 0; #10;
        A = 0; B = 0; Bin = 1; #10;
        A = 0; B = 1; Bin = 0; #10;
        A = 0; B = 1; Bin = 1; #10;
        A = 1; B = 0; Bin = 0; #10;
        A = 1; B = 0; Bin = 1; #10;
        A = 1; B = 1; Bin = 0; #10;
        A = 1; B = 1; Bin = 1; #10;

        $finish;
    end
endmodule

