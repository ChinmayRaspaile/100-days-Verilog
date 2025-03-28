# 4-bit Parity Checker Implementation in Verilog

## Overview
A **Parity Checker** is used to verify the correctness of transmitted data by checking the parity bit.
- **Even Parity:** If the total number of `1`s (including the parity bit) is even → **Valid (`1`)**
- **Odd Parity:** If the total number of `1`s (including the parity bit) is odd → **Valid (`1`)**

This project implements a **4-bit Parity Checker** using **behavioral modeling** in Verilog.

## Verilog Module

### **Behavioral Modeling**
```verilog
module parity_checker_4bit (
    input [3:0] D,  // 4-bit input data
    input parity,   // Received parity bit
    output reg even_valid, odd_valid
);
    always @(*) begin
        even_valid = ~(^D ^ parity); // Even parity check
        odd_valid = (^D ^ parity);   // Odd parity check
    end
endmodule
```

## Testbench
A testbench `parity_checker_4bit_tb` is provided to verify the module. It applies various test cases and displays the outputs.

```verilog
`timescale 1ns / 1ps
module parity_checker_4bit_tb;
    reg [3:0] D;
    reg parity;
    wire even_valid, odd_valid;

    // Instantiate the 4-bit Parity Checker
    parity_checker_4bit uut (
        .D(D), .parity(parity), .even_valid(even_valid), .odd_valid(odd_valid)
    );

    initial begin
        $monitor("Time=%0t | D=%b | Parity=%b | Even Valid=%b | Odd Valid=%b",
                 $time, D, parity, even_valid, odd_valid);

        // Apply test cases
        D = 4'b0000; parity = 1; #10; // Even parity correct
        D = 4'b0001; parity = 0; #10; // Odd parity correct
        D = 4'b0011; parity = 1; #10; // Even parity correct
        D = 4'b0101; parity = 1; #10; // Even parity correct
        D = 4'b0111; parity = 0; #10; // Odd parity correct
        D = 4'b1111; parity = 1; #10; // Even parity correct
        D = 4'b1100; parity = 0; #10; // Odd parity correct

        $finish;
    end
endmodule
```

## How to Run
1. Copy the Verilog module and testbench into a Verilog simulator (ModelSim, QuestaSim, Vivado, etc.).
2. Compile and run the testbench.
3. Observe the results in the waveform or terminal output.

## Expected Output

| D    | Parity | Even Valid | Odd Valid |
|------|--------|-----------|-----------|
| 0000 |   1    |     1     |     0     |
| 0001 |   0    |     0     |     1     |
| 0011 |   1    |     1     |     0     |
| 0101 |   1    |     1     |     0     |
| 0111 |   0    |     0     |     1     |
| 1111 |   1    |     1     |     0     |
| 1100 |   0    |     0     |     1     |

## Conclusion
This project provides an efficient implementation of a **4-bit Parity Checker** in Verilog. The testbench ensures correctness by verifying different input combinations.

Happy Coding! 🚀


