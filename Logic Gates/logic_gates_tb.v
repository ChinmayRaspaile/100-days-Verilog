`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2025 19:41:32
// Design Name: 
// Module Name: logic_gates_tb
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


module logic_gates_tb;
    reg A, B;
    wire AND_OUT, OR_OUT, XOR_OUT, NAND_OUT, NOR_OUT, XNOR_OUT;

    logic_gates a1 (.A(A), .B(B),.AND_OUT(AND_OUT), .OR_OUT(OR_OUT), .XOR_OUT(XOR_OUT),
        .NAND_OUT(NAND_OUT), .NOR_OUT(NOR_OUT), .XNOR_OUT(XNOR_OUT));

    initial begin
        $monitor("Time=%0t | A=%b B=%b | AND=%b OR=%b XOR=%b NAND=%b NOR=%b XNOR=%b",
                 $time, A, B, AND_OUT, OR_OUT, XOR_OUT, NAND_OUT, NOR_OUT, XNOR_OUT);

        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;
        $finish;
    end
endmodule

