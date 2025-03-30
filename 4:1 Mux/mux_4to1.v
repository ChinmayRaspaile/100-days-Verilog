`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2025 14:54:44
// Design Name: 
// Module Name: mux_4to1
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


module mux_4to1 (
    input [3:0] I,   // 4-bit input (I0 to I3)
    input [1:0] S,   // 2-bit select input
    output Y         // Output
);
    wire Y0, Y1;
    
    // Instantiate two 2:1 MUX modules
    mux_2to1 mux1 (.A(I[0]), .B(I[1]), .S(S[0]), .Y(Y0));
    mux_2to1 mux2 (.A(I[2]), .B(I[3]), .S(S[0]), .Y(Y1));
    
    // Final 2:1 MUX to select between Y0 and Y1
    mux_2to1 mux3 (.A(Y0), .B(Y1), .S(S[1]), .Y(Y));
endmodule
