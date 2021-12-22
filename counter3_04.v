module counter3_04(clk_04,rst_04,dout_04);
input clk_04,rst_04;
output[1:0] dout_04;

reg[1:0] dout_04;

always@(posedge clk_04 or posedge rst_04)
begin
	if(rst_04)dout_04<=0;
	else if(dout_04[1:0]==2'b10)
	begin
		dout_04[1:0]<=2'b00;
	end
	else
	begin
		dout_04<=dout_04+1'b1;
	end
end
endmodule
