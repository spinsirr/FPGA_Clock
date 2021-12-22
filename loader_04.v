module loader_04(
	input [7:0] din0_04,din1_04,din2_04,
	input load_04,
	output reg[23:0] do0_04
	);
	
always @(*)
	begin
		if(load_04)do0_04<={din0_04,din1_04,din2_04};
		else;
	end
endmodule