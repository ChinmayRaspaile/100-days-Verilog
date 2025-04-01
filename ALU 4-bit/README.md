# 4-bit ALU (Arithmetic Logic Unit) Implementation in Verilog

## Overview
A **4-bit ALU (Arithmetic Logic Unit)** performs basic arithmetic and logical operations based on a **control signal (`Op` input)**. This implementation supports **addition, subtraction, AND, and OR** operations.

## How to Run
1. Copy the Verilog module and testbench into a Verilog simulator (ModelSim, QuestaSim, Vivado, etc.).
2. Compile and run the testbench.
3. Observe the results in the waveform or terminal output.

## Expected Output

| Op  | Operation | Output (Y) |
|-----|-----------|-----------|
| 00  | A + B     | Sum       |
| 01  | A - B     | Difference |
| 10  | A & B     | Bitwise AND |
| 11  | A | B     | Bitwise OR |

## Conclusion
This project provides an efficient implementation of a **4-bit ALU** in Verilog, handling basic arithmetic and logic operations. The testbench ensures correctness by verifying different input combinations.

Happy Coding! 🚀

