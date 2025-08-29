
module MyXOR_24 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyAND_12 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyXOR_23 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyMUX_0 ( A0, A1, S, C );
  input A0, A1, S;
  output C;
  wire   X, Y;

  MyXOR_24 X1 ( .A(A0), .B(A1), .C(X) );
  MyAND_12 A ( .A(S), .B(X), .C(Y) );
  MyXOR_23 X2 ( .A(Y), .B(A0), .C(C) );
endmodule


module MyXOR_22 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyAND_11 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyXOR_21 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyMUX_11 ( A0, A1, S, C );
  input A0, A1, S;
  output C;
  wire   X, Y;

  MyXOR_22 X1 ( .A(A0), .B(A1), .C(X) );
  MyAND_11 A ( .A(S), .B(X), .C(Y) );
  MyXOR_21 X2 ( .A(Y), .B(A0), .C(C) );
endmodule


module MyXOR_20 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyAND_10 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyXOR_19 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyMUX_10 ( A0, A1, S, C );
  input A0, A1, S;
  output C;
  wire   X, Y;

  MyXOR_20 X1 ( .A(A0), .B(A1), .C(X) );
  MyAND_10 A ( .A(S), .B(X), .C(Y) );
  MyXOR_19 X2 ( .A(Y), .B(A0), .C(C) );
endmodule


module MyXOR_18 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyAND_9 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyXOR_17 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyMUX_9 ( A0, A1, S, C );
  input A0, A1, S;
  output C;
  wire   X, Y;

  MyXOR_18 X1 ( .A(A0), .B(A1), .C(X) );
  MyAND_9 A ( .A(S), .B(X), .C(Y) );
  MyXOR_17 X2 ( .A(Y), .B(A0), .C(C) );
endmodule


module MyXOR_16 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyAND_8 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyXOR_15 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyMUX_8 ( A0, A1, S, C );
  input A0, A1, S;
  output C;
  wire   X, Y;

  MyXOR_16 X1 ( .A(A0), .B(A1), .C(X) );
  MyAND_8 A ( .A(S), .B(X), .C(Y) );
  MyXOR_15 X2 ( .A(Y), .B(A0), .C(C) );
endmodule


module MyXOR_14 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyAND_7 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyXOR_13 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyMUX_7 ( A0, A1, S, C );
  input A0, A1, S;
  output C;
  wire   X, Y;

  MyXOR_14 X1 ( .A(A0), .B(A1), .C(X) );
  MyAND_7 A ( .A(S), .B(X), .C(Y) );
  MyXOR_13 X2 ( .A(Y), .B(A0), .C(C) );
endmodule


module MyXOR_12 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyAND_6 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyXOR_11 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyMUX_6 ( A0, A1, S, C );
  input A0, A1, S;
  output C;
  wire   X, Y;

  MyXOR_12 X1 ( .A(A0), .B(A1), .C(X) );
  MyAND_6 A ( .A(S), .B(X), .C(Y) );
  MyXOR_11 X2 ( .A(Y), .B(A0), .C(C) );
endmodule


module MyXOR_10 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyAND_5 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyXOR_9 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyMUX_5 ( A0, A1, S, C );
  input A0, A1, S;
  output C;
  wire   X, Y;

  MyXOR_10 X1 ( .A(A0), .B(A1), .C(X) );
  MyAND_5 A ( .A(S), .B(X), .C(Y) );
  MyXOR_9 X2 ( .A(Y), .B(A0), .C(C) );
endmodule


