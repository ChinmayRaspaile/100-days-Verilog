`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2025 22:24:59
// Design Name: 
// Module Name: priority_encoder
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


module priority_encoder (
    input [7:0] I,   // 8-bit input
    output reg [2:0] Y ); // 3-bit encoded output

    always @(*) begin
        casez (I)
            8'b1??????? : Y = 3'b111; // Highest priority (I7)
            8'b01?????? : Y = 3'b110;
            8'b001????? : Y = 3'b101;
            8'b0001???? : Y = 3'b100;
            8'b00001??? : Y = 3'b011;
            8'b000001?? : Y = 3'b010;
            8'b0000001? : Y = 3'b001;
            8'b00000001 : Y = 3'b000; // Lowest priority (I0)
            default     : Y = 3'b000; // No input active
        endcase
    end
endmodule

