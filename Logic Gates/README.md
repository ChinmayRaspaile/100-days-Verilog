# Logic Gates Implementation in Verilog

## Overview
This project implements all six basic logic gates (AND, OR, XOR, NAND, NOR, XNOR) using Verilog in a single module. The module takes two inputs (`A` and `B`) and computes the outputs for all gates.

## Logic Gates Implemented
1. **AND Gate**: `AND_OUT = A & B`
2. **OR Gate**: `OR_OUT = A | B`
3. **XOR Gate**: `XOR_OUT = A ^ B`
4. **NAND Gate**: `NAND_OUT = ~(A & B)`
5. **NOR Gate**: `NOR_OUT = ~(A | B)`
6. **XNOR Gate**: `XNOR_OUT = ~(A ^ B)`

## How to Run
1. Copy the Verilog module and testbench into a Verilog simulator (ModelSim, QuestaSim, Vivado, etc.).
2. Compile and run the testbench.
3. Observe the results in the waveform or terminal output.

## Expected Output
The expected truth table:

| A | B | AND | OR | XOR | NAND | NOR | XNOR |
|---|---|-----|----|-----|------|-----|------|
| 0 | 0 |  0  |  0 |  0  |   1  |  1  |   1  |
| 0 | 1 |  0  |  1 |  1  |   1  |  0  |   0  |
| 1 | 0 |  0  |  1 |  1  |   1  |  0  |   0  |
| 1 | 1 |  1  |  1 |  0  |   0  |  0  |   1  |

## Conclusion
This project provides a simple and efficient way to implement all basic logic gates in a single Verilog module. The testbench ensures correctness by verifying all input combinations.

Happy Coding! 🚀


