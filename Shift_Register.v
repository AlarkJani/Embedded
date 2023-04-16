module Shift_Register (input [7:0] sw, output[3:0] led, input c1k);
reg[6:3] R;
always@(posedge c1k)
begin 
case ({sw[1],sw[0]})
2'b00 : R <= R;
2'b01 : R <= {R[5:3], sw[2]};
2'b10 : R <= {sw[7],R[6:4]};
2'b11 : R <= sw[6:3];
endcase
end
assign led=R;
endmodule
