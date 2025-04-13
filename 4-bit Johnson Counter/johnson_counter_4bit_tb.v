`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2025 16:34:18
// Design Name: 
// Module Name: johnson_counter_4bit_tb
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
module johnson_counter_4bit_tb;
    reg clk, reset;
    wire [3:0] Q;

    // Instantiate the counter
    johnson_counter_4bit uut (
        .clk(clk), .reset(reset), .Q(Q)
    );

    initial begin
        $monitor("Time=%0t | Reset=%b | Q=%b", $time, reset, Q);
        clk = 0;
        reset = 1; #10;
        reset = 0; #5;
        repeat(12) begin
            #10 clk = ~clk;
            #10 clk = ~clk;
        end
        $finish;
    end
endmodule
