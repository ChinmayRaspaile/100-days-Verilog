# 4-bit Comparator Implementation in Verilog

## Overview
A **4-bit Comparator** is a combinational circuit that compares two 4-bit binary numbers (`A` and `B`) and produces three outputs:
- **G (Greater) = 1** if A > B
- **L (Lesser) = 1** if A < B
- **E (Equal) = 1** if A = B

This project implements a 4-bit Comparator using **behavioral modeling** in Verilog.

## How to Run
1. Copy the Verilog module and testbench into a Verilog simulator (ModelSim, QuestaSim, Vivado, etc.).
2. Compile and run the testbench.
3. Observe the results in the waveform or terminal output.

## Expected Output

| A    | B    | Greater (G) | Lesser (L) | Equal (E) |
|------|------|------------|------------|-----------|
| 0000 | 0000 |     0      |     0      |     1     |
| 0010 | 0001 |     1      |     0      |     0     |
| 0100 | 0110 |     0      |     1      |     0     |
| 1010 | 1010 |     0      |     0      |     1     |
| 1111 | 0111 |     1      |     0      |     0     |
| 1001 | 1100 |     0      |     1      |     0     |

## Conclusion
This project provides an efficient implementation of a **4-bit Comparator** in Verilog. The testbench ensures correctness by verifying different input combinations.

Happy Coding! 🚀


