4-bit Ring Counter Implementation in Verilog

Overview

A **4-bit Ring Counter** is a type of counter composed of D flip-flops connected in a ring. It circulates a single '1' (or '0') through a 4-bit register.

Only one flip-flop is set at a time, making it ideal for sequential control applications.

This project implements a 4-bit Ring Counter using behavioral modeling in Verilog.

Verilog Module

Behavioral Modeling

```verilog
module ring_counter_4bit (
    input clk,         // Clock signal
    input reset,       // Asynchronous reset
    output reg [3:0] Q // 4-bit output
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            Q <= 4'b0001;       // Initial state
        else
            Q <= {Q[2:0], Q[3]}; // Rotate left
    end
endmodule
```

Testbench

A testbench `ring_counter_4bit_tb` is provided to verify the module. It applies a clock and reset to observe the counter sequence.

```verilog
`timescale 1ns / 1ps
module ring_counter_4bit_tb;
    reg clk;
    reg reset;
    wire [3:0] Q;

    // Instantiate the 4-bit Ring Counter
    ring_counter_4bit uut (
        .clk(clk), .reset(reset), .Q(Q)
    );

    // Generate clock
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Stimulus
    initial begin
        $monitor("Time=%0t | Reset=%b | Q=%b", $time, reset, Q);

        reset = 1; #10;
        reset = 0; #100;

        $finish;
    end
endmodule
```

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


