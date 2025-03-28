# 4-bit Parity Checker Implementation in Verilog

## Overview
A **Parity Checker** is used to verify the correctness of transmitted data by checking the parity bit.
- **Even Parity:** If the total number of `1`s (including the parity bit) is even → **Valid (`1`)**
- **Odd Parity:** If the total number of `1`s (including the parity bit) is odd → **Valid (`1`)**

This project implements a **4-bit Parity Checker** using **behavioral modeling** in Verilog.

## How to Run
1. Copy the Verilog module and testbench into a Verilog simulator (ModelSim, QuestaSim, Vivado, etc.).
2. Compile and run the testbench.
3. Observe the results in the waveform or terminal output.

## Expected Output

| D    | Parity | Even Valid | Odd Valid |
|------|--------|-----------|-----------|
| 0000 |   1    |     1     |     0     |
| 0001 |   0    |     0     |     1     |
| 0011 |   1    |     1     |     0     |
| 0101 |   1    |     1     |     0     |
| 0111 |   0    |     0     |     1     |
| 1111 |   1    |     1     |     0     |
| 1100 |   0    |     0     |     1     |

## Conclusion
This project provides an efficient implementation of a **4-bit Parity Checker** in Verilog. The testbench ensures correctness by verifying different input combinations.

Happy Coding! 🚀


