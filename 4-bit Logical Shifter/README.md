# 4-bit Logical Shift Unit Implementation in Verilog

## Overview
A **4-bit Logical Shift Unit** is a combinational circuit that performs **left and right logical shifts** on a 4-bit input based on a control signal.

- **Logical Left Shift (LLS)**: Shifts bits left, inserting `0` at the LSB.
- **Logical Right Shift (LRS)**: Shifts bits right, inserting `0` at the MSB.
- This project implements a 4-bit Logical Shift Unit using **behavioral modeling** in Verilog.

## How to Run
1. Copy the Verilog module and testbench into a Verilog simulator (ModelSim, QuestaSim, Vivado, etc.).
2. Compile and run the testbench.
3. Observe the results in the waveform or terminal output.

## Expected Output

| A    | Shift Direction | Output (Y) |
|------|----------------|------------|
| 1101 | Left (0)       | 1010       |
| 1101 | Right (1)      | 0110       |
| 0011 | Left (0)       | 0110       |
| 0011 | Right (1)      | 0001       |

## Conclusion
This project provides an efficient implementation of a **4-bit Logical Shift Unit** in Verilog. The testbench ensures correctness by verifying different input combinations.

Happy Coding! 🚀


