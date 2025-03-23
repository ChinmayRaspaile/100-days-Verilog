`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2025 17:58:42
// Design Name: 
// Module Name: barrel_shifter_4bit
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


module barrel_shifter_4bit (
    input [3:0] D,   // 4-bit input data
    input [1:0] S,   // 2-bit shift amount (0 to 3)
    input dir,       // Shift direction (0 = left, 1 = right)
    output reg [3:0] Y); // Shifted output

    always @(*) begin
        if (dir == 0) // Left Shift
            Y = D << S;
        else          // Right Shift
            Y = D >> S;
    end
endmodule
