# 4-bit Magnitude Comparator Implementation in Verilog

## Overview
A **4-bit Magnitude Comparator** compares two 4-bit binary numbers (`A` and `B`) and produces three outputs:
- **G (Greater) = 1** if A > B
- **L (Lesser) = 1** if A < B
- **E (Equal) = 1** if A = B

This project implements a **4-bit Magnitude Comparator** using **behavioral modeling** in Verilog.

## Verilog Module

### **Behavioral Modeling**
```verilog
module comparator_4bit (
    input [3:0] A, B,
    output reg G, L, E
);
    always @(*) begin
        if (A > B) begin
            G = 1;
            L = 0;
            E = 0;
        end
        else if (A < B) begin
            G = 0;
            L = 1;
            E = 0;
        end
        else begin
            G = 0;
            L = 0;
            E = 1;
        end
    end
endmodule
```

## Testbench
A testbench `comparator_4bit_tb` is provided to verify the module. It applies various test cases and displays the outputs.

```verilog
`timescale 1ns / 1ps
module comparator_4bit_tb;
    reg [3:0] A, B;
    wire G, L, E;

    // Instantiate the 4-bit Comparator
    comparator_4bit uut (
        .A(A), .B(B), .G(G), .L(L), .E(E)
    );

    initial begin
        $monitor("Time=%0t | A=%b B=%b | Greater=%b Lesser=%b Equal=%b",
                 $time, A, B, G, L, E);

        // Apply test cases
        A = 4'b0000; B = 4'b0000; #10; // A = B
        A = 4'b0010; B = 4'b0001; #10; // A > B
        A = 4'b0100; B = 4'b0110; #10; // A < B
        A = 4'b1010; B = 4'b1010; #10; // A = B
        A = 4'b1111; B = 4'b0111; #10; // A > B
        A = 4'b1001; B = 4'b1100; #10; // A < B

        $finish;
    end
endmodule
```

## How to Run
1. Copy the Verilog module and testbench into a Verilog simulator (ModelSim, QuestaSim, Vivado, etc.).
2. Compile and run the testbench.
3. Observe the results in the waveform or terminal output.

## Expected Output

| A    | B    | Greater (G) | Lesser (L) | Equal (E) |
|------|------|------------|------------|-----------|
| 0000 | 0000 |     0      |     0      |     1     |
| 0010 | 0001 |     1      |     0      |     0     |
| 0100 | 0110 |     0      |     1      |     0     |
| 1010 | 1010 |     0      |     0      |     1     |
| 1111 | 0111 |     1      |     0      |     0     |
| 1001 | 1100 |     0      |     1      |     0     |

## Conclusion
This project provides an efficient implementation of a **4-bit Magnitude Comparator** in Verilog. The testbench ensures correctness by verifying different input combinations.

Happy Coding! 🚀

