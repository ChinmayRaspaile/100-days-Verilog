`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2025 19:48:29
// Design Name: 
// Module Name: full_adder_tb
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

module full_adder_tb;
    reg A, B, Cin;
    wire S, Cout;

    // Instantiate the Full Adder module
    full_adder l1 (.A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));

    initial begin
        $monitor("Time=%0t | A=%b B=%b Cin=%b | Sum=%b Carry=%b", 
                 $time, A, B, Cin, S, Cout);

        // Apply test cases
        A = 0; B = 0; Cin = 0; #10;
        A = 0; B = 0; Cin = 1; #10;
        A = 0; B = 1; Cin = 0; #10;
        A = 0; B = 1; Cin = 1; #10;
        A = 1; B = 0; Cin = 0; #10;
        A = 1; B = 0; Cin = 1; #10;
        A = 1; B = 1; Cin = 0; #10;
        A = 1; B = 1; Cin = 1; #10;

        $finish;
    end
endmodule

