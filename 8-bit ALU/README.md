8-bit ALU with Expanded Operations
Overview
An Arithmetic Logic Unit (ALU) is a key component in digital circuits that performs arithmetic and logical operations. This 8-bit ALU supports the following operations:

Supported Operations
Op Code	Operation	Description
000	Addition	A + B
001	Subtraction	A - B
010	AND	A & B
011	OR	`A
100	XOR	A ^ B
101	NOR	`~(A
110	NAND	~(A & B)
111	XNOR	~(A ^ B)
Verilog Implementation
The ALU takes two 8-bit inputs (A, B) and a 3-bit operation selector (Op) to determine the operation.

Testbench Output Format
The testbench will produce outputs in the following format:

php-template
Copy
Edit
Time=<time> | A=<value> B=<value> Op=<code> | Result=<output> Carry=<carry>
Example Output:
ini
Copy
Edit
Time=0 | A=00001111 B=00000001 Op=000 | Result=00010000 Carry=0
How to Run
Load the alu_8bit.v module into your Verilog simulator (Vivado, ModelSim, etc.).

Run the testbench alu_8bit_tb.v.

Observe the output in the console or waveform.

Conclusion
This project demonstrates an 8-bit ALU using behavioral modeling in Verilog, implementing both arithmetic and logic operations.

Happy Coding! 🚀
