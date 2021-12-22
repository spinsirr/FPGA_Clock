module wave_gen_04 (

  input   wire            clk,
  input   wire            rst_n,
  
  input   wire  [31:0]    divnum,
  
  output  reg             beep
);
  
  reg           [31:0]    cnt;
  
  always @ (posedge clk, negedge rst_n) begin
    if (rst_n == 1'b0)
      cnt <= 32'd0;
    else
      if (cnt < divnum - 1'b1)
        cnt <= cnt + 1'b1;
      else
        cnt <= 32'd0;
  end
  
  always @ (posedge clk, negedge rst_n) begin
    if (rst_n == 1'b0)
      beep <= 1'b0;
    else
      if (cnt < divnum[31:1])
        beep <= 1'b0;
      else
        beep <= 1'b1;
  end

endmodule