`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2025 23:11:04
// Design Name: 
// Module Name: logical_shift_unit_tb
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
module logical_shift_unit_tb;
    reg [3:0] A;
    reg shift_dir;
    wire [3:0] Y;

    // Instantiate the Logical Shift Unit
    logical_shift_unit uut (
        .A(A), .shift_dir(shift_dir), .Y(Y)
    );

    initial begin
        $monitor("Time=%0t | A=%b | shift_dir=%b | Y=%b", $time, A, shift_dir, Y);
        
        // Apply test cases
        A = 4'b1101; shift_dir = 0; #10; // Left Shift
        A = 4'b1101; shift_dir = 1; #10; // Right Shift
        A = 4'b0011; shift_dir = 0; #10; // Left Shift
        A = 4'b0011; shift_dir = 1; #10; // Right Shift

        $finish;
    end
endmodule