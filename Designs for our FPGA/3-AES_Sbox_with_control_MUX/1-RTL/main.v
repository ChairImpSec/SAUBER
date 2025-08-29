`timescale 1ns / 1ps

module main(
    input  [7:0] value_in,
    input  [3:0] start,
    input  rst,
    input  clk,
    output [7:0] value_out
    );
	 
	 wire [7:0] Sbox_in;
	 wire [7:0] Sbox_out;
	 wire [7:0] Reg_out;
	 
	 wire [3:0] Inc_in;
	 reg  [3:0] Inc_out;
	 wire [3:0] Inc_Reg;
	 	 
	 MyMUXn #(.n(8)) M1 (.A0(value_in), .A1(Reg_out), .S(Inc_out[3]), .C(Sbox_in));
	 
	 Sbox SboxInst (.x(Sbox_in), .y(Sbox_out));
	 
    MyRegn #(.n(8)) R1 (.D(Sbox_out), .C(clk), .Q(Reg_out));
	 
	 assign value_out = Reg_out;
	 
	 //--------------------
	 
	 MyMUXn #(.n(4)) M2 (.A0(Inc_Reg), .A1(start), .S(rst), .C(Inc_in));
	 
    always @(*)
    begin
        Inc_out = Inc_in + 1;
    end
	 
    MyRegn #(.n(4)) R2 (.D(Inc_out), .C(clk), .Q(Inc_Reg));

endmodule
