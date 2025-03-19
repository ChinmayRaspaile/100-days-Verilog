`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 20:24:59
// Design Name: 
// Module Name: mux_8to1
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


module mux_8to1 (
    input [7:0] I,   // 8-bit input (I0 to I7)
    input [2:0] S,   // 3-bit select input
    output reg Y);     // Output

    always @(*) begin
        case (S)
            3'b000: Y = I[0];
            3'b001: Y = I[1];
            3'b010: Y = I[2];
            3'b011: Y = I[3];
            3'b100: Y = I[4];
            3'b101: Y = I[5];
            3'b110: Y = I[6];
            3'b111: Y = I[7];
            default: Y = 1'b0;
        endcase
    end
endmodule

