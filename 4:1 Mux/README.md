# 4:1 Multiplexer (MUX) Using 2:1 MUX Implementation in Verilog

## Overview
A **4:1 Multiplexer (MUX)** selects one of four input signals (`I0` to `I3`) based on a **2-bit select input (`S`)** and forwards it to the output (`Y`).

This implementation constructs a **4:1 MUX using 2:1 MUX modules** to demonstrate modular design in Verilog.

## Verilog Module

### **2:1 Multiplexer Module**
```verilog
module mux_2to1 (
    input A, B,  // 2 Inputs
    input S,     // Select line
    output Y     // Output
);
    assign Y = S ? B : A;
endmodule
```

### **4:1 Multiplexer Using 2:1 MUX**
```verilog
module mux_4to1 (
    input [3:0] I,   // 4-bit input (I0 to I3)
    input [1:0] S,   // 2-bit select input
    output Y         // Output
);
    wire Y0, Y1;
    
    // Instantiate two 2:1 MUX modules
    mux_2to1 mux1 (.A(I[0]), .B(I[1]), .S(S[0]), .Y(Y0));
    mux_2to1 mux2 (.A(I[2]), .B(I[3]), .S(S[0]), .Y(Y1));
    
    // Final 2:1 MUX to select between Y0 and Y1
    mux_2to1 mux3 (.A(Y0), .B(Y1), .S(S[1]), .Y(Y));
endmodule
```

## Testbench
A testbench `mux_4to1_tb` is provided to verify the module. It applies various test cases and displays the outputs.

```verilog
`timescale 1ns / 1ps
module mux_4to1_tb;
    reg [3:0] I;
    reg [1:0] S;
    wire Y;

    // Instantiate the 4:1 MUX
    mux_4to1 uut (
        .I(I), .S(S), .Y(Y)
    );

    initial begin
        $monitor("Time=%0t | I=%b S=%b | Y=%b", $time, I, S, Y);
        
        // Apply test cases
        I = 4'b1010; S = 2'b00; #10; // Select I0
        I = 4'b1010; S = 2'b01; #10; // Select I1
        I = 4'b1010; S = 2'b10; #10; // Select I2
        I = 4'b1010; S = 2'b11; #10; // Select I3
        
        $finish;
    end
endmodule
```

## How to Run
1. Copy the Verilog module and testbench into a Verilog simulator (ModelSim, QuestaSim, Vivado, etc.).
2. Compile and run the testbench.
3. Observe the results in the waveform or terminal output.

## Expected Output

| S   | Selected Input (I[S]) | Output (Y) |
|-----|---------------------|-----------|
| 00  | I0                  | I[0]      |
| 01  | I1                  | I[1]      |
| 10  | I2                  | I[2]      |
| 11  | I3                  | I[3]      |

## Conclusion
This project provides an efficient implementation of a **4:1 Multiplexer using 2:1 MUX** modules in Verilog. The testbench ensures correctness by verifying different input combinations.

Happy Coding! 🚀


