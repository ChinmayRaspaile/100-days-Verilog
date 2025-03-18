`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2025 20:03:23
// Design Name: 
// Module Name: comparator_4bit
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


module comparator_4bit (
    input [3:0] A, B,
    output reg G, L, E);
    always @(*) begin
        if (A > B) begin
            G = 1;
            L = 0;
            E = 0;
        end
        else if (A < B) begin
            G = 0;
            L = 1;
            E = 0;
        end
        else begin
            G = 0;
            L = 0;
            E = 1;
        end
    end
endmodule

