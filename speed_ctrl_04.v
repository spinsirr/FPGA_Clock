module speed_ctrl_04 (

  input   wire            clk,
  input   wire            rst_n,
  
  output  reg   [5:0]     cnt
);

  parameter T_250ms   =   36_650_000;
  
  reg           [25:0]    count;
  wire                    flag_250ms;
  
  always @ (posedge clk, negedge rst_n) begin
    if (rst_n == 1'b0)
      count <= 26'd0;
    else
      if (count < T_250ms - 1'b1)
        count <= count + 1'b1;
      else
        count <= 26'd0;
  end

  assign flag_250ms = (count == T_250ms - 1'b1) ? 1'b1 : 1'b0;
    
  always @ (posedge clk, negedge rst_n) begin
    if (rst_n == 1'b0)
      cnt <= 6'd0;
    else
      if (flag_250ms == 1'b1)
        cnt <= cnt + 1'b1;
      else
        cnt <= cnt;
  end

endmodule