module MyMUXn_n8 ( A0, A1, S, C );
  input [7:0] A0;
  input [7:0] A1;
  output [7:0] C;
  input S;


  MyMUX_0 gen_loop_0__M ( .A0(A0[0]), .A1(A1[0]), .S(S), .C(C[0]) );
  MyMUX_11 gen_loop_1__M ( .A0(A0[1]), .A1(A1[1]), .S(S), .C(C[1]) );
  MyMUX_10 gen_loop_2__M ( .A0(A0[2]), .A1(A1[2]), .S(S), .C(C[2]) );
  MyMUX_9 gen_loop_3__M ( .A0(A0[3]), .A1(A1[3]), .S(S), .C(C[3]) );
  MyMUX_8 gen_loop_4__M ( .A0(A0[4]), .A1(A1[4]), .S(S), .C(C[4]) );
  MyMUX_7 gen_loop_5__M ( .A0(A0[5]), .A1(A1[5]), .S(S), .C(C[5]) );
  MyMUX_6 gen_loop_6__M ( .A0(A0[6]), .A1(A1[6]), .S(S), .C(C[6]) );
  MyMUX_5 gen_loop_7__M ( .A0(A0[7]), .A1(A1[7]), .S(S), .C(C[7]) );
endmodule


module MyXOR_0 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_113 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_112 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_111 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_110 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_109 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_108 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_107 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_106 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_105 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_104 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_103 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_102 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_101 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_100 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_99 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_98 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_97 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_96 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_95 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_94 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_93 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_92 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_91 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_90 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_89 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_88 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyAND_0 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_45 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyXOR_87 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyAND_44 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyXOR_86 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyAND_43 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_42 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyXOR_85 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyAND_41 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyXOR_84 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyAND_40 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_39 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyXOR_83 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyAND_38 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyXOR_82 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_81 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_80 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_79 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_78 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_77 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_76 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_75 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_74 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_73 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyAND_37 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyXOR_72 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_71 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_70 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyAND_36 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_35 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_34 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_33 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyXOR_69 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyAND_32 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_31 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyXOR_68 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_67 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_66 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_65 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_64 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_63 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_62 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_61 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_60 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_59 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyAND_30 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_29 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_28 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_27 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_26 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_25 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_24 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_23 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_22 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_21 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_20 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_19 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_18 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_17 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_16 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_15 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_14 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_13 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyXOR_58 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_57 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_56 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_55 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_54 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_53 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_52 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_51 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_50 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_49 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_48 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_47 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_46 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_45 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_44 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_43 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_42 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_41 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_40 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_39 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_38 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_37 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_36 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_35 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_34 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_33 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_32 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_31 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_30 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_29 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_28 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXNOR_0 ( A, B, C );
  input A, B;
  output C;


  XNOR2_X1 U1 ( .A(A), .B(B), .ZN(C) );
endmodule


module MyXNOR_3 ( A, B, C );
  input A, B;
  output C;


  XNOR2_X1 U1 ( .A(A), .B(B), .ZN(C) );
endmodule


module MyXOR_27 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_26 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_25 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXNOR_2 ( A, B, C );
  input A, B;
  output C;


  XNOR2_X1 U1 ( .A(A), .B(B), .ZN(C) );
endmodule


module MyXNOR_1 ( A, B, C );
  input A, B;
  output C;


  XNOR2_X1 U1 ( .A(A), .B(B), .ZN(C) );
endmodule


