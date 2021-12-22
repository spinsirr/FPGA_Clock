module counter60_04(clk_04,rst_04,dout_04,cout_04);
input clk_04,rst_04;
output[7:0] dout_04;
output cout_04;

reg[7:0] dout_04;
reg cout_04;

always@(posedge clk_04 or posedge rst_04)
begin
	if(rst_04)dout_04<=8'd0;
	else if(dout_04[3:0]==4'd9)
	begin
		dout_04[3:0]<=4'd0;
		if(dout_04[7:4]==4'd5)
		begin
			dout_04[7:4]=4'd0;
			cout_04<=4'd1;
		end
		else
		begin
			dout_04[7:4]=dout_04[7:4]+4'd1;
		end
	end
	else
	begin
		dout_04[3:0]=dout_04[3:0]+4'd1;
		cout_04<=1'b0;
	end
end
endmodule
