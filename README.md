# IEEE 754 Single Precision Floating Point Unit (ALU)

## About
This project implements a Sequential Finite State Machine (FSM) based Floating Point Unit (FPU) targeting the IEEE 754 Single Precision standard (32-bit). Unlike pipelined architectures that optimize for throughput, this design prioritizes resource efficiency and control simplicity. It was synthesized and implemented on a Xilinx Zynq-7000 FPGA, utilizing less than 9% of the available chip resources to leave ample room for soft-core processors or other peripherals.

## Key Features
* Adheres to the IEEE 754-2008 standard for 32-bit single-precision floating-point arithmetic.
* Supports a wide dynamic range of approximately $10^{-38}$ to $10^{38}$.
* Utilizes a centralized control unit to dispatch operations to specialized arithmetic sub-modules.
* Ensures correct handling of floating-point exceptions, including Overflow, Underflow, and Division by Zero.
* Explicitly manages special standard cases: Zero, Infinity, NaN (Not a Number), and Denormalized Numbers.
* Implements the IEEE 754 Round to Nearest, Ties to Even rounding mode.

## System Architecture
The numerical value of a stored floating-point number in this architecture is calculated as $V = (-1)^S \times (1.M) \times 2^{E-127}$. The system is broken down into the following specialized modules:

* **Clock Divider (`clkdiv.v`)**: Utilizes a dual-clock architecture where the primary clock operates at 125 MHz, while the arithmetic core runs on a derived clock at 1.25 MHz to achieve timing closure.
* **Floating Point Multiplier (`fpMul.v`)**: Implements a Sequential Shift-and-Add Algorithm, calculating the 48-bit product over 24 clock cycles to save DSP resources.
* **Floating Point Divider (`divider.v`)**: Acts as the most computationally intensive module, implementing a Restoring Division Algorithm (Digit Recurrence) that calculates the quotient over 75 cycles.
* **Exponent ALU (`exponentAlu.v`)**: Handles exponent comparison, mantissa alignment via barrel shifting, and the core addition/subtraction operations using 2's complement logic.
* **Normalizer (`normalizer.v`)**: Employs a priority encoder to locate the leading '1' and left-shifts the mantissa for proper IEEE 754 alignment before rounding.

## Implementation & Resource Utilization
The design was synthesized and successfully implemented on a Xilinx Zynq-7000 (XC7Z010-1CLG400C) FPGA. Post-implementation timing analysis confirms the system operates reliably with a positive Worst Negative Slack (WNS).

| Resource | Used | Available | Utilization % |
| :--- | :--- | :--- | :--- |
| **Slice LUTs** | 1530 | 17600 | 8.69% |
| **Slice Registers** | 958 | 35200 | 2.72% |
| **Bonded IOB** | 8 | 100 | 8.00% |
| **BUFG Ctrl** | 4 | 32 | 12.50% |

*Note: With less than 9% of the FPGA resources occupied, this FPU leaves ample room for integrating a soft-core processor or other peripherals on the same chip.*

## Academic Context
This project was developed and submitted for partial fulfillment of the EN3021 Digital System Design module at the Department of Electronic & Telecommunication Engineering, University of Moratuwa, Sri Lanka.
