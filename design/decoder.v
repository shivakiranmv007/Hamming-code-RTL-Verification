`timescale 1ns/1ps
module ham_decoder(data,enc_ham_data,pos_error,
                   error);
  input [6:0]enc_ham_data;
  output [3:0] data;
  output [2:0]pos_error;
  output error; 
  reg [6:0] enc_ham_data_reg;
  wire [6:0] enc_ham_data_reg_new;
        
  assign c1=enc_ham_data[0] ^ enc_ham_data[2] ^
    enc_ham_data[4] ^ enc_ham_data[6];
  assign c2=enc_ham_data[1] ^ enc_ham_data[2] ^
    enc_ham_data[5] ^ enc_ham_data[6];
  assign c3=enc_ham_data[3] ^ enc_ham_data[4] ^ 
    enc_ham_data[5] ^ enc_ham_data[6];
  
  assign pos_error={c3,c2,c1};
  assign error = c3 |c2 | c1;
  
  always@(enc_ham_data)
    begin
      enc_ham_data_reg = enc_ham_data;
      
    end
  reg [7:0] cout;
  
  always @(c1,c2,c3)
    begin
      case ({c3,c2,c1})
		3'b000: cout =8'b00000001;
		3'b001: cout =8'b00000010;
        3'b010: cout =8'b00000100;
		3'b011: cout =8'b00001000;
        3'b100: cout =8'b00010000;
		3'b101: cout =8'b00100000;
        3'b110: cout =8'b01000000;
		3'b111: cout =8'b10000000;
        default:cout =8'b0;
      endcase
      end
  assign enc_ham_data_reg_new = enc_ham_data_reg ^ cout[7:1];
  
  assign data[0]=enc_ham_data_reg_new[2];
  assign data[1]=enc_ham_data_reg_new[4];
  assign data[2]=enc_ham_data_reg_new[5];
  assign data[3]=enc_ham_data_reg_new[6];
  
  
 endmodule