module Sbox ( x, y );
  input [7:0] x;
  output [7:0] y;
  wire   T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16,
         T17, T18, T19, T20, T21, T22, T23, T24, T25, T26, T27, M1, M2, M3, M4,
         M5, M6, M7, M8, M9, M10, M11, M12, M13, M14, M15, M16, M17, M18, M19,
         M20, M21, M22, M23, M24, M25, M26, M27, M28, M29, M30, M31, M32, M33,
         M34, M35, M36, M37, M38, M39, M40, M41, M42, M43, M44, M45, M46, M47,
         M48, M49, M50, M51, M52, M53, M54, M55, M56, M57, M58, M59, M60, M61,
         M62, M63, L0, L1, L2, L3, L4, L5, L6, L7, L8, L9, L10, L11, L12, L13,
         L14, L15, L16, L17, L18, L19, L20, L21, L22, L23, L24, L25, L26, L27,
         L28, L29;

  MyXOR_0 XOR_T1 ( .A(x[7]), .B(x[4]), .C(T1) );
  MyXOR_113 XOR_T2 ( .A(x[7]), .B(x[2]), .C(T2) );
  MyXOR_112 XOR_T3 ( .A(x[7]), .B(x[1]), .C(T3) );
  MyXOR_111 XOR_T4 ( .A(x[4]), .B(x[2]), .C(T4) );
  MyXOR_110 XOR_T5 ( .A(x[3]), .B(x[1]), .C(T5) );
  MyXOR_109 XOR_T6 ( .A(T1), .B(T5), .C(T6) );
  MyXOR_108 XOR_T7 ( .A(x[6]), .B(x[5]), .C(T7) );
  MyXOR_107 XOR_T8 ( .A(x[0]), .B(T6), .C(T8) );
  MyXOR_106 XOR_T9 ( .A(x[0]), .B(T7), .C(T9) );
  MyXOR_105 XOR_T10 ( .A(T6), .B(T7), .C(T10) );
  MyXOR_104 XOR_T11 ( .A(x[6]), .B(x[2]), .C(T11) );
  MyXOR_103 XOR_T12 ( .A(x[5]), .B(x[2]), .C(T12) );
  MyXOR_102 XOR_T13 ( .A(T3), .B(T4), .C(T13) );
  MyXOR_101 XOR_T14 ( .A(T6), .B(T11), .C(T14) );
  MyXOR_100 XOR_T15 ( .A(T5), .B(T11), .C(T15) );
  MyXOR_99 XOR_T16 ( .A(T5), .B(T12), .C(T16) );
  MyXOR_98 XOR_T17 ( .A(T9), .B(T16), .C(T17) );
  MyXOR_97 XOR_T18 ( .A(x[4]), .B(x[0]), .C(T18) );
  MyXOR_96 XOR_T19 ( .A(T7), .B(T18), .C(T19) );
  MyXOR_95 XOR_T20 ( .A(T1), .B(T19), .C(T20) );
  MyXOR_94 XOR_T21 ( .A(x[1]), .B(x[0]), .C(T21) );
  MyXOR_93 XOR_T22 ( .A(T7), .B(T21), .C(T22) );
  MyXOR_92 XOR_T23 ( .A(T2), .B(T22), .C(T23) );
  MyXOR_91 XOR_T24 ( .A(T2), .B(T10), .C(T24) );
  MyXOR_90 XOR_T25 ( .A(T20), .B(T17), .C(T25) );
  MyXOR_89 XOR_T26 ( .A(T3), .B(T16), .C(T26) );
  MyXOR_88 XOR_T27 ( .A(T1), .B(T12), .C(T27) );
  MyAND_0 AND_M1 ( .A(T13), .B(T6), .C(M1) );
  MyAND_45 AND_M2 ( .A(T23), .B(T8), .C(M2) );
  MyXOR_87 XOR_M3 ( .A(T14), .B(M1), .C(M3) );
  MyAND_44 AND_M4 ( .A(T19), .B(x[0]), .C(M4) );
  MyXOR_86 XOR_M5 ( .A(M4), .B(M1), .C(M5) );
  MyAND_43 AND_M6 ( .A(T3), .B(T16), .C(M6) );
  MyAND_42 AND_M7 ( .A(T22), .B(T9), .C(M7) );
  MyXOR_85 XOR_M8 ( .A(T26), .B(M6), .C(M8) );
  MyAND_41 AND_M9 ( .A(T20), .B(T17), .C(M9) );
  MyXOR_84 XOR_M10 ( .A(M9), .B(M6), .C(M10) );
  MyAND_40 AND_M11 ( .A(T1), .B(T15), .C(M11) );
  MyAND_39 AND_M12 ( .A(T4), .B(T27), .C(M12) );
  MyXOR_83 XOR_M13 ( .A(M12), .B(M11), .C(M13) );
  MyAND_38 AND_M14 ( .A(T2), .B(T10), .C(M14) );
  MyXOR_82 XOR_M15 ( .A(M14), .B(M11), .C(M15) );
  MyXOR_81 XOR_M16 ( .A(M3), .B(M2), .C(M16) );
  MyXOR_80 XOR_M17 ( .A(M5), .B(T24), .C(M17) );
  MyXOR_79 XOR_M18 ( .A(M8), .B(M7), .C(M18) );
  MyXOR_78 XOR_M19 ( .A(M10), .B(M15), .C(M19) );
  MyXOR_77 XOR_M20 ( .A(M16), .B(M13), .C(M20) );
  MyXOR_76 XOR_M21 ( .A(M17), .B(M15), .C(M21) );
  MyXOR_75 XOR_M22 ( .A(M18), .B(M13), .C(M22) );
  MyXOR_74 XOR_M23 ( .A(M19), .B(T25), .C(M23) );
  MyXOR_73 XOR_M24 ( .A(M22), .B(M23), .C(M24) );
  MyAND_37 AND_M25 ( .A(M22), .B(M20), .C(M25) );
  MyXOR_72 XOR_M26 ( .A(M21), .B(M25), .C(M26) );
  MyXOR_71 XOR_M27 ( .A(M20), .B(M21), .C(M27) );
  MyXOR_70 XOR_M28 ( .A(M23), .B(M25), .C(M28) );
  MyAND_36 AND_M29 ( .A(M28), .B(M27), .C(M29) );
  MyAND_35 AND_M30 ( .A(M26), .B(M24), .C(M30) );
  MyAND_34 AND_M31 ( .A(M20), .B(M23), .C(M31) );
  MyAND_33 AND_M32 ( .A(M27), .B(M31), .C(M32) );
  MyXOR_69 XOR_M33 ( .A(M27), .B(M25), .C(M33) );
  MyAND_32 AND_M34 ( .A(M21), .B(M22), .C(M34) );
  MyAND_31 AND_M35 ( .A(M24), .B(M34), .C(M35) );
  MyXOR_68 XOR_M36 ( .A(M24), .B(M25), .C(M36) );
  MyXOR_67 XOR_M37 ( .A(M21), .B(M29), .C(M37) );
  MyXOR_66 XOR_M38 ( .A(M32), .B(M33), .C(M38) );
  MyXOR_65 XOR_M39 ( .A(M23), .B(M30), .C(M39) );
  MyXOR_64 XOR_M40 ( .A(M35), .B(M36), .C(M40) );
  MyXOR_63 XOR_M41 ( .A(M38), .B(M40), .C(M41) );
  MyXOR_62 XOR_M42 ( .A(M37), .B(M39), .C(M42) );
  MyXOR_61 XOR_M43 ( .A(M37), .B(M38), .C(M43) );
  MyXOR_60 XOR_M44 ( .A(M39), .B(M40), .C(M44) );
  MyXOR_59 XOR_M45 ( .A(M42), .B(M41), .C(M45) );
  MyAND_30 AND_M46 ( .A(M44), .B(T6), .C(M46) );
  MyAND_29 AND_M47 ( .A(M40), .B(T8), .C(M47) );
  MyAND_28 AND_M48 ( .A(M39), .B(x[0]), .C(M48) );
  MyAND_27 AND_M49 ( .A(M43), .B(T16), .C(M49) );
  MyAND_26 AND_M50 ( .A(M38), .B(T9), .C(M50) );
  MyAND_25 AND_M51 ( .A(M37), .B(T17), .C(M51) );
  MyAND_24 AND_M52 ( .A(M42), .B(T15), .C(M52) );
  MyAND_23 AND_M53 ( .A(M45), .B(T27), .C(M53) );
  MyAND_22 AND_M54 ( .A(M41), .B(T10), .C(M54) );
  MyAND_21 AND_M55 ( .A(M44), .B(T13), .C(M55) );
  MyAND_20 AND_M56 ( .A(M40), .B(T23), .C(M56) );
  MyAND_19 AND_M57 ( .A(M39), .B(T19), .C(M57) );
  MyAND_18 AND_M58 ( .A(M43), .B(T3), .C(M58) );
  MyAND_17 AND_M59 ( .A(M38), .B(T22), .C(M59) );
  MyAND_16 AND_M60 ( .A(M37), .B(T20), .C(M60) );
  MyAND_15 AND_M61 ( .A(M42), .B(T1), .C(M61) );
  MyAND_14 AND_M62 ( .A(M45), .B(T4), .C(M62) );
  MyAND_13 AND_M63 ( .A(M41), .B(T2), .C(M63) );
  MyXOR_58 XOR_L0 ( .A(M61), .B(M62), .C(L0) );
  MyXOR_57 XOR_L1 ( .A(M50), .B(M56), .C(L1) );
  MyXOR_56 XOR_L2 ( .A(M46), .B(M48), .C(L2) );
  MyXOR_55 XOR_L3 ( .A(M47), .B(M55), .C(L3) );
  MyXOR_54 XOR_L4 ( .A(M54), .B(M58), .C(L4) );
  MyXOR_53 XOR_L5 ( .A(M49), .B(M61), .C(L5) );
  MyXOR_52 XOR_L6 ( .A(M62), .B(L5), .C(L6) );
  MyXOR_51 XOR_L7 ( .A(M46), .B(L3), .C(L7) );
  MyXOR_50 XOR_L8 ( .A(M51), .B(M59), .C(L8) );
  MyXOR_49 XOR_L9 ( .A(M52), .B(M53), .C(L9) );
  MyXOR_48 XOR_L10 ( .A(M53), .B(L4), .C(L10) );
  MyXOR_47 XOR_L11 ( .A(M60), .B(L2), .C(L11) );
  MyXOR_46 XOR_L12 ( .A(M48), .B(M51), .C(L12) );
  MyXOR_45 XOR_L13 ( .A(M50), .B(L0), .C(L13) );
  MyXOR_44 XOR_L14 ( .A(M52), .B(M61), .C(L14) );
  MyXOR_43 XOR_L15 ( .A(M55), .B(L1), .C(L15) );
  MyXOR_42 XOR_L16 ( .A(M56), .B(L0), .C(L16) );
  MyXOR_41 XOR_L17 ( .A(M57), .B(L1), .C(L17) );
  MyXOR_40 XOR_L18 ( .A(M58), .B(L8), .C(L18) );
  MyXOR_39 XOR_L19 ( .A(M63), .B(L4), .C(L19) );
  MyXOR_38 XOR_L20 ( .A(L0), .B(L1), .C(L20) );
  MyXOR_37 XOR_L21 ( .A(L1), .B(L7), .C(L21) );
  MyXOR_36 XOR_L22 ( .A(L3), .B(L12), .C(L22) );
  MyXOR_35 XOR_L23 ( .A(L18), .B(L2), .C(L23) );
  MyXOR_34 XOR_L24 ( .A(L15), .B(L9), .C(L24) );
  MyXOR_33 XOR_L25 ( .A(L6), .B(L10), .C(L25) );
  MyXOR_32 XOR_L26 ( .A(L7), .B(L9), .C(L26) );
  MyXOR_31 XOR_L27 ( .A(L8), .B(L10), .C(L27) );
  MyXOR_30 XOR_L28 ( .A(L11), .B(L14), .C(L28) );
  MyXOR_29 XOR_L29 ( .A(L11), .B(L17), .C(L29) );
  MyXOR_28 XOR_S0 ( .A(L6), .B(L24), .C(y[7]) );
  MyXNOR_0 XOR_S1 ( .A(L16), .B(L26), .C(y[6]) );
  MyXNOR_3 XOR_S2 ( .A(L19), .B(L28), .C(y[5]) );
  MyXOR_27 XOR_S3 ( .A(L6), .B(L21), .C(y[4]) );
  MyXOR_26 XOR_S4 ( .A(L20), .B(L22), .C(y[3]) );
  MyXOR_25 XOR_S5 ( .A(L25), .B(L29), .C(y[2]) );
  MyXNOR_2 XOR_S6 ( .A(L13), .B(L27), .C(y[1]) );
  MyXNOR_1 XOR_S7 ( .A(L6), .B(L23), .C(y[0]) );
