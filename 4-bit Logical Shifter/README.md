# 4-bit Logical Shift Unit Implementation in Verilog

## Overview
A **4-bit Logical Shift Unit** is a combinational circuit that performs **left and right logical shifts** on a 4-bit input based on a control signal.

- **Logical Left Shift (LLS)**: Shifts bits left, inserting `0` at the LSB.
- **Logical Right Shift (LRS)**: Shifts bits right, inserting `0` at the MSB.
- This project implements a 4-bit Logical Shift Unit using **behavioral modeling** in Verilog.

## Verilog Module

### **Behavioral Modeling**
```verilog
module logical_shift_unit (
    input [3:0] A,    // 4-bit input
    input shift_dir,  // Shift direction: 0 for left, 1 for right
    output reg [3:0] Y // 4-bit shifted output
);
    always @(*) begin
        if (shift_dir)
            Y = A >> 1; // Logical Right Shift
        else
            Y = A << 1; // Logical Left Shift
    end
endmodule
```

## Testbench
A testbench `logical_shift_unit_tb` is provided to verify the module. It applies test cases and displays outputs.

```verilog
`timescale 1ns / 1ps
module logical_shift_unit_tb;
    reg [3:0] A;
    reg shift_dir;
    wire [3:0] Y;

    // Instantiate the Logical Shift Unit
    logical_shift_unit uut (
        .A(A), .shift_dir(shift_dir), .Y(Y)
    );

    initial begin
        $monitor("Time=%0t | A=%b | shift_dir=%b | Y=%b", $time, A, shift_dir, Y);
        
        // Apply test cases
        A = 4'b1101; shift_dir = 0; #10; // Left Shift
        A = 4'b1101; shift_dir = 1; #10; // Right Shift
        A = 4'b0011; shift_dir = 0; #10; // Left Shift
        A = 4'b0011; shift_dir = 1; #10; // Right Shift

        $finish;
    end
endmodule
```

## How to Run
1. Copy the Verilog module and testbench into a Verilog simulator (ModelSim, QuestaSim, Vivado, etc.).
2. Compile and run the testbench.
3. Observe the results in the waveform or terminal output.

## Expected Output

| A    | Shift Direction | Output (Y) |
|------|----------------|------------|
| 1101 | Left (0)       | 1010       |
| 1101 | Right (1)      | 0110       |
| 0011 | Left (0)       | 0110       |
| 0011 | Right (1)      | 0001       |

## Conclusion
This project provides an efficient implementation of a **4-bit Logical Shift Unit** in Verilog. The testbench ensures correctness by verifying different input combinations.

Happy Coding! 🚀


