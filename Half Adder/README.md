# Half Adder Implementation in Verilog

## Overview
The Half Adder is a combinational circuit that adds two single-bit binary numbers (`A` and `B`) and produces:
- **Sum (S) = A ⊕ B**
- **Carry (C) = A · B**

This project implements a Half Adder using behavioral modeling in Verilog.

## How to Run
1. Copy the Verilog module and testbench into a Verilog simulator (ModelSim, QuestaSim, Vivado, etc.).
2. Compile and run the testbench.
3. Observe the results in the waveform or terminal output.

## Expected Output

| A | B | Sum (S) | Carry (C) |
|---|---|--------|-----------|
| 0 | 0 |  0     | 0         |
| 0 | 1 |  1     | 0         |
| 1 | 0 |  1     | 0         |
| 1 | 1 |  0     | 1         |

## Conclusion
This project provides an efficient implementation of a Half Adder in Verilog. The testbench ensures correctness by verifying all input combinations.

Happy Coding! 🚀


