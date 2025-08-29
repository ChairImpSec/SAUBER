
module keccak_theta #(
   parameter W = 8,
	parameter b = 200
	 )(
	input      [b-1:0] In,
   output reg [b-1:0] Out);

	function integer Idx(input integer x, input integer y);
		Idx = (5*x+y)*W;
	endfunction

	localparam [0:25*4-1] ROTATION_OFFSETS = {
		 4'd0, 4'd4, 4'd3, 4'd1, 4'd2,
		 4'd1, 4'd4, 4'd2, 4'd5, 4'd2,
		 4'd6, 4'd6, 4'd3, 4'd7, 4'd5,
		 4'd4, 4'd7, 4'd1, 4'd5, 4'd0,
		 4'd3, 4'd4, 4'd7, 4'd0, 4'd6
	};

	localparam STATE_SIZE = 5*5*W;

	// theta

	reg[5*W-1:0] C, C_rot;
	reg[25*W-1:0] A, D;

	 always @(*) begin : THETA_PARALLEL
		  integer x, y;
		  A = In;
		  for(x=0; x < 5; x=x+1) begin
				C[x*W +: W] = A[Idx(x,0) +: W] ^ A[Idx(x,1) +: W] ^ A[Idx(x,2) +: W]
									 ^ A[Idx(x,3) +: W] ^ A[Idx(x,4) +: W];
				C_rot[x*W +: W] = {2{C[x*W +: W]}} >> (W-1);
		  end
		  for(x=0; x < 5; x=x+1) begin
				for(y=0; y < 5; y=y+1) begin
					 D[Idx(x,y) +: W] = A[Idx(x,y) +: W]
						  ^ C[(((x-1)+5) % 5)*W +: W] ^ C_rot[((x+1) % 5)*W +: W];
				end
		  end

		  Out = D;
	 end
			
endmodule

