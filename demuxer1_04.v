module demuxer1_04(
	input din_04,
	input[1:0] sel_04,
	output reg do0_04, do1_04, do2_04
	);
	
always @(*)
	begin
		case(sel_04)
		2'b00: do0_04<=din_04;
		2'b01: do1_04<=din_04;
		2'b10: do2_04<=din_04;
		default:;
		endcase
	end
endmodule

