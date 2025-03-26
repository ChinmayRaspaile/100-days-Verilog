# 2-to-4 Line Decoder Implementation in Verilog

## Overview
A **2-to-4 Decoder** is a combinational circuit that takes a **2-bit input (`S[1:0]`)** and activates one of four output lines (`Y[3:0]`).
- **Only one output is HIGH (`1`) at a time**, while all others remain LOW (`0`).
- It functions similarly to a **binary-to-one-hot converter**.

This project implements a **2-to-4 Decoder** using **behavioral modeling** in Verilog.

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

