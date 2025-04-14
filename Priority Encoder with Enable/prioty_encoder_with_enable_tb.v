`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2025 16:28:12
// Design Name: 
// Module Name: prioty_encoder_with_enable_tb
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
module priority_encoder_with_enable_tb;
    reg [3:0] D;
    reg EN;
    wire [1:0] Y;
    wire Valid;

    // Instantiate the encoder
    priority_encoder_with_enable uut (
        .D(D), .EN(EN), .Y(Y), .Valid(Valid)
    );

    initial begin
        $monitor("Time=%0t | EN=%b | D=%b | Y=%b | Valid=%b", $time, EN, D, Y, Valid);

        EN = 0; D = 4'b0001; #10;
        EN = 1; D = 4'b0000; #10;
        D = 4'b0001; #10;
        D = 4'b0010; #10;
        D = 4'b0100; #10;
        D = 4'b1000; #10;
        D = 4'b1010; #10;
        D = 4'b0111; #10;

        $finish;
    end
endmodule
