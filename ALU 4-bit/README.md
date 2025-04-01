# 4-bit ALU (Arithmetic Logic Unit) Implementation in Verilog

## Overview
A **4-bit ALU (Arithmetic Logic Unit)** performs basic arithmetic and logical operations based on a **control signal (`Op` input)**. This implementation supports **addition, subtraction, AND, and OR** operations.

## Verilog Module

```verilog
module alu_4bit (
    input [3:0] A, B,    // 4-bit inputs
    input [1:0] Op,      // Control signal
    output reg [3:0] Y   // 4-bit Output
);
    always @(*) begin
        case (Op)
            2'b00: Y = A + B;   // Addition
            2'b01: Y = A - B;   // Subtraction
            2'b10: Y = A & B;   // Bitwise AND
            2'b11: Y = A | B;   // Bitwise OR
            default: Y = 4'b0000;
        endcase
    end
endmodule
```

## Testbench
A testbench `alu_4bit_tb` is provided to verify the module. It applies various test cases and displays the outputs.

```verilog
`timescale 1ns / 1ps
module alu_4bit_tb;
    reg [3:0] A, B;
    reg [1:0] Op;
    wire [3:0] Y;

    // Instantiate the 4-bit ALU
    alu_4bit uut (
        .A(A), .B(B), .Op(Op), .Y(Y)
    );

    initial begin
        $monitor("Time=%0t | A=%b B=%b Op=%b | Y=%b", $time, A, B, Op, Y);
        
        // Apply test cases
        A = 4'b0101; B = 4'b0011; Op = 2'b00; #10; // Addition
        A = 4'b0101; B = 4'b0011; Op = 2'b01; #10; // Subtraction
        A = 4'b0101; B = 4'b0011; Op = 2'b10; #10; // AND
        A = 4'b0101; B = 4'b0011; Op = 2'b11; #10; // OR
        
        $finish;
    end
endmodule
```

## How to Run
1. Copy the Verilog module and testbench into a Verilog simulator (ModelSim, QuestaSim, Vivado, etc.).
2. Compile and run the testbench.
3. Observe the results in the waveform or terminal output.

## Expected Output

| Op  | Operation | Output (Y) |
|-----|-----------|-----------|
| 00  | A + B     | Sum       |
| 01  | A - B     | Difference |
| 10  | A & B     | Bitwise AND |
| 11  | A | B     | Bitwise OR |

## Conclusion
This project provides an efficient implementation of a **4-bit ALU** in Verilog, handling basic arithmetic and logic operations. The testbench ensures correctness by verifying different input combinations.

Happy Coding! 🚀

