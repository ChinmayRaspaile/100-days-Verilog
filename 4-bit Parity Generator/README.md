# 4-bit Parity Generator Implementation in Verilog

## Overview
A **Parity Generator** is used for **error detection** in data transmission. It generates a parity bit based on a 4-bit input (`D[3:0]`).
- **Even Parity**: Ensures the total number of `1`s (including parity) is **even**.
- **Odd Parity**: Ensures the total number of `1`s (including parity) is **odd**.

This project implements a **4-bit Parity Generator** using **behavioral modeling** in Verilog.

## Verilog Module

### **Behavioral Modeling**
```verilog
module parity_generator_4bit (
    input [3:0] D,  // 4-bit input data
    output reg even_parity, odd_parity
);
    always @(*) begin
        even_parity = ~(D[0] ^ D[1] ^ D[2] ^ D[3]); // Even parity
        odd_parity = (D[0] ^ D[1] ^ D[2] ^ D[3]);   // Odd parity
    end
endmodule
```

## Testbench
A testbench `parity_generator_4bit_tb` is provided to verify the module. It applies various test cases and displays the outputs.

```verilog
`timescale 1ns / 1ps
module parity_generator_4bit_tb;
    reg [3:0] D;
    wire even_parity, odd_parity;

    // Instantiate the 4-bit Parity Generator
    parity_generator_4bit uut (
        .D(D), .even_parity(even_parity), .odd_parity(odd_parity)
    );

    initial begin
        $monitor("Time=%0t | D=%b | Even Parity=%b | Odd Parity=%b",
                 $time, D, even_parity, odd_parity);

        // Apply test cases
        D = 4'b0000; #10;
        D = 4'b0001; #10;
        D = 4'b0011; #10;
        D = 4'b0101; #10;
        D = 4'b0111; #10;
        D = 4'b1111; #10;

        $finish;
    end
endmodule
```

## How to Run
1. Copy the Verilog module and testbench into a Verilog simulator (ModelSim, QuestaSim, Vivado, etc.).
2. Compile and run the testbench.
3. Observe the results in the waveform or terminal output.

## Expected Output

| D    | Even Parity | Odd Parity |
|------|------------|------------|
| 0000 |     1      |     0      |
| 0001 |     0      |     1      |
| 0011 |     1      |     0      |
| 0101 |     1      |     0      |
| 0111 |     0      |     1      |
| 1111 |     1      |     0      |

## Conclusion
This project provides an efficient implementation of a **4-bit Parity Generator** in Verilog. The testbench ensures correctness by verifying different input combinations.

Happy Coding! 🚀


