# Full Adder Implementation in Verilog

## Overview
The Full Adder is a combinational circuit that adds three single-bit binary numbers (`A`, `B`, and `Cin`) and produces:
- **Sum (S) = A ⊕ B ⊕ Cin**
- **Carry (Cout) = (A · B) + (Cin · (A ⊕ B))**

This project implements a Full Adder using behavioral modeling in Verilog.

## How to Run
1. Copy the Verilog module and testbench into a Verilog simulator (ModelSim, QuestaSim, Vivado, etc.).
2. Compile and run the testbench.
3. Observe the results in the waveform or terminal output.

## Expected Output

| A | B | Cin | Sum (S) | Carry (Cout) |
|---|---|----|--------|-------------|
| 0 | 0 |  0 | 0      | 0           |
| 0 | 0 |  1 | 1      | 0           |
| 0 | 1 |  0 | 1      | 0           |
| 0 | 1 |  1 | 0      | 1           |
| 1 | 0 |  0 | 1      | 0           |
| 1 | 0 |  1 | 0      | 1           |
| 1 | 1 |  0 | 0      | 1           |
| 1 | 1 |  1 | 1      | 1           |

## Conclusion
This project provides an efficient implementation of a Full Adder in Verilog. The testbench ensures correctness by verifying all input combinations.

Happy Coding! 🚀


