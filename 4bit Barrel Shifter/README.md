# 4-bit Barrel Shifter Implementation in Verilog

## Overview
A **4-bit Barrel Shifter** shifts a 4-bit binary number **left or right** by a specified number of positions **in a single cycle** using combinational logic.

### **Inputs:**
- `D[3:0]` → 4-bit input data
- `S[1:0]` → 2-bit shift amount (0 to 3 positions)
- `dir` → Shift direction (`0` = left, `1` = right)

### **Output:**
- `Y[3:0]` → Shifted output

This project implements a **4-bit Barrel Shifter** using **behavioral modeling** in Verilog.

## Verilog Module

### **Behavioral Modeling**
```verilog
module barrel_shifter_4bit (
    input [3:0] D,   // 4-bit input data
    input [1:0] S,   // 2-bit shift amount (0 to 3)
    input dir,       // Shift direction (0 = left, 1 = right)
    output reg [3:0] Y // Shifted output
);
    always @(*) begin
        if (dir == 0) // Left Shift
            Y = D << S;
        else          // Right Shift
            Y = D >> S;
    end
endmodule
```

## Testbench
A testbench `barrel_shifter_4bit_tb` is provided to verify the module. It applies various test cases and displays the outputs.

```verilog
`timescale 1ns / 1ps
module barrel_shifter_4bit_tb;
    reg [3:0] D;
    reg [1:0] S;
    reg dir;
    wire [3:0] Y;

    // Instantiate the 4-bit Barrel Shifter
    barrel_shifter_4bit uut (
        .D(D), .S(S), .dir(dir), .Y(Y)
    );

    initial begin
        $monitor("Time=%0t | D=%b S=%b dir=%b | Y=%b",
                 $time, D, S, dir, Y);

        // Apply test cases
        D = 4'b1101; S = 2'b00; dir = 0; #10; // No shift
        D = 4'b1101; S = 2'b01; dir = 0; #10; // Left shift by 1
        D = 4'b1101; S = 2'b10; dir = 0; #10; // Left shift by 2
        D = 4'b1101; S = 2'b11; dir = 0; #10; // Left shift by 3
        D = 4'b1101; S = 2'b01; dir = 1; #10; // Right shift by 1
        D = 4'b1101; S = 2'b10; dir = 1; #10; // Right shift by 2
        D = 4'b1101; S = 2'b11; dir = 1; #10; // Right shift by 3

        $finish;
    end
endmodule
```

## How to Run
1. Copy the Verilog module and testbench into a Verilog simulator (ModelSim, QuestaSim, Vivado, etc.).
2. Compile and run the testbench.
3. Observe the results in the waveform or terminal output.

## Expected Output

| Time | Input `D` | Shift Amount `S` | Direction `dir` | Output `Y` |
|------|----------|------------------|----------------|------------|
| 0    | `1101`   | `00` (No shift)  | `0` (Left)    | `1101`     |
| 10   | `1101`   | `01` (Shift 1)   | `0` (Left)    | `1010`     |
| 20   | `1101`   | `10` (Shift 2)   | `0` (Left)    | `0100`     |
| 30   | `1101`   | `11` (Shift 3)   | `0` (Left)    | `1000`     |
| 40   | `1101`   | `01` (Shift 1)   | `1` (Right)   | `0110`     |
| 50   | `1101`   | `10` (Shift 2)   | `1` (Right)   | `0011`     |
| 60   | `1101`   | `11` (Shift 3)   | `1` (Right)   | `0001`     |

## Conclusion
This project provides an efficient implementation of a **4-bit Barrel Shifter** in Verilog. The testbench ensures correctness by verifying different shift operations.

Happy Coding! 🚀


