
module main ( value_in, start, rst, clk, value_out, Sbox_in, Sbox_out );
  (* AGEMA = "secure" *)   input [7:0] value_in;
  (* AGEMA = "constant" *) input [3:0] start;
  output [7:0] value_out;
  output [7:0] Sbox_in;
  (* AGEMA = "secure" *)   input [7:0] Sbox_out;
  (* AGEMA = "reset" *)    input rst;
  (* AGEMA = "clock" *)    input clk;
  
  wire   n5, n8, n9, M1_gen_loop_0__M_Y, M1_gen_loop_0__M_X,
         M1_gen_loop_1__M_Y, M1_gen_loop_1__M_X, M1_gen_loop_2__M_Y,
         M1_gen_loop_2__M_X, M1_gen_loop_3__M_Y, M1_gen_loop_3__M_X,
         M1_gen_loop_4__M_Y, M1_gen_loop_4__M_X, M1_gen_loop_5__M_Y,
         M1_gen_loop_5__M_X, M1_gen_loop_6__M_Y, M1_gen_loop_6__M_X,
         M1_gen_loop_7__M_Y, M1_gen_loop_7__M_X, M2_gen_loop_0__M_Y,
         M2_gen_loop_0__M_X, M2_gen_loop_1__M_Y, M2_gen_loop_1__M_X,
         M2_gen_loop_2__M_Y, M2_gen_loop_2__M_X, M2_gen_loop_3__M_Y,
         M2_gen_loop_3__M_X;
  wire   [3:1] Inc_out;
  wire   [3:0] Inc_Reg;
  wire   [3:0] Inc_in;

  AND2_X1 U14 ( .A1(Inc_in[0]), .A2(Inc_in[1]), .ZN(n8) );
  INV_X1 U15 ( .A(Inc_in[0]), .ZN(n5) );
  XNOR2_X1 U16 ( .A(Inc_in[1]), .B(n5), .ZN(Inc_out[1]) );
  XOR2_X1 U17 ( .A(n8), .B(Inc_in[2]), .Z(Inc_out[2]) );
  NAND2_X1 U18 ( .A1(n8), .A2(Inc_in[2]), .ZN(n9) );
  XNOR2_X1 U19 ( .A(Inc_in[3]), .B(n9), .ZN(Inc_out[3]) );
  XOR2_X1 M1_gen_loop_0__M_X1_U1 ( .A(value_in[0]), .B(value_out[0]), .Z(M1_gen_loop_0__M_X) );
  AND2_X1 M1_gen_loop_0__M_A_U1 ( .A1(Inc_out[3]), .A2(M1_gen_loop_0__M_X), .ZN(M1_gen_loop_0__M_Y) );
  XOR2_X1 M1_gen_loop_0__M_X2_U1 ( .A(M1_gen_loop_0__M_Y), .B(value_in[0]), .Z(Sbox_in[0]) );
  XOR2_X1 M1_gen_loop_1__M_X1_U1 ( .A(value_in[1]), .B(value_out[1]), .Z(M1_gen_loop_1__M_X) );
  AND2_X1 M1_gen_loop_1__M_A_U1 ( .A1(Inc_out[3]), .A2(M1_gen_loop_1__M_X), .ZN(M1_gen_loop_1__M_Y) );
  XOR2_X1 M1_gen_loop_1__M_X2_U1 ( .A(M1_gen_loop_1__M_Y), .B(value_in[1]), .Z(Sbox_in[1]) );
  XOR2_X1 M1_gen_loop_2__M_X1_U1 ( .A(value_in[2]), .B(value_out[2]), .Z(M1_gen_loop_2__M_X) );
  AND2_X1 M1_gen_loop_2__M_A_U1 ( .A1(Inc_out[3]), .A2(M1_gen_loop_2__M_X), .ZN(M1_gen_loop_2__M_Y) );
  XOR2_X1 M1_gen_loop_2__M_X2_U1 ( .A(M1_gen_loop_2__M_Y), .B(value_in[2]), .Z(Sbox_in[2]) );
  XOR2_X1 M1_gen_loop_3__M_X1_U1 ( .A(value_in[3]), .B(value_out[3]), .Z(M1_gen_loop_3__M_X) );
  AND2_X1 M1_gen_loop_3__M_A_U1 ( .A1(Inc_out[3]), .A2(M1_gen_loop_3__M_X), .ZN(M1_gen_loop_3__M_Y) );
  XOR2_X1 M1_gen_loop_3__M_X2_U1 ( .A(M1_gen_loop_3__M_Y), .B(value_in[3]), .Z(Sbox_in[3]) );
  XOR2_X1 M1_gen_loop_4__M_X1_U1 ( .A(value_in[4]), .B(value_out[4]), .Z(M1_gen_loop_4__M_X) );
  AND2_X1 M1_gen_loop_4__M_A_U1 ( .A1(Inc_out[3]), .A2(M1_gen_loop_4__M_X), .ZN(M1_gen_loop_4__M_Y) );
  XOR2_X1 M1_gen_loop_4__M_X2_U1 ( .A(M1_gen_loop_4__M_Y), .B(value_in[4]), .Z(Sbox_in[4]) );
  XOR2_X1 M1_gen_loop_5__M_X1_U1 ( .A(value_in[5]), .B(value_out[5]), .Z(M1_gen_loop_5__M_X) );
  AND2_X1 M1_gen_loop_5__M_A_U1 ( .A1(Inc_out[3]), .A2(M1_gen_loop_5__M_X), .ZN(M1_gen_loop_5__M_Y) );
  XOR2_X1 M1_gen_loop_5__M_X2_U1 ( .A(M1_gen_loop_5__M_Y), .B(value_in[5]), .Z(Sbox_in[5]) );
  XOR2_X1 M1_gen_loop_6__M_X1_U1 ( .A(value_in[6]), .B(value_out[6]), .Z(M1_gen_loop_6__M_X) );
  AND2_X1 M1_gen_loop_6__M_A_U1 ( .A1(Inc_out[3]), .A2(M1_gen_loop_6__M_X), .ZN(M1_gen_loop_6__M_Y) );
  XOR2_X1 M1_gen_loop_6__M_X2_U1 ( .A(M1_gen_loop_6__M_Y), .B(value_in[6]), .Z(Sbox_in[6]) );
  XOR2_X1 M1_gen_loop_7__M_X1_U1 ( .A(value_in[7]), .B(value_out[7]), .Z(M1_gen_loop_7__M_X) );
  AND2_X1 M1_gen_loop_7__M_A_U1 ( .A1(Inc_out[3]), .A2(M1_gen_loop_7__M_X), .ZN(M1_gen_loop_7__M_Y) );
  XOR2_X1 M1_gen_loop_7__M_X2_U1 ( .A(M1_gen_loop_7__M_Y), .B(value_in[7]), .Z(Sbox_in[7]) );
  DFF_X1 R1_gen_loop_0__R_Q_reg ( .D(Sbox_out[0]), .CK(clk), .Q(value_out[0]), .QN() );
  DFF_X1 R1_gen_loop_1__R_Q_reg ( .D(Sbox_out[1]), .CK(clk), .Q(value_out[1]), .QN() );
  DFF_X1 R1_gen_loop_2__R_Q_reg ( .D(Sbox_out[2]), .CK(clk), .Q(value_out[2]), .QN() );
  DFF_X1 R1_gen_loop_3__R_Q_reg ( .D(Sbox_out[3]), .CK(clk), .Q(value_out[3]), .QN() );
  DFF_X1 R1_gen_loop_4__R_Q_reg ( .D(Sbox_out[4]), .CK(clk), .Q(value_out[4]), .QN() );
  DFF_X1 R1_gen_loop_5__R_Q_reg ( .D(Sbox_out[5]), .CK(clk), .Q(value_out[5]), .QN() );
  DFF_X1 R1_gen_loop_6__R_Q_reg ( .D(Sbox_out[6]), .CK(clk), .Q(value_out[6]), .QN() );
  DFF_X1 R1_gen_loop_7__R_Q_reg ( .D(Sbox_out[7]), .CK(clk), .Q(value_out[7]), .QN() );
  XOR2_X1 M2_gen_loop_0__M_X1_U1 ( .A(Inc_Reg[0]), .B(start[0]), .Z(M2_gen_loop_0__M_X) );
  AND2_X1 M2_gen_loop_0__M_A_U1 ( .A1(rst), .A2(M2_gen_loop_0__M_X), .ZN(M2_gen_loop_0__M_Y) );
  XOR2_X1 M2_gen_loop_0__M_X2_U1 ( .A(M2_gen_loop_0__M_Y), .B(Inc_Reg[0]), .Z(Inc_in[0]) );
  XOR2_X1 M2_gen_loop_1__M_X1_U1 ( .A(Inc_Reg[1]), .B(start[1]), .Z(M2_gen_loop_1__M_X) );
  AND2_X1 M2_gen_loop_1__M_A_U1 ( .A1(rst), .A2(M2_gen_loop_1__M_X), .ZN(M2_gen_loop_1__M_Y) );
  XOR2_X1 M2_gen_loop_1__M_X2_U1 ( .A(M2_gen_loop_1__M_Y), .B(Inc_Reg[1]), .Z(Inc_in[1]) );
  XOR2_X1 M2_gen_loop_2__M_X1_U1 ( .A(Inc_Reg[2]), .B(start[2]), .Z(M2_gen_loop_2__M_X) );
  AND2_X1 M2_gen_loop_2__M_A_U1 ( .A1(rst), .A2(M2_gen_loop_2__M_X), .ZN(M2_gen_loop_2__M_Y) );
  XOR2_X1 M2_gen_loop_2__M_X2_U1 ( .A(M2_gen_loop_2__M_Y), .B(Inc_Reg[2]), .Z(Inc_in[2]) );
  XOR2_X1 M2_gen_loop_3__M_X1_U1 ( .A(Inc_Reg[3]), .B(start[3]), .Z(M2_gen_loop_3__M_X) );
  AND2_X1 M2_gen_loop_3__M_A_U1 ( .A1(rst), .A2(M2_gen_loop_3__M_X), .ZN(M2_gen_loop_3__M_Y) );
  XOR2_X1 M2_gen_loop_3__M_X2_U1 ( .A(M2_gen_loop_3__M_Y), .B(Inc_Reg[3]), .Z(Inc_in[3]) );
  DFF_X1 R2_gen_loop_0__R_Q_reg ( .D(n5), .CK(clk), .Q(Inc_Reg[0]), .QN() );
  DFF_X1 R2_gen_loop_1__R_Q_reg ( .D(Inc_out[1]), .CK(clk), .Q(Inc_Reg[1]), .QN() );
  DFF_X1 R2_gen_loop_2__R_Q_reg ( .D(Inc_out[2]), .CK(clk), .Q(Inc_Reg[2]), .QN() );
  DFF_X1 R2_gen_loop_3__R_Q_reg ( .D(Inc_out[3]), .CK(clk), .Q(Inc_Reg[3]), .QN() );
endmodule

