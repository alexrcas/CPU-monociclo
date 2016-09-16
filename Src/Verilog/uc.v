module uc(input wire clk, reset, z, input wire [5:0] opcode, 
    output reg s_inc, s_inm, s_entr, s_sal, s_bk,
               s_rel, s_ret, we3, w_port0, w_port1, w_port2, w_port3,
    input wire [1:0] port, output wire [2:0] op);

assign op = opcode[2:0];

always @(*)
  begin 
    w_port0 <= 1'b0;
    w_port1 <= 1'b0;
    w_port2 <= 1'b0;
    w_port3 <= 1'b0;
      if (reset == 1'b1)
      begin
        we3 <= 1'b0;
        s_inm <= 1'b0; 
        s_inc <= 1'b1;
        s_entr<= 1'b0;  
        s_sal <= 1'b0;
        s_rel <= 1'b0;
        s_ret <= 1'b0; 
        s_bk <= 1'b0;
      end
      
      else
      begin
        casex (opcode)
    	
    	//OPERACIÓN DE ALU
    	6'bxx0xxx:
    	  begin
            we3 <= 1'b1;
            s_inc <= 1'b1;
            s_inm <= 1'b0;
            s_entr<= 1'b0;  
            s_sal <= 1'b0;
            s_rel <= 1'b0;
            s_ret <= 1'b0; 
            s_bk <= 1'b0;
    	  end
    	  
    	//CARGAR INMEDIATO
    	6'bxx1000:
    	  begin
            we3 <= 1'b1;
            s_inc <= 1'b1;
            s_inm <= 1'b1;
            s_entr<= 1'b0; 
            s_sal <= 1'b0;
    	    s_rel <= 1'b0;
            s_ret <= 1'b0; 
            s_bk <= 1'b0;
    	  end
    	  
        //SALTO INCONDICIONAL
        6'b001001:
          begin
            we3 <= 1'b0;
            s_inc <= 1'b0;
            s_inm <= 1'b0;
            s_entr<= 1'b0;
            s_sal <= 1'b0;
    	    s_rel <= 1'b0;
            s_ret <= 1'b0; 
            s_bk <= 1'b0;
    	  end
    	  
    	//SALTO CONDICIONAL SI ZERO
    	6'b001010:
    	  begin
    	    we3 <= 1'b0;
    	    s_inm <= 1'b0;
    	    s_entr <= 1'b0;
            s_sal <= 1'b0;
            s_rel <= 1'b0;
            s_ret <= 1'b0; 
            s_bk <= 1'b0;

    	    if(z == 1'b1)
    	      s_inc <= 1'b0;
    	    else
    	      s_inc <= 1'b1;

    	  end

    	//SALTO CONDICIONAL NO ZERO
    	6'b001011:
    	  begin
            we3 <= 1'b0;
            s_inm <= 1'b0;
            s_entr <= 1'b0;
            s_sal <= 1'b0;
            s_rel <= 1'b0;
            s_ret <= 1'b0; 
            s_bk <= 1'b0;

    	    if(z != 1'b1)
    	       s_inc <= 1'b0;
    	    else
    	       s_inc <= 1'b1;
    	  end  

        //LECTURA DE PUERTO
        6'b001100:
          begin
            we3 <= 1'b1;
            s_inc <= 1'b1;
            s_inm <= 1'b0;  
            s_entr <= 1'b1;
            s_sal <= 1'b0;
            s_rel <= 1'b0;
            s_ret <= 1'b0; 
            s_bk <= 1'b0;
          end   

    	//ESCRIBIR EN PUERTO DESDE REGISTRO
    	6'b001101:
    	  begin
            we3 <= 1'b0;
            s_inc <= 1'b1;
            s_inm <= 1'b0;
            s_entr <= 1'b0;
            s_sal <= 1'b1;
            s_rel <= 1'b0;
            s_ret <= 1'b0; 
            s_bk <= 1'b0;
            case (port)
                2'b00:
                    w_port0 <= 1'b1;   
                2'b01: 
                    w_port1 <= 1'b1;
                2'b10: 
                    w_port2 <= 1'b1;
                2'b11: 
                    w_port3 <= 1'b1;
            endcase 	
    	  end	  
		  
        //ESCRIBIR EN PUERTO INMEDIATO
        6'b001110:
          begin
            we3 <= 1'b0;
            s_inc <= 1'b1;
            s_inm <= 1'b0;
            s_entr <= 1'b0;    
            s_sal <= 1'b0; 
            s_rel <= 1'b0;
            s_ret <= 1'b0; 
            s_bk <= 1'b0;
            case (port)
                2'b00:
                    w_port0 <= 1'b1;   
                2'b01: 
                    w_port1 <= 1'b1;
                2'b10: 
                    w_port2 <= 1'b1;  
                2'b11: 
                    w_port3 <= 1'b1;
            endcase 
          end

         //SALTO RELATIVO
         6'b011001:
          begin
            we3 <= 1'b0;
            s_inc <= 1'b1;
            s_inm <= 1'b0;
            s_entr <= 1'b0;    
            s_sal <= 1'b0;
            s_rel <= 1'b1;
            s_ret <= 1'b0; 
            s_bk <= 1'b0;
        end

        //SALTO A SUBRUTINA        
        6'b011010:
          begin
            we3 <= 1'b0;
            s_inc <= 1'b0;
            s_inm <= 1'b0;
            s_entr <= 1'b0;    
            s_sal <= 1'b0;
            s_rel <= 1'b0;
            s_ret <= 1'b0;
            s_bk <= 1'b1;
        end

        //RETORNO DE SUBRUTINA
        6'b011011:
          begin
            we3 <= 1'b0;
            s_inc <= 1'b0;
            s_inm <= 1'b0;
            s_entr <= 1'b0;
            s_sal <= 1'b0;
            s_rel <= 1'b0;
            s_ret <= 1'b1; 
            s_bk <= 1'b0;
        end     

    	//OPERACIÓN POR DEFECTO
    	default:
    	  begin
    	    we3 <= 1'b0;
    	    s_inm <= 1'b0;
    	    s_inc <= 1'b1;
    	    s_entr<= 1'b0;
    	    s_sal <= 1'b0;
    	    s_rel <= 1'b0;
            s_ret <= 1'b0; 
            s_bk <= 1'b0;	
    	  end
        endcase
      end	
    end
endmodule
