# 4:1 Multiplexer (MUX) Using 2:1 MUX Implementation in Verilog

## Overview
A **4:1 Multiplexer (MUX)** selects one of four input signals (`I0` to `I3`) based on a **2-bit select input (`S`)** and forwards it to the output (`Y`).

This implementation constructs a **4:1 MUX using 2:1 MUX modules** to demonstrate modular design in Verilog.

## How to Run
1. Copy the Verilog module and testbench into a Verilog simulator (ModelSim, QuestaSim, Vivado, etc.).
2. Compile and run the testbench.
3. Observe the results in the waveform or terminal output.

## Expected Output

| S   | Selected Input (I[S]) | Output (Y) |
|-----|---------------------|-----------|
| 00  | I0                  | I[0]      |
| 01  | I1                  | I[1]      |
| 10  | I2                  | I[2]      |
| 11  | I3                  | I[3]      |

## Conclusion
This project provides an efficient implementation of a **4:1 Multiplexer using 2:1 MUX** modules in Verilog. The testbench ensures correctness by verifying different input combinations.

Happy Coding! 🚀


