`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2025 16:35:44
// Design Name: 
// Module Name: ring_counter_4bit_tb
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


module ring_counter_4bit_tb;
    reg clk;
    reg reset;
    wire [3:0] Q;

    // Instantiate the 4-bit Ring Counter
    ring_counter_4bit l1 (.clk(clk), .reset(reset), .Q(Q) );

    // Generate clock
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Stimulus
    initial begin
        $monitor("Time=%0t | Reset=%b | Q=%b", $time, reset, Q);

        reset = 1; #10;
        reset = 0; #100;

        $finish;
    end
endmodule
