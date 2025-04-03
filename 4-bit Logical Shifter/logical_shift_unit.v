`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2025 23:10:17
// Design Name: 
// Module Name: logical_shift_unit
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


module logical_shift_unit (
    input [3:0] A,    // 4-bit input
    input shift_dir,  // Shift direction: 0 for left, 1 for right
    output reg [3:0] Y // 4-bit shifted output
);
    always @(*) begin
        if (shift_dir)
            Y = A >> 1; // Logical Right Shift
        else
            Y = A << 1; // Logical Left Shift
    end
endmodule
