module cal_divnum_04 (
  
  input   wire              clk,
  input   wire              rst_n,
  
  input   wire    [4:0]     music,
  
  output  reg     [31:0]    divnum
);
  
  reg             [31:0]    freq;
  
  always @ * begin
    case (music)
      5'd1    : freq =    32'd262;
      5'd2    : freq =    32'd294;
      5'd3    : freq =    32'd330;
      5'd4    : freq =    32'd349;
      5'd5    : freq =    32'd392;
      5'd6    : freq =    32'd440;
      5'd7    : freq =    32'd494;
      
      5'd8    : freq =    32'd523;
      5'd9    : freq =    32'd587;
      5'd10   : freq =    32'd659;
      5'd11   : freq =    32'd699;
      5'd12   : freq =    32'd784;
      5'd13   : freq =    32'd880;
      5'd14   : freq =    32'd988;
      
      5'd15   : freq =    32'd1050;
      5'd16   : freq =    32'd1175;
      5'd17   : freq =    32'd1319;
      5'd18   : freq =    32'd1397;
      5'd19   : freq =    32'd1568;
      5'd20   : freq =    32'd1760;
      5'd21   : freq =    32'd1976;
      default : freq =    32'd1;
    endcase
  end
  
  always @ (posedge clk, negedge rst_n) begin
    if (rst_n == 1'b0)
      divnum <= 32'd50_000_000;
    else
      divnum <= 50_000_000/freq;
  end

endmodule