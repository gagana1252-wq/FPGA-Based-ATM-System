# FPGA Based ATM System using Verilog

**Mini Project – FPGA Based System Design Using Verilog (BEC613D)**  
Department of Electronics and Communication Engineering  
SJB Institute of Technology  
Academic Year: 2024–2025  

---

## Team Members
- Akshaya Rani R – 1JB22EC006  
- Deekshith M – 1JB22EC027  
- Deepika M – 1JB22EC029  
- Gagana M – 1JB22EC039  

---

## Project Overview
This project demonstrates the design and simulation of a basic **Automated Teller Machine (ATM) system** using **Verilog Hardware Description Language (HDL)**.  
The system performs essential banking operations such as **PIN verification, balance checking, deposit transactions, and withdrawal transactions**.

The design is simulated using a **Verilog testbench** to verify system functionality under different conditions such as correct PIN entry, incorrect PIN entry, deposit operations, withdrawal operations, and insufficient balance scenarios.

The system can also be implemented on an **FPGA board**, where user inputs can be provided through switches or push buttons, and outputs can be displayed using LEDs or seven-segment displays.

---

## Objectives
- To design a simplified ATM system using Verilog HDL
- To simulate ATM operations using a Verilog testbench
- To understand digital system design using sequential logic
- To implement and verify the design on an FPGA platform
- To demonstrate secure transaction processing using hardware logic

---

## System Architecture

The ATM system consists of the following functional modules:

### 1. Card Detection Module
Detects when a card is inserted and initiates the authentication process.

### 2. PIN Verification Module
Compares the entered PIN with the stored PIN and allows access if the PIN is correct.

### 3. Transaction Processing Module
Handles deposit and withdrawal operations based on user input.

### 4. Balance Management Module
Maintains and updates the account balance after successful transactions.

### 5. Output Interface
Displays transaction status and updated balance using output indicators.

---

## Features
- Card detection mechanism  
- Secure PIN verification  
- Deposit functionality  
- Withdrawal functionality  
- Balance update and management  
- Transaction validation  
- Simulation using Verilog testbench  
- FPGA compatible hardware design  

---

## Tools and Technologies Used
- **Programming Language:** Verilog HDL  
- **Simulation Tool:** Xilinx ISE / Vivado Simulator  
- **Hardware Platform:** FPGA Development Board  
- **Design Methodology:** Digital System Design using HDL  

---

## Simulation and Testing

A **testbench module** was created to simulate different ATM operations.

### Test Cases Implemented
1. Card insertion and correct PIN verification  
2. Deposit transaction  
3. Withdrawal transaction  
4. Incorrect PIN entry attempt  
5. Withdrawal with insufficient balance  
6. Additional deposit transaction  

These tests ensure that the ATM system behaves correctly in both normal and exceptional situations.

---

## Skills Acquired
- Verilog HDL programming  
- FPGA based digital system design  
- Testbench development for simulation  
- Hardware debugging and verification  
- Sequential logic and digital circuit design  
- Embedded system development  

---

## Applications
The concepts implemented in this project can be applied in:

- Automated Teller Machines (ATM)
- Banking transaction systems
- Secure embedded financial systems
- FPGA based embedded applications
- Digital control systems

---

## Project Structure
FPGA-ATM-System
│
├── README.md
│
├── src
│   └── atm_system.v
│
├── testbench
│   └── atm_system_tb.v
│
├── simulation
│   └── waveform_results.png
│
├── diagrams
│   └── block_diagram.png
│
└── report
    └── FPGA_ATM_Project_Report.pdf

---

## Future Enhancements
The project can be extended by implementing:

- Multi-user account support
- Encrypted PIN authentication
- Transaction history storage
- Graphical user interface
- Network-connected banking system
- Biometric authentication

---

## Conclusion
The FPGA based ATM system demonstrates how **Verilog HDL can be used to design real-world digital systems**.  
The project successfully simulates ATM operations such as PIN verification, balance management, deposit, and withdrawal.  
It provides practical experience in **digital design, hardware simulation, and FPGA implementation**, forming a strong foundation for advanced embedded system development.

---

## References
- IEEE Standard for Verilog HDL (IEEE Std 1364)
- Xilinx FPGA Documentation
- *Digital Design and Computer Architecture* – David Harris & Sarah Harris
- *FPGA Prototyping by Verilog Examples* – Pong P. Chu
- Online tutorials and FPGA learning resources
