module fpga(input clk, input wire reset, input wire[3:0] num, input wire suma, input wire resta, output wire[6:0] display1, display2, display3, display4, output wire[7:0] s0, s1, s2, s3, output wire[9:0] pc_out);

  reg [7:0] e0, e1, e2, e3;
  reg [3:0] fill_data, counter, level;
  reg [6:0] fill_op, fill_timer;
  wire timer_out;
  reg [15:0] range;
  
  always @(posedge clk or posedge reset) begin
    if (reset) begin
      fill_data <= 4'b0000;
      fill_op <= 7'b0000000;
      fill_timer <= 7'b0000000;
      e0 <= 8'b00000000;
      e1 <= 8'b00000000;
      e2 <= 8'b00000000;
      e3 <= 8'b00000000;
		counter <= 'd0;
		level <= 'd0;
    end
    else begin
	 
		if (timer_out == 1) begin
			counter = !(counter);
		end
		e3 = counter;
		e2 = {fill_op, suma};
    end
	 	range = {s2, s3};
  end
  
  cpu cpu1(clk, reset, e0, e1, !(e2), e3, s0, s1, s2, s3, pc_out);
  decoder deco1(8'd0, display1, display2);
  decoder deco2(s1, display3, display4);
  timer timer1(timer_out, clk, range);

endmodule



module timer(delay, CLOCK_50, rg);
  output reg delay;
  input CLOCK_50;
  input wire [15:0] rg;
  reg[15:0] limit;
  reg [25:0] count;
  reg [25:0] comp;
  always @(posedge CLOCK_50)
  begin
  limit = rg;
  comp = {limit, 10'b0000000000};
  if(count>=comp)
  begin
  count<=26'd0;
  delay<=1;
  end
  else
  begin
  count<=count+1;
  delay<=0;
  end
  end
endmodule
