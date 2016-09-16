`timescale 10ns /10ps

`include "fpga.v"
`include "cpu.v"
`include "componentes.v"
`include "7sdecoder.v"
`include "memprog.v"
`include "microc.v"
`include "alu.v"
`include "uc.v"

module cpu_tb;

  reg clk, reset;
  reg[7:0] e0, e1, e2, e3;
  wire[7:0] s0, s1, s2, s3;
  
  always begin
    clk = 1;
    #40;
    clk = 0;
    #40;
  end
  
  initial begin
  
    $monitor ("time=%0d, clk=%b, reset=%b", $time, clk, reset);
    $dumpfile("cpu_tb.vcd");
    $dumpvars;
    
    e0 <= 'd5;
    e1 <= 'd1;
    e2 <= 'd0;
    
    reset = 1;
    #5;
    reset = 0;
    #1000;
    
    e0 <= 'd3;
    e1 <= 'd1;
    e2 <= 'd0;
    
    #1000;
    
    e0 <= 'd3;
    e1 <= 'd1;
    e2 <= 'd0;
    
    #1000;
    
    e0 <= 'd2;
    e1 <= 'd0;
    e2 <= 'd1;
    
    #1000;
    
    e0 <= 'd2;
    e1 <= 'd0;
    e2 <= 'd1;
    
    #1000;
    
    $finish;

  end

endmodule