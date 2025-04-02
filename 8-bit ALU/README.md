# 8-bit ALU with Expanded Operations

## Overview
An **Arithmetic Logic Unit (ALU)** is a key component in digital circuits that performs arithmetic and logical operations. This **8-bit ALU** supports the following operations:

### **Supported Operations**
| Op Code | Operation  | Description      |
|---------|-----------|-----------------|
| `000`   | Addition  | `A + B`         |
| `001`   | Subtraction | `A - B`       |
| `010`   | AND       | `A & B`         |
| `011`   | OR        | `A | B`         |
| `100`   | XOR       | `A ^ B`         |
| `101`   | NOR       | `~(A | B)`      |
| `110`   | NAND      | `~(A & B)`      |
| `111`   | XNOR      | `~(A ^ B)`      |

## Verilog Implementation
The ALU takes two **8-bit inputs** (`A`, `B`) and a **3-bit operation selector** (`Op`) to determine the operation.

## Testbench Output Format
The testbench will produce outputs in the following format:

## How to Run
1. Load the `alu_8bit.v` module into your Verilog simulator (Vivado, ModelSim, etc.).
2. Run the testbench `alu_8bit_tb.v`.
3. Observe the output in the console or waveform.

## Conclusion
This project demonstrates an **8-bit ALU** using **behavioral modeling** in Verilog, implementing both arithmetic and logic operations.

Happy Coding! 🚀

