module alu_4bit (
input	[3:0] A,
input	[3:0] B,
input	[1:0] operation,
output reg	[3:0] result,
output reg	      carry,
output reg	      borrow,
output 		      zero
);

assign zero = (result == 4'b0000);

always @(*) begin
	result = 4'b0000;
	carry = 1'b0;
	borrow = 1'b0;

	case(operation)
		2'b00: begin
			{carry, result} = A + B;
		end
		
		2'b01: begin 
			result = A | B;
		end

		2'b10: begin
			result = A & B;
		end

		2'b11: begin
			result = A - B;
			borrow = (A < B);
		end
		
		default : begin 
			result = 4'b0000;
		end
	endcase
end 

endmodule
