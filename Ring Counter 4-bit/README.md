# 4-bit Ring Counter Implementation in Verilog

## Overview
A **4-bit Ring Counter** is a type of shift register where the output of the last flip-flop is connected to the input of the first. It circulates a single high bit (`1`) across all flip-flops in a circular fashion.

This project implements a **4-bit Ring Counter** using **behavioral modeling** in Verilog.

---

## Verilog Module

### Behavioral Modeling
```verilog
module ring_counter (
    input clk,         // Clock signal
    input reset,       // Asynchronous reset
    output reg [3:0] Q // 4-bit output
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            Q <= 4'b0001;       // Initialize with one '1' at LSB
        else
            Q <= {Q[2:0], Q[3]}; // Circular left shift
    end
endmodule
```

---

## Testbench
A testbench `ring_counter_tb` is provided to verify the module behavior.

```verilog
`timescale 1ns / 1ps
module ring_counter_tb;
    reg clk;
    reg reset;
    wire [3:0] Q;

    // Instantiate the Ring Counter
    ring_counter uut (
        .clk(clk),
        .reset(reset),
        .Q(Q)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $monitor("Time=%0t | Reset=%b | Q=%b", $time, reset, Q);

        // Apply test sequence
        reset = 1; #10;
        reset = 0; #10;

        // Run counter
        #100;
        $finish;
    end
endmodule
```

---

## How to Run
1. Copy the Verilog module and testbench into a Verilog simulator (Vivado, ModelSim, etc.).
2. Compile and simulate the testbench.
3. Observe the waveform or terminal output.

---

## Expected Output
The single '1' will rotate across the 4-bit output:

| Time     | Reset | Q     |
|----------|-------|--------|
| 0        | 1     | 0001   |
| 10000    | 0     | 0001   |
| 15000    | 0     | 0010   |
| 25000    | 0     | 0100   |
| 35000    | 0     | 1000   |
| 45000    | 0     | 0001   |
| ...      | ...   | ...    |

---

## Conclusion
This project demonstrates a **4-bit Ring Counter** using behavioral Verilog. The counter reliably cycles a single high bit across all outputs, which is verified through a clear and concise testbench.

Happy Rotating! 🔁💡

