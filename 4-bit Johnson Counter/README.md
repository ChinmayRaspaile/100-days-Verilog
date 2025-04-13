# 4-bit Johnson Counter Implementation in Verilog

## Overview
A **4-bit Johnson Counter** is a type of shift register counter that cycles through a sequence of states by feeding the inverted output of the last flip-flop back to the input of the first.

It produces a repeating sequence of 2n unique states for an n-bit Johnson counter, making it useful in applications requiring timing control and sequence generation.

This project implements a **4-bit Johnson Counter** using behavioral modeling in Verilog.

---

## Verilog Module

### Behavioral Modeling
```verilog
module johnson_counter_4bit (
    input clk,
    input reset,
    output reg [3:0] Q
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            Q <= 4'b0000;
        else
            Q <= {~Q[0], Q[3:1]};
    end
endmodule
```

---

## Testbench
A testbench `johnson_counter_4bit_tb` is used to verify the functionality.

```verilog
`timescale 1ns / 1ps
module johnson_counter_4bit_tb;
    reg clk, reset;
    wire [3:0] Q;

    // Instantiate the counter
    johnson_counter_4bit uut (
        .clk(clk), .reset(reset), .Q(Q)
    );

    initial begin
        $monitor("Time=%0t | Reset=%b | Q=%b", $time, reset, Q);
        clk = 0;
        reset = 1; #10;
        reset = 0; #5;
        repeat(12) begin
            #10 clk = ~clk;
            #10 clk = ~clk;
        end
        $finish;
    end
endmodule
```

---

## How to Run
1. Copy the module and testbench into a Verilog simulator (Vivado, ModelSim, etc.).
2. Compile and run the testbench.
3. Observe the output waveform or console to verify the counter sequence.

---

## Expected Output
The Johnson counter cycles through 8 unique states:

```
0000
0001
0011
0111
1111
1110
1100
1000
```

---

## Conclusion
This project demonstrates the implementation of a **4-bit Johnson Counter** using behavioral modeling. The testbench confirms its proper cyclic behavior across multiple clock cycles.

Happy Coding! 🚀


