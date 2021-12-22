module counter24_04(clk_04,rst_04,dout_04,cout_04);
input clk_04,rst_04;
output[7:0] dout_04;
output cout_04;

reg[7:0] dout_04;
reg cout_04;

always@(posedge clk_04 or posedge rst_04)
begin
	if(rst_04)dout_04<=0;
	else if((dout_04[7:4]==4'b0010)&&(dout_04[3:0]==4'b0011))
	begin
		cout_04 <= 1'b1;
		dout_04 <= 8'b0;
	end
	else if(dout_04[3:0]==4'b1001)
	begin
		dout_04[3:0] <= 4'b0;
		dout_04[7:4] <= dout_04[7:4] + 1'b1;
	end
	else
	begin
		dout_04[7:4] <= dout_04[7:4];
		dout_04[3:0] <= dout_04[3:0] + 1'b1;
		cout_04 <= 1'b0;
	end
end
endmodule
