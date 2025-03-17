# 4-bit Ripple Carry Adder Implementation in Verilog

## Overview
The **4-bit Ripple Carry Adder (RCA)** is a combinational circuit that adds two 4-bit binary numbers (`A` and `B`) along with an input carry (`Cin`). It produces a 4-bit sum (`Sum`) and a carry-out (`Cout`).

This project implements a 4-bit Ripple Carry Adder using **behavioral modeling** in Verilog.

## How to Run
1. Copy the Verilog module and testbench into a Verilog simulator (ModelSim, QuestaSim, Vivado, etc.).
2. Compile and run the testbench.
3. Observe the results in the waveform or terminal output.

## Expected Output

| A    | B    | Cin | Sum  | Cout |
|------|------|-----|------|------|
| 0000 | 0000 |  0  | 0000 |  0   |
| 0001 | 0001 |  0  | 0010 |  0   |
| 0010 | 0011 |  0  | 0101 |  0   |
| 0101 | 0011 |  1  | 1001 |  0   |
| 1111 | 0001 |  1  | 0001 |  1   |

## Conclusion
This project provides an efficient implementation of a **4-bit Ripple Carry Adder** in Verilog. The testbench ensures correctness by verifying different input combinations.

Happy Coding! 🚀


