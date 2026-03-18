# Hamming-code-RTL-Verification
Design and verification of Hamming (7,4) code using Verilog including parity generation, syndrome calculation, and error correction logic.
# 🧠 Hamming Code (7,4) – RTL Design & Verification

## 📌 Description
This project implements a *Hamming (7,4) error control coding scheme* using *Verilog HDL, enabling **single-bit error detection and correction* in digital communication systems.

The design includes modular RTL blocks for *encoding, syndrome-based error detection, and error correction. The functionality is verified using **testbenches and simulation waveform analysis*.


## ⚙️ Features
- ✅ Single-bit error detection  
- ✅ Single-bit error correction  
- ✅ Parity bit generation using XOR logic  
- ✅ Syndrome calculation for error localization  
- ✅ Bit correction using XOR operation  
- ✅ Verified using simulation testbench  

---

## 🏗️ Design Modules

### 🔹 Hamming Encoder
- Converts *4-bit input data* → *7-bit Hamming code*  
- Generates parity bits using combinational XOR logic  

### 🔹 Hamming Decoder
- Computes *syndrome bits (c1, c2, c3)*  
- Detects presence and position of error  

### 🔹 Error Correction Module
- Identifies erroneous bit using syndrome  
- Corrects single-bit error  
- Outputs corrected data  



## 🧪 Testbench
- Separate testbench for each module  
- Includes *error injection scenarios*  
- Verifies:
  - Encoding correctness  
  - Error detection  
  - Error correction  



## 📊 Simulation & Waveform
- 🔧 Tools used:
  - ModelSim  
  - Cadence Xcelium  

- 📈 Waveforms demonstrate:
  - Correct encoding  
  - Syndrome-based error detection  
  - Successful error correction  



## 🛠️ Tools & Technologies
- Verilog HDL  
- ModelSim  
- Cadence Xcelium  
- EDA Playground  



## 📁 Project Structure
hamming-code-verilog/
│
├── design/
│   ├── ham_encoder.v
│   ├── ham_decoder.v
│   └── ham_decoder_correct.v
│
├── testbench/
│   ├── tb_ham_encoder.v
│   ├── tb_ham_decoder.v
│   └── tb_ham_decoder_correct.v
│
├── waveform/
│   ├── ham_encoder_waveform.png
│   ├── ham_decoder_waveform.png
│   └── ham_decoder_correct_waveform.png
│
└── README.md
