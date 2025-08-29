
module MyXOR2 (
    input  a,
    input  b,
    output q);

    assign q = a ^ b;

endmodule	 

module MyAND2 (
    input  a,
    input  b,
    output q);

    assign q = a & b;

endmodule	 

module AND_XOR (
    input  x,
    input  y,
    input  z,
    output q);

    wire nx, nxy;
	 
	 assign nx = ~x;
	 
	 MyAND2 instA (.a(nx),  .b(y), .q(nxy));
	 MyXOR2 instX (.a(nxy), .b(z), .q(q));
               
endmodule
