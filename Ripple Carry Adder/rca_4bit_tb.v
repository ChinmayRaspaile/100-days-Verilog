`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2025 17:26:03
// Design Name: 
// Module Name: rca_4bit_tb
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
module rca_4bit_tb;
    reg [3:0] A, B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;

    // Instantiate the 4-bit Ripple Carry Adder
    rca_4bit k1 (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

    initial begin
        $monitor("Time=%0t | A=%b B=%b Cin=%b | Sum=%b Cout=%b",
                 $time, A, B, Cin, Sum, Cout);

        // Apply test cases
        A = 4'b0000; B = 4'b0000; Cin = 0; #10;
        A = 4'b0001; B = 4'b0001; Cin = 0; #10;
        A = 4'b0010; B = 4'b0011; Cin = 0; #10;
        A = 4'b0101; B = 4'b0011; Cin = 1; #10;
        A = 4'b1111; B = 4'b0001; Cin = 1; #10;

        $finish;
    end
endmodule

