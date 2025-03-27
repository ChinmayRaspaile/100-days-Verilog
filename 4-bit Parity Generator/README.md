# 4-bit Parity Generator Implementation in Verilog

## Overview
A **Parity Generator** is used for **error detection** in data transmission. It generates a parity bit based on a 4-bit input (`D[3:0]`).
- **Even Parity**: Ensures the total number of `1`s (including parity) is **even**.
- **Odd Parity**: Ensures the total number of `1`s (including parity) is **odd**.

This project implements a **4-bit Parity Generator** using **behavioral modeling** in Verilog.

## How to Run
1. Copy the Verilog module and testbench into a Verilog simulator (ModelSim, QuestaSim, Vivado, etc.).
2. Compile and run the testbench.
3. Observe the results in the waveform or terminal output.

## Expected Output

| D    | Even Parity | Odd Parity |
|------|------------|------------|
| 0000 |     1      |     0      |
| 0001 |     0      |     1      |
| 0011 |     1      |     0      |
| 0101 |     1      |     0      |
| 0111 |     0      |     1      |
| 1111 |     1      |     0      |

## Conclusion
This project provides an efficient implementation of a **4-bit Parity Generator** in Verilog. The testbench ensures correctness by verifying different input combinations.

Happy Coding! 🚀


