module cpu(input wire clk, reset, input wire [7:0]e0,e1,e2,e3, output wire [7:0]s0,s1,s2,s3, output wire [9:0] pc_out);

  wire s_inc, s_inm, s_entr, s_sal, we3, z;
  wire s_rel, enablebackup, s_ret;
  wire [2:0] op;
  wire [5:0] opcode;
  wire [1:0] port;
  wire w_port0, w_port1, w_port2,w_port3;
  
  microc micro1(clk, reset, w_port0, w_port1, w_port2, w_port3,
                enablebackup, s_inc, s_inm, we3, s_sal,
                s_entr, s_rel, s_ret, e0,e1,e2,e3, opcode,op,port,s0,s1,s2,s3,pc_out,z);
  
  uc uc1(clk, reset, z, opcode, s_inc, s_inm, s_entr, s_sal,
         enablebackup, s_rel, s_ret, we3, w_port0, w_port1, w_port2,
         w_port3, port, op);
   
endmodule