endmodule


module MyReg_0 ( D, C, Q );
  input D, C;
  output Q;


  DFF_X1 Q_reg ( .D(D), .CK(C), .Q(Q), .QN() );
endmodule


module MyReg_11 ( D, C, Q );
  input D, C;
  output Q;


  DFF_X1 Q_reg ( .D(D), .CK(C), .Q(Q), .QN() );
endmodule


module MyReg_10 ( D, C, Q );
  input D, C;
  output Q;


  DFF_X1 Q_reg ( .D(D), .CK(C), .Q(Q), .QN() );
endmodule


module MyReg_9 ( D, C, Q );
  input D, C;
  output Q;


  DFF_X1 Q_reg ( .D(D), .CK(C), .Q(Q), .QN() );
endmodule


module MyReg_8 ( D, C, Q );
  input D, C;
  output Q;


  DFF_X1 Q_reg ( .D(D), .CK(C), .Q(Q), .QN() );
endmodule


module MyReg_7 ( D, C, Q );
  input D, C;
  output Q;


  DFF_X1 Q_reg ( .D(D), .CK(C), .Q(Q), .QN() );
endmodule


module MyReg_6 ( D, C, Q );
  input D, C;
  output Q;


  DFF_X1 Q_reg ( .D(D), .CK(C), .Q(Q), .QN() );
