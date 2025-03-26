# 2-to-4 Line Decoder Implementation in Verilog

## Overview
A **2-to-4 Decoder** is a combinational circuit that takes a **2-bit input (`S[1:0]`)** and activates one of four output lines (`Y[3:0]`).
- **Only one output is HIGH (`1`) at a time**, while all others remain LOW (`0`).
- It functions similarly to a **binary-to-one-hot converter**.

This project implements a **2-to-4 Decoder** using **behavioral modeling** in Verilog.

## Verilog Module

### **Behavioral Modeling**
```verilog
module decoder_2to4 (
    input [1:0] S,   // 2-bit select input
    output reg [3:0] Y // 4-bit output
);
    always @(*) begin
        case (S)
            2'b00: Y = 4'b0001;
            2'b01: Y = 4'b0010;
            2'b10: Y = 4'b0100;
            2'b11: Y = 4'b1000;
            default: Y = 4'b0000;
        endcase
    end
endmodule
```

## Testbench
A testbench `decoder_2to4_tb` is provided to verify the module. It applies various test cases and displays the outputs.

```verilog
`timescale 1ns / 1ps
module decoder_2to4_tb;
    reg [1:0] S;
    wire [3:0] Y;

    // Instantiate the 2-to-4 Decoder
    decoder_2to4 uut (
        .S(S), .Y(Y)
    );

    initial begin
        $monitor("Time=%0t | S=%b | Y=%b",
                 $time, S, Y);

        // Apply test cases
        S = 2'b00; #10;
        S = 2'b01; #10;
        S = 2'b10; #10;
        S = 2'b11; #10;

        $finish;
    end
endmodule
```

## How to Run
1. Copy the Verilog module and testbench into a Verilog simulator (ModelSim, QuestaSim, Vivado, etc.).
2. Compile and run the testbench.
3. Observe the results in the waveform or terminal output.

## Expected Output

| S   | Output (Y)  |
|-----|------------|
| 00  | 0001       |
| 01  | 0010       |
| 10  | 0100       |
| 11  | 1000       |

## Conclusion
This project provides an efficient implementation of a **2-to-4 Line Decoder** in Verilog. The testbench ensures correctness by verifying different input combinations.

Happy Coding! 🚀

