# Priority Encoder with Enable Implementation in Verilog

## Overview
A **Priority Encoder** is a combinational circuit that encodes the highest-priority active input into a binary code. When multiple inputs are active, the encoder gives priority to the highest-order input. This implementation also includes an **Enable (EN)** input to control whether the encoder is active.

This project implements a **4-to-2 Priority Encoder with Enable** using **behavioral modeling** in Verilog.

## Verilog Module

### Behavioral Modeling
```verilog
module priority_encoder_with_enable (
    input [3:0] D,       // 4-bit input
    input EN,            // Enable signal
    output reg [1:0] Y,  // 2-bit output
    output reg Valid     // Output Valid signal
);
    always @(*) begin
        if (!EN) begin
            Y = 2'b00;
            Valid = 0;
        end else begin
            casex (D)
                4'b1xxx: begin Y = 2'b11; Valid = 1; end
                4'b01xx: begin Y = 2'b10; Valid = 1; end
                4'b001x: begin Y = 2'b01; Valid = 1; end
                4'b0001: begin Y = 2'b00; Valid = 1; end
                default: begin Y = 2'b00; Valid = 0; end
            endcase
        end
    end
endmodule
```

## Testbench
A testbench `priority_encoder_with_enable_tb` is provided to verify the module.

```verilog
`timescale 1ns / 1ps
module priority_encoder_with_enable_tb;
    reg [3:0] D;
    reg EN;
    wire [1:0] Y;
    wire Valid;

    // Instantiate the encoder
    priority_encoder_with_enable uut (
        .D(D), .EN(EN), .Y(Y), .Valid(Valid)
    );

    initial begin
        $monitor("Time=%0t | EN=%b | D=%b | Y=%b | Valid=%b", $time, EN, D, Y, Valid);

        EN = 0; D = 4'b0001; #10;
        EN = 1; D = 4'b0000; #10;
        D = 4'b0001; #10;
        D = 4'b0010; #10;
        D = 4'b0100; #10;
        D = 4'b1000; #10;
        D = 4'b1010; #10;
        D = 4'b0111; #10;

        $finish;
    end
endmodule
```

## How to Run
1. Copy the Verilog module and testbench into a simulator (ModelSim, Vivado, etc.).
2. Compile and run the testbench.
3. Observe outputs in terminal or waveform.

## Expected Output
| EN | D     | Y   | Valid |
|----|-------|-----|--------|
|  0 | xxxx  | 00  |   0    |
|  1 | 0000  | 00  |   0    |
|  1 | 0001  | 00  |   1    |
|  1 | 0010  | 01  |   1    |
|  1 | 0100  | 10  |   1    |
|  1 | 1000  | 11  |   1    |
|  1 | 1010  | 11  |   1    |
|  1 | 0111  | 10  |   1    |

## Conclusion
This project demonstrates a **4-to-2 Priority Encoder with Enable** in Verilog using behavioral modeling. The encoder ensures that higher-order bits have precedence when multiple inputs are active.

Happy Coding! 🚀