endmodule


module MyReg_5 ( D, C, Q );
  input D, C;
  output Q;


  DFF_X1 Q_reg ( .D(D), .CK(C), .Q(Q), .QN() );
endmodule


module MyRegn_n8 ( D, C, Q );
  input [7:0] D;
  output [7:0] Q;
  input C;


  MyReg_0 gen_loop_0__R ( .D(D[0]), .C(C), .Q(Q[0]) );
  MyReg_11 gen_loop_1__R ( .D(D[1]), .C(C), .Q(Q[1]) );
  MyReg_10 gen_loop_2__R ( .D(D[2]), .C(C), .Q(Q[2]) );
  MyReg_9 gen_loop_3__R ( .D(D[3]), .C(C), .Q(Q[3]) );
  MyReg_8 gen_loop_4__R ( .D(D[4]), .C(C), .Q(Q[4]) );
  MyReg_7 gen_loop_5__R ( .D(D[5]), .C(C), .Q(Q[5]) );
  MyReg_6 gen_loop_6__R ( .D(D[6]), .C(C), .Q(Q[6]) );
  MyReg_5 gen_loop_7__R ( .D(D[7]), .C(C), .Q(Q[7]) );
endmodule


module MyXOR_8 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyAND_4 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyXOR_7 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyMUX_4 ( A0, A1, S, C );
  input A0, A1, S;
  output C;
  wire   X, Y;

  MyXOR_8 X1 ( .A(A0), .B(A1), .C(X) );
  MyAND_4 A ( .A(S), .B(X), .C(Y) );
  MyXOR_7 X2 ( .A(Y), .B(A0), .C(C) );
