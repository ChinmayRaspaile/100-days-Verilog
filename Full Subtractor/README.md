# Full Subtractor Implementation in Verilog

## Overview
The Full Subtractor is a combinational circuit that subtracts three single-bit binary numbers (`A`, `B`, and `Bin`) and produces:
- **Difference (D) = A ⊕ B ⊕ Bin**
- **Borrow (B_out) = A'Bin + A'B + BBin**

This project implements a Full Subtractor using Behavioral modeling in Verilog.

## How to Run
1. Copy the Verilog module and testbench into a Verilog simulator (ModelSim, QuestaSim, Vivado, etc.).
2. Compile and run the testbench.
3. Observe the results in the waveform or terminal output.

## Expected Output

| A | B | Bin | Difference (D) | Borrow (B_out) |
|---|---|----|--------------|---------------|
| 0 | 0 | 0  | 0 | 0 |
| 0 | 0 | 1  | 1 | 1 |
| 0 | 1 | 0  | 1 | 1 |
| 0 | 1 | 1  | 0 | 1 |
| 1 | 0 | 0  | 1 | 0 |
| 1 | 0 | 1  | 0 | 0 |
| 1 | 1 | 0  | 0 | 0 |
| 1 | 1 | 1  | 1 | 1 |

## Conclusion
This project provides an efficient implementation of a Full Subtractor in Verilog. The testbench ensures correctness by verifying all input combinations.

Happy Coding! 🚀


