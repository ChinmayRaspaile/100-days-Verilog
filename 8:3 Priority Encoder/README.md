# 8:3 Priority Encoder Implementation in Verilog

## Overview
An **8:3 Priority Encoder** is a combinational circuit that converts **eight input lines (`I[7:0]`)** into a **3-bit binary output (`Y[2:0]`)** based on priority.
- The highest priority input (starting from `I7`) determines the output.
- If multiple inputs are `1`, the leftmost `1` (highest index) is selected.
- If no inputs are active, the output defaults to `000`.

This project implements an **8:3 Priority Encoder** using **behavioral modeling** in Verilog.

## How to Run
1. Copy the Verilog module and testbench into a Verilog simulator (ModelSim, QuestaSim, Vivado, etc.).
2. Compile and run the testbench.
3. Observe the results in the waveform or terminal output.

## Expected Output

| Time | Input `I`        | Highest Active Bit | Encoded Output `Y` |
|------|----------------|--------------------|--------------------|
| 0    | `00000001`    | `I0` (Lowest)      | `000`             |
| 10   | `00000100`    | `I2`               | `010`             |
| 20   | `00010000`    | `I4`               | `100`             |
| 30   | `01000000`    | `I6`               | `110`             |
| 40   | `10000000`    | `I7` (Highest)     | `111`             |
| 50   | `00001110`    | `I3` (Highest in group) | `011`        |
| 60   | `11000010`    | `I7` (Highest in group) | `111`        |

## Conclusion
This project provides an efficient implementation of an **8:3 Priority Encoder** in Verilog. The testbench ensures correctness by verifying different input combinations.

Happy Coding! 🚀


