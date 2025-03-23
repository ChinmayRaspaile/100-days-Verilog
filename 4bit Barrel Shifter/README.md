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


