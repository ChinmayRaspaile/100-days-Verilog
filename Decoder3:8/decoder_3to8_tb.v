`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2025 15:39:16
// Design Name: 
// Module Name: decoder_3to8_tb
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
module decoder_3to8_tb;
    reg [2:0] S;
    wire [7:0] Y;

    // Instantiate the 3:8 Decoder
    decoder_3to8 a1 (.S(S), .Y(Y));

    initial begin
        $monitor("Time=%0t | S=%b | Y=%b", 
                 $time, S, Y);

        // Apply test cases
        S = 3'b000; #10;
        S = 3'b001; #10;
        S = 3'b010; #10;
        S = 3'b011; #10;
        S = 3'b100; #10;
        S = 3'b101; #10;
        S = 3'b110; #10;
        S = 3'b111; #10;

        $finish;
    end
endmodule

