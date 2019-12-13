`timescale 1ns / 1ps

module Cache_TB();
    logic en;
    logic clk = 1'b0;
    logic [31:0] addr;
    logic [7:0]  data;

    always #1 clk <= ~clk;
     
    Cache cache(.en_i(en), .clk_i(clk), .addr_i(addr), .data_o(data));
    
    initial begin
	en = 1'b1;
	addr = 32'b0;
	#2 addr = 32'b100000000;
	#2 addr = 32'b1000000000;
	#2 addr = 32'b1100000000;
	#2 addr = 32'b10000000000;
	#2 addr = 32'b10100000000;
	#2 addr = 32'b11000000000;
    end    
endmodule // Cache_TB
