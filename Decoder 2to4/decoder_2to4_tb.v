`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2025 23:19:25
// Design Name: 
// Module Name: decoder_2to4_tb
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

module decoder_2to4_tb;
    reg [1:0] S;
    wire [3:0] Y;

    // Instantiate the 2-to-4 Decoder
    decoder_2to4 uut (
        .S(S), .Y(Y)
    );

    initial begin
        $monitor("Time=%0t | S=%b | Y=%b", 
                 $time, S, Y);

        // Apply test cases
        S = 2'b00; #10;
        S = 2'b01; #10;
        S = 2'b10; #10;
        S = 2'b11; #10;

        $finish;
    end
endmodule

