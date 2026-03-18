`timescale 1ns/1ps
module encoder_tb;
  reg [3:0]data;
  wire [6:0] enc_ham_data;

  ham_encoder DUT(data,enc_ham_data);
  
  initial begin
    #2 data=4'b1011;	
 #2 $display("output-enc_ham_data=%b",enc_ham_data);
    #50 $stop; 
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule
