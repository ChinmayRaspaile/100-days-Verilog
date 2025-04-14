`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2025 16:27:25
// Design Name: 
// Module Name: priority_encoder_with_enable
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


module priority_encoder_with_enable (
    input [3:0] D,       // 4-bit input
    input EN,            // Enable signal
    output reg [1:0] Y,  // 2-bit output
    output reg Valid     // Output Valid signal
);
    always @(*) begin
        if (!EN) begin
            Y = 2'b00;
            Valid = 0;
        end else begin
            casex (D)
                4'b1xxx: begin Y = 2'b11; Valid = 1; end
                4'b01xx: begin Y = 2'b10; Valid = 1; end
                4'b001x: begin Y = 2'b01; Valid = 1; end
                4'b0001: begin Y = 2'b00; Valid = 1; end
                default: begin Y = 2'b00; Valid = 0; end
            endcase
        end
    end
endmodule
