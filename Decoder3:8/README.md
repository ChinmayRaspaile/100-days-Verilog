# 3:8 Decoder Implementation in Verilog

## Overview
A **3:8 Decoder** is a combinational circuit that takes a **3-bit input (`S`)** and activates one of eight output lines (`Y0` to `Y7`). The selected output is set to `1`, while all others remain `0`.

This project implements a **3:8 Decoder** using **behavioral modeling** in Verilog.

## Verilog Module

## How to Run
1. Copy the Verilog module and testbench into a Verilog simulator (ModelSim, QuestaSim, Vivado, etc.).
2. Compile and run the testbench.
3. Observe the results in the waveform or terminal output.

## Expected Output

| S   | Output (Y)      |
|-----|---------------|
| 000 | 00000001      |
| 001 | 00000010      |
| 010 | 00000100      |
| 011 | 00001000      |
| 100 | 00010000      |
| 101 | 00100000      |
| 110 | 01000000      |
| 111 | 10000000      |

## Conclusion
This project provides an efficient implementation of a **3:8 Decoder** in Verilog. The testbench ensures correctness by verifying different input combinations.

Happy Coding! 🚀


