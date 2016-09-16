module decoder(input wire[3:0] number, output wire[6:0] d0, d1);

  reg[6:0] out0, out1;

  assign d0 = out0;
  assign d1 = out1;

  always @(number)
  begin
    case(number)
      4'b0000:
        begin
          out0<=7'b1000000;
          out1<=7'b1111111;
        end

      4'b0001:
        begin
          out0<=7'b1111001;
          out1<=7'b1111111;
        end

      4'b0010:
        begin
          out0<=7'b0100100;
          out1<=7'b1111111;
        end

      4'b0011:
        begin
          out0<=7'b0110000;
          out1<=7'b1111111;
        end

      4'b0100:
        begin
          out0<=7'b0011001;
          out1<=7'b1111111;
        end

      4'b0101:
        begin
          out0<=7'b0010010;
          out1<=7'b1111111;
        end

      4'b0110:
        begin
          out0<=7'b0000010;
          out1<=7'b1111111;
        end

      4'b0111:
        begin
          out0<=7'b1111000;
          out1<=7'b1111111;
        end

      4'b1000:
        begin
          out0<=7'b0000000;
          out1<=7'b1111111;
        end

      4'b1001:
        begin
          out0<=7'b0011000;
          out1<=7'b1111111;
        end
     //---------------------------------------
      4'b1010:
        begin
          out0<=7'b1000000;
          out1<=7'b1111001;
        end

      4'b1011:
        begin
          out0<=7'b1111001;
          out1<=7'b1111001;
        end

      4'b1100:
        begin
          out0<=7'b0100100;
          out1<=7'b1111001;
        end

      4'b1101:
        begin
          out0<=7'b0110000;
          out1<=7'b1111001;
        end

      4'b1110:
        begin
          out0<=7'b0011001;
          out1<=7'b1111001;
        end

      4'b1111:
        begin
          out0<=7'b0010010;
          out1<=7'b1111001;
        end
    endcase
  end

endmodule