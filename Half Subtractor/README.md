# Half Subtractor Implementation in Verilog

## Overview
The Half Subtractor is a combinational circuit that subtracts two single-bit binary numbers (`A` and `B`) and produces:
- **Difference (D) = A ⊕ B**
- **Borrow (B_out) = A'B**

This project implements a Half Subtractor using Behavioral modeling in Verilog.

## How to Run
1. Copy the Verilog module and testbench into a Verilog simulator (ModelSim, QuestaSim, Vivado, etc.).
2. Compile and run the testbench.
3. Observe the results in the waveform or terminal output.

## Expected Output

| A | B | Difference (D) | Borrow (B_out) |
|---|---|--------------|---------------|
| 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 1 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 0 |

## Conclusion
This project provides an efficient implementation of a Half Subtractor in Verilog. The testbench ensures correctness by verifying all input combinations.

Happy Coding! 🚀


