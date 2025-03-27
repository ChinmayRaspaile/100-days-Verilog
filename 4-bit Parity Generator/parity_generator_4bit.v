`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2025 17:50:55
// Design Name: 
// Module Name: parity_generator_4bit
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


module parity_generator_4bit (
    input [3:0] D,  // 4-bit input data
    output reg even_parity, odd_parity);
    always @(*) begin
        even_parity = ~(D[0] ^ D[1] ^ D[2] ^ D[3]); // Even parity
        odd_parity = (D[0] ^ D[1] ^ D[2] ^ D[3]);   // Odd parity
    end
endmodule

