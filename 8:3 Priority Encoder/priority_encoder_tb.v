`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2025 22:29:31
// Design Name: 
// Module Name: priority_encoder_tb
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

module priority_encoder_tb;
    reg [7:0] I;
    wire [2:0] Y;

    // Instantiate the 8:3 Priority Encoder
    priority_encoder l1 (.I(I), .Y(Y));

    initial begin
        $monitor("Time=%0t | I=%b | Y=%b", 
                 $time, I, Y);

        // Apply test cases
        I = 8'b00000001; #10; // Y = 000
        I = 8'b00000100; #10; // Y = 010
        I = 8'b00010000; #10; // Y = 100
        I = 8'b01000000; #10; // Y = 110
        I = 8'b10000000; #10; // Y = 111 (Highest priority)
        I = 8'b00001110; #10; // Y = 011 (I3 is highest active)
        I = 8'b11000010; #10; // Y = 111 (I7 is highest active)

        $finish;
    end
endmodule

