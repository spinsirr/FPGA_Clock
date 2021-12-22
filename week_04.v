module week_04(clk_04,wk_04);
	input clk_04;
	output reg[6:0] wk_04=7'b1;
	always@(posedge clk_04)
	begin
		if(wk_04==7'b0) wk_04<=7'b1;
		else wk_04<={wk_04[5:0],wk_04[6]};
	end
endmodule
