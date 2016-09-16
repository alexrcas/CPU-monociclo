//Banco de registros de dos salidas y una entrada
module regfile(input  wire        clk, 
               input  wire        we3,           //se�al de habilitaci�n de escritura ���ROJO!!!
               input  wire [3:0]  ra1, ra2, wa3, //direcciones de regs leidos y reg a escribir
               input  wire [7:0]  wd3, 			 //dato a escribir
               output wire [7:0]  rd1, rd2);     //datos leidos

  reg [7:0] regb[0:15]; //memoria de 16 registros de 8 bits de ancho


  always @(posedge clk)
    if (we3) regb[wa3] <= wd3;	
  
  assign rd1 = (ra1 != 0) ? regb[ra1] : 8'b0;
  assign rd2 = (ra2 != 0) ? regb[ra2] : 8'b0;
endmodule


module sum(input  wire [9:0] a, b,
             output wire [9:0] y);

  assign y = a + b;
endmodule

//modulo sum/rest para salto relativo
module sumrest(input  wire [9:0] a, b,
              input wire resta,
             output wire [9:0] y);

  assign y = (resta==1) ? (a - b) : (a + b);
endmodule

//modulo complementador a dos
module ca2(input wire [8:0] a, input wire r,
                     output wire [9:0] y);
  assign y = (r==1) ? {1'b1,-a} : {1'b0,a};
endmodule

//modulo de registro para modelar el PC, cambia en cada flanco de subida de reloj o de reset
module registro #(parameter WIDTH = 8)
              (input  wire             clk, reset,
               input  wire [WIDTH-1:0] d, 
               output reg  [WIDTH-1:0] q);

  always @(posedge clk, posedge reset)
    if (reset) q <= 0;
    else       q <= d;
endmodule

module enablereg #(parameter WIDTH = 8)
              (input  wire             clk, reset,enable,
               input  wire [WIDTH-1:0] d, 
               output reg  [WIDTH-1:0] q);

  always @(posedge clk, posedge reset)
  if (reset) q <= 0;
  else
		if(enable) q <= d;
endmodule


module mux2 #(parameter WIDTH = 8)
             (input  wire [WIDTH-1:0] d0, d1, 
              input  wire             s, 
              output wire [WIDTH-1:0] y);

  assign y = s ? d1 : d0; 
endmodule


module mux4 #(parameter WIDTH = 8)
	    (input  wire [WIDTH-1:0] d0, d1, d2, d3,
	      input  wire [1:0] s, 
	      output reg [WIDTH-1:0] y);
	
	always @(*)
    begin
		case (s)
			2'b00: y = d0;
			2'b01: y = d1;
			2'b10: y = d2;
			2'b11: y = d3;
		endcase
	end	
endmodule
