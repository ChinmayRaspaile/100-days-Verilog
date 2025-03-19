`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 20:27:17
// Design Name: 
// Module Name: mux_8to1_tb
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


module mux_8to1_tb;
    reg [7:0] I;
    reg [2:0] S;
    wire Y;

    // Instantiate the 8:1 MUX
    mux_8to1 k1 (.I(I), .S(S), .Y(Y));

    initial begin
        $monitor("Time=%0t | I=%b S=%b | Y=%b", 
                 $time, I, S, Y);

        // Apply test cases
        I = 8'b10101010; S = 3'b000; #10; // Select I0
        I = 8'b10101010; S = 3'b001; #10; // Select I1
        I = 8'b10101010; S = 3'b010; #10; // Select I2
        I = 8'b10101010; S = 3'b011; #10; // Select I3
        I = 8'b10101010; S = 3'b100; #10; // Select I4
        I = 8'b10101010; S = 3'b101; #10; // Select I5
        I = 8'b10101010; S = 3'b110; #10; // Select I6
        I = 8'b10101010; S = 3'b111; #10; // Select I7

        $finish;
    end
endmodule