endmodule


module MyXOR_6 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyAND_3 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyXOR_5 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyMUX_3 ( A0, A1, S, C );
  input A0, A1, S;
  output C;
  wire   X, Y;

  MyXOR_6 X1 ( .A(A0), .B(A1), .C(X) );
  MyAND_3 A ( .A(S), .B(X), .C(Y) );
  MyXOR_5 X2 ( .A(Y), .B(A0), .C(C) );
endmodule


module MyXOR_4 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyAND_2 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyXOR_3 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyMUX_2 ( A0, A1, S, C );
  input A0, A1, S;
  output C;
  wire   X, Y;

  MyXOR_4 X1 ( .A(A0), .B(A1), .C(X) );
  MyAND_2 A ( .A(S), .B(X), .C(Y) );
  MyXOR_3 X2 ( .A(Y), .B(A0), .C(C) );
endmodule


module MyXOR_2 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyAND_1 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyXOR_1 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyMUX_1 ( A0, A1, S, C );
  input A0, A1, S;
  output C;
  wire   X, Y;

  MyXOR_2 X1 ( .A(A0), .B(A1), .C(X) );
  MyAND_1 A ( .A(S), .B(X), .C(Y) );
  MyXOR_1 X2 ( .A(Y), .B(A0), .C(C) );
