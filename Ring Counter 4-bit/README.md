4-bit Ring Counter Implementation in Verilog

Overview

A **4-bit Ring Counter** is a type of counter composed of D flip-flops connected in a ring. It circulates a single '1' (or '0') through a 4-bit register.

Only one flip-flop is set at a time, making it ideal for sequential control applications.

This project implements a 4-bit Ring Counter using behavioral modeling in Verilog.

How to Run

1. Copy the Verilog module and testbench into a Verilog simulator (ModelSim, QuestaSim, Vivado, etc.).
2. Compile and run the testbench.
3. Observe the results in the waveform or terminal output.

Expected Output Sequence

| Clock Cycle | Q Output |
|-------------|----------|
| Initial     | 0001     |
| 1st         | 0010     |
| 2nd         | 0100     |
| 3rd         | 1000     |
| 4th         | 0001     |
| ...         | ...      |

Conclusion

This project demonstrates a simple yet powerful sequential circuit—the 4-bit Ring Counter. The behavior is easily verifiable with simulation tools.

Happy Coding! 🚀


