`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2025 14:55:29
// Design Name: 
// Module Name: mux_4to1_tb
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


module mux_4to1_tb;
    reg [3:0] I;
    reg [1:0] S;
    wire Y;

    // Instantiate the 4:1 MUX
    mux_4to1 uut (.I(I), .S(S), .Y(Y));

    initial begin
        $monitor("Time=%0t | I=%b S=%b | Y=%b", $time, I, S, Y);
        
        // Apply test cases
        I = 4'b1010; S = 2'b00; #10; // Select I0
        I = 4'b1010; S = 2'b01; #10; // Select I1
        I = 4'b1010; S = 2'b10; #10; // Select I2
        I = 4'b1010; S = 2'b11; #10; // Select I3
        
        $finish;
    end
endmodule
