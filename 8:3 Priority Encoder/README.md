# 8:3 Priority Encoder Implementation in Verilog

## Overview
An **8:3 Priority Encoder** is a combinational circuit that converts **eight input lines (`I[7:0]`)** into a **3-bit binary output (`Y[2:0]`)** based on priority.
- The highest priority input (starting from `I7`) determines the output.
- If multiple inputs are `1`, the leftmost `1` (highest index) is selected.
- If no inputs are active, the output defaults to `000`.

This project implements an **8:3 Priority Encoder** using **behavioral modeling** in Verilog.

## Verilog Module

### **Behavioral Modeling**
```verilog
module priority_encoder_8to3 (
    input [7:0] I,   // 8-bit input
    output reg [2:0] Y // 3-bit encoded output
);
    always @(*) begin
        casez (I)
            8'b1??????? : Y = 3'b111; // Highest priority (I7)
            8'b01?????? : Y = 3'b110;
            8'b001????? : Y = 3'b101;
            8'b0001???? : Y = 3'b100;
            8'b00001??? : Y = 3'b011;
            8'b000001?? : Y = 3'b010;
            8'b0000001? : Y = 3'b001;
            8'b00000001 : Y = 3'b000; // Lowest priority (I0)
            default     : Y = 3'b000; // No input active
        endcase
    end
endmodule
```

## Testbench
A testbench `priority_encoder_8to3_tb` is provided to verify the module. It applies various test cases and displays the outputs.

```verilog
`timescale 1ns / 1ps
module priority_encoder_8to3_tb;
    reg [7:0] I;
    wire [2:0] Y;

    // Instantiate the 8:3 Priority Encoder
    priority_encoder_8to3 uut (
        .I(I), .Y(Y)
    );

    initial begin
        $monitor("Time=%0t | I=%b | Y=%b",
                 $time, I, Y);

        // Apply test cases
        I = 8'b00000001; #10; // Y = 000
        I = 8'b00000100; #10; // Y = 010
        I = 8'b00010000; #10; // Y = 100
        I = 8'b01000000; #10; // Y = 110
        I = 8'b10000000; #10; // Y = 111 (Highest priority)
        I = 8'b00001110; #10; // Y = 011 (I3 is highest active)
        I = 8'b11000010; #10; // Y = 111 (I7 is highest active)

        $finish;
    end
endmodule
```

## How to Run
1. Copy the Verilog module and testbench into a Verilog simulator (ModelSim, QuestaSim, Vivado, etc.).
2. Compile and run the testbench.
3. Observe the results in the waveform or terminal output.

## Expected Output

| Time | Input `I`        | Highest Active Bit | Encoded Output `Y` |
|------|----------------|--------------------|--------------------|
| 0    | `00000001`    | `I0` (Lowest)      | `000`             |
| 10   | `00000100`    | `I2`               | `010`             |
| 20   | `00010000`    | `I4`               | `100`             |
| 30   | `01000000`    | `I6`               | `110`             |
| 40   | `10000000`    | `I7` (Highest)     | `111`             |
| 50   | `00001110`    | `I3` (Highest in group) | `011`        |
| 60   | `11000010`    | `I7` (Highest in group) | `111`        |

## Conclusion
This project provides an efficient implementation of an **8:3 Priority Encoder** in Verilog. The testbench ensures correctness by verifying different input combinations.

Happy Coding! 🚀


