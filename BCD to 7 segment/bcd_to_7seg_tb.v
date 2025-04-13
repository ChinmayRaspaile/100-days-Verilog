`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2025 16:40:17
// Design Name: 
// Module Name: bcd_to_7seg_tb
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
module bcd_to_7seg_tb;
    reg [3:0] BCD;
    wire [6:0] seg;

    // Instantiate the module
    bcd_to_7seg uut (
        .BCD(BCD),
        .seg(seg)
    );

    initial begin
        $monitor("Time=%0t | BCD=%b | seg=%b", $time, BCD, seg);

        // Test all valid BCD values (0 to 9)
        BCD = 4'd0; #10;
        BCD = 4'd1; #10;
        BCD = 4'd2; #10;
        BCD = 4'd3; #10;
        BCD = 4'd4; #10;
        BCD = 4'd5; #10;
        BCD = 4'd6; #10;
        BCD = 4'd7; #10;
        BCD = 4'd8; #10;
        BCD = 4'd9; #10;

        // Optional: Test invalid values
        BCD = 4'd10; #10;
        BCD = 4'd15; #10;

        $finish;
    end
endmodule
