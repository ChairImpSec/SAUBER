
module keccak_chi_iota #(
	parameter W = 8
    )(
   input wire [25*W-1:0] In,
   input wire [W-1:0] IotaRCI,
   output reg [25*W-1:0] Out
    );

reg[25*W-1:0] ChiOut;

generate

  genvar y, z;

  function integer RowIdx(input integer idx_x, input integer idx_y);
      RowIdx = (5*idx_x + idx_y)*W;
  endfunction

  for(z = 0; z < W; z=z+1) begin : GEN_SLICES
    for (y = 0; y < 5; y=y+1) begin : GEN_ROWS
      reg[5-1 : 0] RowsInxD;
      wire[5-1 : 0] RowsOutxD;

      always @(*) begin : ROW_SEL_IN
        integer i,x;
        for (x = 0; x < 5 ; x=x+1) begin          
          RowsInxD[x] = In[RowIdx(x,y) + z];
        end
      end

      always @(*) begin : ROW_SEL_OUT
        integer t,x;
		  for (x = 0; x < 5 ; x=x+1) begin  
            ChiOut[RowIdx(x,y) + z] = RowsOutxD[x];
        end
      end
	  
        keccak_sbox sbox( 
			.aa(RowsInxD[0]),
			.bb(RowsInxD[1]),
			.cc(RowsInxD[2]),
			.dd(RowsInxD[3]),
			.ee(RowsInxD[4]),
			.ap(RowsOutxD[0]),
			.bp(RowsOutxD[1]),
			.cp(RowsOutxD[2]),
			.dp(RowsOutxD[3]),
			.ep(RowsOutxD[4]));
    end
  end

endgenerate

always@(*) begin
Out = ChiOut ^ IotaRCI;
end

endmodule