endmodule


module MyMUXn_n4 ( A0, A1, S, C );
  input [3:0] A0;
  input [3:0] A1;
  output [3:0] C;
  input S;


  MyMUX_4 gen_loop_0__M ( .A0(A0[0]), .A1(A1[0]), .S(S), .C(C[0]) );
  MyMUX_3 gen_loop_1__M ( .A0(A0[1]), .A1(A1[1]), .S(S), .C(C[1]) );
  MyMUX_2 gen_loop_2__M ( .A0(A0[2]), .A1(A1[2]), .S(S), .C(C[2]) );
  MyMUX_1 gen_loop_3__M ( .A0(A0[3]), .A1(A1[3]), .S(S), .C(C[3]) );
endmodule


module MyReg_4 ( D, C, Q );
  input D, C;
  output Q;


  DFF_X1 Q_reg ( .D(D), .CK(C), .Q(Q), .QN() );
endmodule


module MyReg_3 ( D, C, Q );
  input D, C;
  output Q;


  DFF_X1 Q_reg ( .D(D), .CK(C), .Q(Q), .QN() );
endmodule


module MyReg_2 ( D, C, Q );
  input D, C;
  output Q;


  DFF_X1 Q_reg ( .D(D), .CK(C), .Q(Q), .QN() );
endmodule


module MyReg_1 ( D, C, Q );
  input D, C;
  output Q;


  DFF_X1 Q_reg ( .D(D), .CK(C), .Q(Q), .QN() );
endmodule


module MyRegn_n4 ( D, C, Q );
  input [3:0] D;
  output [3:0] Q;
  input C;


  MyReg_4 gen_loop_0__R ( .D(D[0]), .C(C), .Q(Q[0]) );
  MyReg_3 gen_loop_1__R ( .D(D[1]), .C(C), .Q(Q[1]) );
  MyReg_2 gen_loop_2__R ( .D(D[2]), .C(C), .Q(Q[2]) );
  MyReg_1 gen_loop_3__R ( .D(D[3]), .C(C), .Q(Q[3]) );
endmodule


module main ( value_in, start, rst, clk, value_out );
  (* AGEMA = "secure" *)   input [7:0] value_in;
  (* AGEMA = "constant" *) input [3:0] start;
  (* AGEMA = "clock" *)    input clk;
  (* AGEMA = "reset" *)    input rst;

  output [7:0] value_out;
  wire   n6, n9, n10;
  wire   [3:1] Inc_out;
  wire   [7:0] Sbox_in;
  wire   [7:0] Sbox_out;
  wire   [3:0] Inc_Reg;
  wire   [3:0] Inc_in;

  MyMUXn_n8 M1 ( .A0(value_in), .A1(value_out), .S(Inc_out[3]), .C(Sbox_in) );
  Sbox SboxInst ( .x(Sbox_in), .y(Sbox_out) );
  MyRegn_n8 R1 ( .D(Sbox_out), .C(clk), .Q(value_out) );
  MyMUXn_n4 M2 ( .A0(Inc_Reg), .A1(start), .S(rst), .C(Inc_in) );
  MyRegn_n4 R2 ( .D({Inc_out, n6}), .C(clk), .Q(Inc_Reg) );
  AND2_X1 U10 ( .A1(Inc_in[0]), .A2(Inc_in[1]), .ZN(n9) );
  INV_X1 U11 ( .A(Inc_in[0]), .ZN(n6) );
  XNOR2_X1 U12 ( .A(Inc_in[1]), .B(n6), .ZN(Inc_out[1]) );
  XOR2_X1 U13 ( .A(n9), .B(Inc_in[2]), .Z(Inc_out[2]) );
  NAND2_X1 U14 ( .A1(n9), .A2(Inc_in[2]), .ZN(n10) );
  XNOR2_X1 U15 ( .A(Inc_in[3]), .B(n10), .ZN(Inc_out[3]) );
endmodule

