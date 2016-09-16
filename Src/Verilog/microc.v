//Microcontrolador sin memoria de datos de un solo ciclo
module microc(input wire clk, reset, w_port0, w_port1, w_port2, w_port3, 
                         w_bk,s_inc, s_inm, we3, s_sal, 
                         s_entr, s_rel, s_ret,
			  input wire[7:0]e0,e1,e2,e3, 
			  output wire [5:0] opcode,
              input wire [2:0] op,
              output wire [1:0] port,
              output wire [7:0] s0,s1,s2,s3,
				  output wire [9:0] pc_out,
              output wire zero);

wire [9:0] muxpc_out;
wire [9:0] sumpc_out;
wire [7:0] alu_mux_in, mux_reg, alu_mux_out, puerto_mux;
wire [7:0] rd1, rd2;
wire [15:0] out_memprog;
wire z;
wire [7:0] sin0, sin1, sin2, sin3;
wire [7:0] eout0,eout1,eout2,eout3;
wire [7:0] SalidaMux2ADmux4;
wire[1:0] salmuxpuerto;
wire [9:0] smuxalupc,restorepc,retornopc_out,compsalto_out;

assign opcode = out_memprog[5:0];

//mux2 #(2) muxpuertosal(out_memprog[7:6],rd1[1:0],selpuerto,salmuxpuerto);
//assign puerto = (out_memprog[3:0]==1111) ? rd1[1:0] : out_memprog[7:6];
assign port = out_memprog[7:6];

sum sum_pc(pc_out, smuxalupc, sumpc_out); //module sum(input wire [9:0] a, b, output wire [9:0] y);


ca2 compsalto(out_memprog[14:6],out_memprog[15],compsalto_out);
mux2 #(10) mux_srel(10'b1,compsalto_out,s_rel,smuxalupc);


enablereg #(10) pcbackup(clk, reset, w_bk, sumpc_out, restorepc);
mux2 #(10) retornopc (muxpc_out,restorepc,s_ret,retornopc_out);

registro #(10) pc(clk, reset, retornopc_out, pc_out);

    
memprog memoria(clk, pc_out, out_memprog[15:0]);


mux2 #(10) mux_pc(out_memprog[15:6], sumpc_out, s_inc, muxpc_out);

 
regfile registros(clk, we3, out_memprog[7:4], out_memprog[11:8], out_memprog[15:12], mux_reg, rd1, rd2);               
     
alu alu1(rd1, rd2, op, alu_mux_in, z); 


mux2 mux_banco(alu_mux_in, out_memprog[11:4], s_inm, alu_mux_out);

//Ver si es posible corregir con habilitación de escritura
registro #(1) regzero(clk, reset, z, zero);	



mux2 muxentradaregistro(alu_mux_out, puerto_mux, s_entr, mux_reg);

mux2 muxademux(out_memprog[15:8],rd2,s_sal,SalidaMux2ADmux4);
mux4 #(8) muxentrada(e0, e1, e2, e3, out_memprog[7:6], puerto_mux);


enablereg #(8) salida0(clk, reset, w_port0, SalidaMux2ADmux4, s0);
enablereg #(8) salida1(clk, reset, w_port1, SalidaMux2ADmux4, s1);
enablereg #(8) salida2(clk, reset, w_port2, SalidaMux2ADmux4, s2);
enablereg #(8) salida3(clk, reset, w_port3, SalidaMux2ADmux4, s3);


endmodule