
module XOR_forMUX_526 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_263 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_525 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_263 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_526 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_263 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_525 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_263 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_263 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_263 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_0 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n3, n1, n2;

  MUX_1bit_263 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_263 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n3) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n3), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_524 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_262 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_523 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_262 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_524 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_262 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_523 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_262 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_262 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_262 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_134 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_262 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_262 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_522 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_261 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_521 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_261 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_522 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_261 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_521 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_261 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_261 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_261 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_133 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_261 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_261 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_520 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_260 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_519 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_260 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_520 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_260 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_519 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_260 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_260 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_260 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_132 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_260 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_260 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_518 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_259 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_517 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_259 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_518 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_259 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_517 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_259 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_259 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_259 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_131 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_259 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_259 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module dflipfloplw_en_NBITS5 ( clk, en, n_reset, D, D_rst, Q );
  input [4:0] D;
  input [4:0] D_rst;
  output [4:0] Q;
  input clk, en, n_reset;


  ScanFFEN_0 SFF_0 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[0]), .DS(D[0]), 
        .Q(Q[0]) );
  ScanFFEN_134 SFF_1 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[1]), .DS(
        D[1]), .Q(Q[1]) );
  ScanFFEN_133 SFF_2 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[2]), .DS(
        D[2]), .Q(Q[2]) );
  ScanFFEN_132 SFF_3 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[3]), .DS(
        D[3]), .Q(Q[3]) );
  ScanFFEN_131 SFF_4 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[4]), .DS(
        D[4]), .Q(Q[4]) );
endmodule


module XOR_forMUX_516 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_258 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_515 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_258 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_516 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_258 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_515 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_258 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_258 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_258 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_130 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_258 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_258 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_514 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_257 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_513 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_257 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_514 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_257 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_513 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_257 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_257 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_257 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_129 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_257 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_257 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module dflipfloplw_en_NBITS2 ( clk, en, n_reset, D, D_rst, Q );
  input [1:0] D;
  input [1:0] D_rst;
  output [1:0] Q;
  input clk, en, n_reset;


  ScanFFEN_130 SFF_0 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[0]), .DS(
        D[0]), .Q(Q[0]) );
  ScanFFEN_129 SFF_1 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[1]), .DS(
        D[1]), .Q(Q[1]) );
endmodule


module MyDFFs_0 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_0 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_0 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module MyDFFs_272 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_272 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_272 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module controler ( clk, nReset, done, selMC, selSR, selXOR, enRCon, finalStep, 
        Final );
  input clk, nReset, Final;
  output done, selMC, selSR, selXOR, enRCon, finalStep;
  wire   n23, seq6Out_4_, n22, nRstSeq4, seq4In_1_, seq4Out_1_, n21, n5, n16,
         n20, n15, n2, n4, n6, n7, n9, n10, n11, n12, n13, n14, n17, n18, n19,
         n24;
  wire   [4:1] seq6In;

  dflipfloplw_en_NBITS5 seq6 ( .clk(clk), .en(n23), .n_reset(n6), .D({seq6In, 
        n22}), .D_rst({1'b1, 1'b0, 1'b1, 1'b0, 1'b1}), .Q({seq6Out_4_, seq6In}) );
  dflipfloplw_en_NBITS2 seq4 ( .clk(clk), .en(n23), .n_reset(nRstSeq4), .D({
        seq4In_1_, n2}), .D_rst({1'b0, 1'b1}), .Q({seq4Out_1_, seq4In_1_}) );
  MyDFF_0 CSselMC_reg ( .D(n21), .CK(clk), .Q(n5), .QN(n16) );
  MyDFF_272 CSenRC_reg ( .D(n20), .CK(clk), .Q(enRCon), .QN(n15) );
  NOR2_X2 U3 ( .A1(n16), .A2(n7), .ZN(selMC) );
  INV_X1 U4 ( .A(n4), .ZN(selSR) );
  OR2_X1 U5 ( .A1(done), .A2(n14), .ZN(n4) );
  AND2_X1 U6 ( .A1(finalStep), .A2(Final), .ZN(n13) );
  INV_X1 U7 ( .A(n23), .ZN(done) );
  NAND2_X1 U8 ( .A1(n6), .A2(n13), .ZN(n23) );
  NOR2_X1 U9 ( .A1(seq6In[2]), .A2(n11), .ZN(n24) );
  INV_X1 U10 ( .A(n7), .ZN(n6) );
  INV_X1 U11 ( .A(nReset), .ZN(n7) );
  NOR2_X1 U12 ( .A1(seq6In[1]), .A2(seq6In[4]), .ZN(n10) );
  NOR2_X1 U13 ( .A1(seq6In[3]), .A2(seq6Out_4_), .ZN(n9) );
  NAND2_X1 U14 ( .A1(n10), .A2(n9), .ZN(n11) );
  NAND2_X1 U15 ( .A1(n24), .A2(seq4In_1_), .ZN(n12) );
  NOR2_X1 U16 ( .A1(seq4Out_1_), .A2(n12), .ZN(finalStep) );
  NAND2_X1 U17 ( .A1(n6), .A2(n24), .ZN(n14) );
  NOR2_X1 U18 ( .A1(n15), .A2(n23), .ZN(n17) );
  OR2_X1 U19 ( .A1(selSR), .A2(n17), .ZN(n20) );
  NOR2_X1 U20 ( .A1(seq4Out_1_), .A2(seq4In_1_), .ZN(n18) );
  NOR2_X1 U21 ( .A1(n7), .A2(n18), .ZN(selXOR) );
  NAND2_X1 U22 ( .A1(selXOR), .A2(n5), .ZN(n19) );
  NAND2_X1 U23 ( .A1(n4), .A2(n19), .ZN(n21) );
  XNOR2_X1 U24 ( .A(seq6Out_4_), .B(seq6In[1]), .ZN(n22) );
  NOR2_X1 U25 ( .A1(n24), .A2(n7), .ZN(nRstSeq4) );
  INV_X1 U26 ( .A(seq4Out_1_), .ZN(n2) );
endmodule


module XOR_forMUX_0 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_0 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_733 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_0 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_0 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_0 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_733 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_732 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_366 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_731 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_366 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_732 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_366 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_731 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_730 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_365 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_729 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_365 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_730 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_365 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_729 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_728 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_364 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_727 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_364 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_728 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_364 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_727 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_726 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_363 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_725 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_363 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_726 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_363 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_725 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_724 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_362 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_723 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_362 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_724 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_362 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_723 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_722 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_361 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_721 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_361 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_722 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_361 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_721 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_720 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_360 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_719 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_360 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_720 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_360 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_719 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MUX_size8_0 ( S, D0, D1, Q );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q;
  input S;


  MUX_1bit_0 mux_inst_0 ( .S(S), .D0(D0[0]), .D1(D1[0]), .Q(Q[0]) );
  MUX_1bit_366 mux_inst_1 ( .S(S), .D0(D0[1]), .D1(D1[1]), .Q(Q[1]) );
  MUX_1bit_365 mux_inst_2 ( .S(S), .D0(D0[2]), .D1(D1[2]), .Q(Q[2]) );
  MUX_1bit_364 mux_inst_3 ( .S(S), .D0(D0[3]), .D1(D1[3]), .Q(Q[3]) );
  MUX_1bit_363 mux_inst_4 ( .S(S), .D0(D0[4]), .D1(D1[4]), .Q(Q[4]) );
  MUX_1bit_362 mux_inst_5 ( .S(S), .D0(D0[5]), .D1(D1[5]), .Q(Q[5]) );
  MUX_1bit_361 mux_inst_6 ( .S(S), .D0(D0[6]), .D1(D1[6]), .Q(Q[6]) );
  MUX_1bit_360 mux_inst_7 ( .S(S), .D0(D0[7]), .D1(D1[7]), .Q(Q[7]) );
endmodule


module XOR_forMUX_512 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_256 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_511 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_256 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_512 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_256 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_511 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_256 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_256 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_256 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_0 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_256 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_256 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_510 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_255 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_509 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_255 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_510 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_255 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_509 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_255 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_255 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_255 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_127 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_255 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_255 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_508 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_254 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_507 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_254 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_508 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_254 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_507 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_254 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_254 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_254 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_126 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_254 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_254 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_506 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_253 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_505 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_253 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_506 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_253 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_505 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_253 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_253 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_253 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_125 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_253 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_253 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_504 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_252 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_503 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_252 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_504 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_252 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_503 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_252 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_252 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_252 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_124 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_252 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_252 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_502 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_251 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_501 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_251 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_502 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_251 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_501 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_251 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_251 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_251 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_123 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_251 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_251 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_500 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_250 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_499 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_250 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_500 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_250 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_499 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_250 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_250 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_250 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_122 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_250 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_250 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_498 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_249 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_497 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_249 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_498 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_249 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_497 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_249 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_249 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_249 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_121 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_249 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_249 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module dflipfloplw_NBITS8_0 ( clk, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, n_reset;


  ScanFF_0 SFF_0 ( .CLK(clk), .SE(n_reset), .D(D_rst[0]), .DS(D[0]), .Q(Q[0])
         );
  ScanFF_127 SFF_1 ( .CLK(clk), .SE(n_reset), .D(D_rst[1]), .DS(D[1]), .Q(Q[1]) );
  ScanFF_126 SFF_2 ( .CLK(clk), .SE(n_reset), .D(D_rst[2]), .DS(D[2]), .Q(Q[2]) );
  ScanFF_125 SFF_3 ( .CLK(clk), .SE(n_reset), .D(D_rst[3]), .DS(D[3]), .Q(Q[3]) );
  ScanFF_124 SFF_4 ( .CLK(clk), .SE(n_reset), .D(D_rst[4]), .DS(D[4]), .Q(Q[4]) );
  ScanFF_123 SFF_5 ( .CLK(clk), .SE(n_reset), .D(D_rst[5]), .DS(D[5]), .Q(Q[5]) );
  ScanFF_122 SFF_6 ( .CLK(clk), .SE(n_reset), .D(D_rst[6]), .DS(D[6]), .Q(Q[6]) );
  ScanFF_121 SFF_7 ( .CLK(clk), .SE(n_reset), .D(D_rst[7]), .DS(D[7]), .Q(Q[7]) );
endmodule


module reg_NBITS_D08_NBITS_D18_0 ( clk, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_NBITS8_0 gff_1 ( .clk(clk), .n_reset(sel), .D(D1), .D_rst(D0), 
        .Q(Q0) );
endmodule


module XOR_forMUX_496 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_248 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_495 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_248 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_496 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_248 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_495 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_248 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_248 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_248 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_120 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_248 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_248 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_494 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_247 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_493 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_247 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_494 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_247 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_493 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_247 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_247 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_247 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_119 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_247 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_247 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_492 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_246 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_491 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_246 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_492 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_246 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_491 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_246 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_246 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_246 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_118 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_246 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_246 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_490 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_245 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_489 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_245 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_490 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_245 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_489 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_245 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_245 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_245 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_117 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_245 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_245 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_488 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_244 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_487 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_244 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_488 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_244 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_487 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_244 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_244 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_244 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_116 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_244 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_244 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_486 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_243 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_485 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_243 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_486 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_243 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_485 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_243 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_243 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_243 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_115 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_243 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_243 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_484 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_242 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_483 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_242 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_484 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_242 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_483 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_242 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_242 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_242 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_114 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_242 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_242 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_482 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_241 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_481 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_241 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_482 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_241 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_481 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_241 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_241 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_241 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_113 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_241 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_241 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module dflipfloplw_NBITS8_15 ( clk, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, n_reset;


  ScanFF_120 SFF_0 ( .CLK(clk), .SE(n_reset), .D(D_rst[0]), .DS(D[0]), .Q(Q[0]) );
  ScanFF_119 SFF_1 ( .CLK(clk), .SE(n_reset), .D(D_rst[1]), .DS(D[1]), .Q(Q[1]) );
  ScanFF_118 SFF_2 ( .CLK(clk), .SE(n_reset), .D(D_rst[2]), .DS(D[2]), .Q(Q[2]) );
  ScanFF_117 SFF_3 ( .CLK(clk), .SE(n_reset), .D(D_rst[3]), .DS(D[3]), .Q(Q[3]) );
  ScanFF_116 SFF_4 ( .CLK(clk), .SE(n_reset), .D(D_rst[4]), .DS(D[4]), .Q(Q[4]) );
  ScanFF_115 SFF_5 ( .CLK(clk), .SE(n_reset), .D(D_rst[5]), .DS(D[5]), .Q(Q[5]) );
  ScanFF_114 SFF_6 ( .CLK(clk), .SE(n_reset), .D(D_rst[6]), .DS(D[6]), .Q(Q[6]) );
  ScanFF_113 SFF_7 ( .CLK(clk), .SE(n_reset), .D(D_rst[7]), .DS(D[7]), .Q(Q[7]) );
endmodule


module reg_NBITS_D08_NBITS_D18_15 ( clk, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_NBITS8_15 gff_1 ( .clk(clk), .n_reset(sel), .D(D1), .D_rst(D0), 
        .Q(Q0) );
endmodule


module XOR_forMUX_480 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_240 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_479 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_240 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_480 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_240 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_479 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_240 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_240 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_240 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_112 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_240 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_240 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_478 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_239 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_477 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_239 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_478 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_239 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_477 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_239 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_239 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_239 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_111 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_239 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_239 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_476 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_238 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_475 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_238 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_476 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_238 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_475 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_238 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_238 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_238 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_110 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_238 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_238 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_474 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_237 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_473 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_237 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_474 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_237 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_473 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_237 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_237 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_237 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_109 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_237 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_237 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_472 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_236 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_471 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_236 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_472 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_236 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_471 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_236 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_236 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_236 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_108 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_236 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_236 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_470 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_235 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_469 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_235 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_470 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_235 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_469 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_235 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_235 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_235 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_107 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_235 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_235 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_468 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_234 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_467 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_234 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_468 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_234 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_467 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_234 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_234 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_234 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_106 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_234 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_234 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_466 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_233 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_465 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_233 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_466 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_233 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_465 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_233 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_233 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_233 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_105 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_233 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_233 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module dflipfloplw_NBITS8_14 ( clk, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, n_reset;


  ScanFF_112 SFF_0 ( .CLK(clk), .SE(n_reset), .D(D_rst[0]), .DS(D[0]), .Q(Q[0]) );
  ScanFF_111 SFF_1 ( .CLK(clk), .SE(n_reset), .D(D_rst[1]), .DS(D[1]), .Q(Q[1]) );
  ScanFF_110 SFF_2 ( .CLK(clk), .SE(n_reset), .D(D_rst[2]), .DS(D[2]), .Q(Q[2]) );
  ScanFF_109 SFF_3 ( .CLK(clk), .SE(n_reset), .D(D_rst[3]), .DS(D[3]), .Q(Q[3]) );
  ScanFF_108 SFF_4 ( .CLK(clk), .SE(n_reset), .D(D_rst[4]), .DS(D[4]), .Q(Q[4]) );
  ScanFF_107 SFF_5 ( .CLK(clk), .SE(n_reset), .D(D_rst[5]), .DS(D[5]), .Q(Q[5]) );
  ScanFF_106 SFF_6 ( .CLK(clk), .SE(n_reset), .D(D_rst[6]), .DS(D[6]), .Q(Q[6]) );
  ScanFF_105 SFF_7 ( .CLK(clk), .SE(n_reset), .D(D_rst[7]), .DS(D[7]), .Q(Q[7]) );
endmodule


module reg_NBITS_D08_NBITS_D18_14 ( clk, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_NBITS8_14 gff_1 ( .clk(clk), .n_reset(sel), .D(D1), .D_rst(D0), 
        .Q(Q0) );
endmodule


module XOR_forMUX_464 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_232 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_463 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_232 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_464 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_232 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_463 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_232 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_232 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_232 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_104 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_232 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_232 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_462 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_231 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_461 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_231 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_462 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_231 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_461 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_231 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_231 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_231 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_103 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_231 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_231 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_460 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_230 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_459 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_230 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_460 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_230 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_459 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_230 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_230 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_230 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_102 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_230 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_230 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_458 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_229 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_457 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_229 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_458 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_229 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_457 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_229 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_229 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_229 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_101 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_229 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_229 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_456 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_228 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_455 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_228 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_456 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_228 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_455 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_228 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_228 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_228 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_100 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_228 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_228 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_454 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_227 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_453 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_227 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_454 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_227 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_453 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_227 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_227 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_227 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_99 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_227 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_227 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_452 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_226 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_451 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_226 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_452 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_226 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_451 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_226 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_226 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_226 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_98 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_226 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_226 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_450 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_225 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_449 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_225 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_450 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_225 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_449 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_225 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_225 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_225 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_97 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_225 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_225 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module dflipfloplw_NBITS8_13 ( clk, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, n_reset;


  ScanFF_104 SFF_0 ( .CLK(clk), .SE(n_reset), .D(D_rst[0]), .DS(D[0]), .Q(Q[0]) );
  ScanFF_103 SFF_1 ( .CLK(clk), .SE(n_reset), .D(D_rst[1]), .DS(D[1]), .Q(Q[1]) );
  ScanFF_102 SFF_2 ( .CLK(clk), .SE(n_reset), .D(D_rst[2]), .DS(D[2]), .Q(Q[2]) );
  ScanFF_101 SFF_3 ( .CLK(clk), .SE(n_reset), .D(D_rst[3]), .DS(D[3]), .Q(Q[3]) );
  ScanFF_100 SFF_4 ( .CLK(clk), .SE(n_reset), .D(D_rst[4]), .DS(D[4]), .Q(Q[4]) );
  ScanFF_99 SFF_5 ( .CLK(clk), .SE(n_reset), .D(D_rst[5]), .DS(D[5]), .Q(Q[5])
         );
  ScanFF_98 SFF_6 ( .CLK(clk), .SE(n_reset), .D(D_rst[6]), .DS(D[6]), .Q(Q[6])
         );
  ScanFF_97 SFF_7 ( .CLK(clk), .SE(n_reset), .D(D_rst[7]), .DS(D[7]), .Q(Q[7])
         );
endmodule


module reg_NBITS_D08_NBITS_D18_13 ( clk, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_NBITS8_13 gff_1 ( .clk(clk), .n_reset(sel), .D(D1), .D_rst(D0), 
        .Q(Q0) );
endmodule


module XOR_forMUX_448 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_224 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_447 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_224 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_448 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_224 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_447 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_224 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_224 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_224 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_96 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_224 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_224 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_446 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_223 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_445 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_223 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_446 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_223 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_445 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_223 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_223 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_223 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_95 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_223 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_223 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_444 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_222 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_443 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_222 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_444 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_222 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_443 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_222 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_222 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_222 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_94 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_222 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_222 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_442 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_221 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_441 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_221 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_442 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_221 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_441 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_221 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_221 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_221 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_93 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_221 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_221 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_440 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_220 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_439 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_220 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_440 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_220 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_439 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_220 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_220 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_220 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_92 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_220 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_220 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_438 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_219 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_437 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_219 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_438 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_219 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_437 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_219 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_219 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_219 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_91 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_219 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_219 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_436 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_218 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_435 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_218 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_436 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_218 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_435 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_218 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_218 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_218 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_90 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_218 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_218 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_434 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_217 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_433 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_217 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_434 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_217 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_433 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_217 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_217 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_217 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_89 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_217 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_217 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module dflipfloplw_NBITS8_12 ( clk, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, n_reset;


  ScanFF_96 SFF_0 ( .CLK(clk), .SE(n_reset), .D(D_rst[0]), .DS(D[0]), .Q(Q[0])
         );
  ScanFF_95 SFF_1 ( .CLK(clk), .SE(n_reset), .D(D_rst[1]), .DS(D[1]), .Q(Q[1])
         );
  ScanFF_94 SFF_2 ( .CLK(clk), .SE(n_reset), .D(D_rst[2]), .DS(D[2]), .Q(Q[2])
         );
  ScanFF_93 SFF_3 ( .CLK(clk), .SE(n_reset), .D(D_rst[3]), .DS(D[3]), .Q(Q[3])
         );
  ScanFF_92 SFF_4 ( .CLK(clk), .SE(n_reset), .D(D_rst[4]), .DS(D[4]), .Q(Q[4])
         );
  ScanFF_91 SFF_5 ( .CLK(clk), .SE(n_reset), .D(D_rst[5]), .DS(D[5]), .Q(Q[5])
         );
  ScanFF_90 SFF_6 ( .CLK(clk), .SE(n_reset), .D(D_rst[6]), .DS(D[6]), .Q(Q[6])
         );
  ScanFF_89 SFF_7 ( .CLK(clk), .SE(n_reset), .D(D_rst[7]), .DS(D[7]), .Q(Q[7])
         );
endmodule


module reg_NBITS_D08_NBITS_D18_12 ( clk, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_NBITS8_12 gff_1 ( .clk(clk), .n_reset(sel), .D(D1), .D_rst(D0), 
        .Q(Q0) );
endmodule


module XOR_forMUX_432 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_216 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_431 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_216 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_432 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_216 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_431 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_216 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_216 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_216 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_88 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_216 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_216 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_430 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_215 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_429 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_215 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_430 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_215 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_429 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_215 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_215 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_215 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_87 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_215 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_215 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_428 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_214 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_427 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_214 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_428 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_214 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_427 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_214 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_214 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_214 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_86 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_214 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_214 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_426 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_213 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_425 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_213 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_426 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_213 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_425 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_213 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_213 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_213 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_85 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_213 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_213 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_424 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_212 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_423 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_212 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_424 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_212 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_423 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_212 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_212 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_212 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_84 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_212 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_212 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_422 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_211 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_421 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_211 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_422 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_211 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_421 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_211 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_211 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_211 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_83 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_211 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_211 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_420 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_210 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_419 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_210 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_420 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_210 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_419 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_210 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_210 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_210 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_82 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_210 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_210 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_418 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_209 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_417 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_209 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_418 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_209 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_417 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_209 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_209 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_209 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_81 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_209 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_209 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module dflipfloplw_NBITS8_11 ( clk, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, n_reset;


  ScanFF_88 SFF_0 ( .CLK(clk), .SE(n_reset), .D(D_rst[0]), .DS(D[0]), .Q(Q[0])
         );
  ScanFF_87 SFF_1 ( .CLK(clk), .SE(n_reset), .D(D_rst[1]), .DS(D[1]), .Q(Q[1])
         );
  ScanFF_86 SFF_2 ( .CLK(clk), .SE(n_reset), .D(D_rst[2]), .DS(D[2]), .Q(Q[2])
         );
  ScanFF_85 SFF_3 ( .CLK(clk), .SE(n_reset), .D(D_rst[3]), .DS(D[3]), .Q(Q[3])
         );
  ScanFF_84 SFF_4 ( .CLK(clk), .SE(n_reset), .D(D_rst[4]), .DS(D[4]), .Q(Q[4])
         );
  ScanFF_83 SFF_5 ( .CLK(clk), .SE(n_reset), .D(D_rst[5]), .DS(D[5]), .Q(Q[5])
         );
  ScanFF_82 SFF_6 ( .CLK(clk), .SE(n_reset), .D(D_rst[6]), .DS(D[6]), .Q(Q[6])
         );
  ScanFF_81 SFF_7 ( .CLK(clk), .SE(n_reset), .D(D_rst[7]), .DS(D[7]), .Q(Q[7])
         );
endmodule


module reg_NBITS_D08_NBITS_D18_11 ( clk, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_NBITS8_11 gff_1 ( .clk(clk), .n_reset(sel), .D(D1), .D_rst(D0), 
        .Q(Q0) );
endmodule


module XOR_forMUX_416 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_208 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_415 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_208 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_416 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_208 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_415 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_208 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_208 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_208 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_80 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_208 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_208 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_414 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_207 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_413 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_207 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_414 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_207 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_413 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_207 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_207 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_207 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_79 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_207 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_207 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_412 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_206 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_411 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_206 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_412 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_206 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_411 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_206 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_206 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_206 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_78 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_206 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_206 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_410 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_205 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_409 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_205 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_410 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_205 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_409 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_205 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_205 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_205 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_77 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_205 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_205 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_408 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_204 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_407 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_204 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_408 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_204 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_407 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_204 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_204 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_204 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_76 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_204 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_204 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_406 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_203 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_405 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_203 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_406 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_203 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_405 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_203 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_203 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_203 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_75 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_203 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_203 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_404 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_202 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_403 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_202 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_404 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_202 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_403 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_202 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_202 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_202 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_74 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_202 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_202 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_402 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_201 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_401 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_201 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_402 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_201 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_401 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_201 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_201 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_201 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_73 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_201 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_201 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module dflipfloplw_NBITS8_10 ( clk, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, n_reset;


  ScanFF_80 SFF_0 ( .CLK(clk), .SE(n_reset), .D(D_rst[0]), .DS(D[0]), .Q(Q[0])
         );
  ScanFF_79 SFF_1 ( .CLK(clk), .SE(n_reset), .D(D_rst[1]), .DS(D[1]), .Q(Q[1])
         );
  ScanFF_78 SFF_2 ( .CLK(clk), .SE(n_reset), .D(D_rst[2]), .DS(D[2]), .Q(Q[2])
         );
  ScanFF_77 SFF_3 ( .CLK(clk), .SE(n_reset), .D(D_rst[3]), .DS(D[3]), .Q(Q[3])
         );
  ScanFF_76 SFF_4 ( .CLK(clk), .SE(n_reset), .D(D_rst[4]), .DS(D[4]), .Q(Q[4])
         );
  ScanFF_75 SFF_5 ( .CLK(clk), .SE(n_reset), .D(D_rst[5]), .DS(D[5]), .Q(Q[5])
         );
  ScanFF_74 SFF_6 ( .CLK(clk), .SE(n_reset), .D(D_rst[6]), .DS(D[6]), .Q(Q[6])
         );
  ScanFF_73 SFF_7 ( .CLK(clk), .SE(n_reset), .D(D_rst[7]), .DS(D[7]), .Q(Q[7])
         );
endmodule


module reg_NBITS_D08_NBITS_D18_10 ( clk, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_NBITS8_10 gff_1 ( .clk(clk), .n_reset(sel), .D(D1), .D_rst(D0), 
        .Q(Q0) );
endmodule


module XOR_forMUX_400 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_200 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_399 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_200 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_400 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_200 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_399 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_200 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_200 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_200 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_72 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_200 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_200 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_398 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_199 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_397 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_199 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_398 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_199 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_397 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_199 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_199 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_199 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_71 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_199 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_199 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_396 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_198 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_395 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_198 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_396 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_198 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_395 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_198 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_198 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_198 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_70 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_198 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_198 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_394 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_197 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_393 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_197 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_394 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_197 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_393 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_197 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_197 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_197 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_69 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_197 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_197 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_392 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_196 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_391 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_196 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_392 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_196 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_391 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_196 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_196 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_196 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_68 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_196 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_196 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_390 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_195 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_389 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_195 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_390 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_195 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_389 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_195 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_195 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_195 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_67 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_195 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_195 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_388 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_194 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_387 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_194 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_388 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_194 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_387 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_194 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_194 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_194 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_66 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_194 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_194 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_386 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_193 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_385 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_193 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_386 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_193 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_385 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_193 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_193 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_193 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_65 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_193 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_193 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module dflipfloplw_NBITS8_9 ( clk, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, n_reset;


  ScanFF_72 SFF_0 ( .CLK(clk), .SE(n_reset), .D(D_rst[0]), .DS(D[0]), .Q(Q[0])
         );
  ScanFF_71 SFF_1 ( .CLK(clk), .SE(n_reset), .D(D_rst[1]), .DS(D[1]), .Q(Q[1])
         );
  ScanFF_70 SFF_2 ( .CLK(clk), .SE(n_reset), .D(D_rst[2]), .DS(D[2]), .Q(Q[2])
         );
  ScanFF_69 SFF_3 ( .CLK(clk), .SE(n_reset), .D(D_rst[3]), .DS(D[3]), .Q(Q[3])
         );
  ScanFF_68 SFF_4 ( .CLK(clk), .SE(n_reset), .D(D_rst[4]), .DS(D[4]), .Q(Q[4])
         );
  ScanFF_67 SFF_5 ( .CLK(clk), .SE(n_reset), .D(D_rst[5]), .DS(D[5]), .Q(Q[5])
         );
  ScanFF_66 SFF_6 ( .CLK(clk), .SE(n_reset), .D(D_rst[6]), .DS(D[6]), .Q(Q[6])
         );
  ScanFF_65 SFF_7 ( .CLK(clk), .SE(n_reset), .D(D_rst[7]), .DS(D[7]), .Q(Q[7])
         );
endmodule


module reg_NBITS_D08_NBITS_D18_9 ( clk, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_NBITS8_9 gff_1 ( .clk(clk), .n_reset(sel), .D(D1), .D_rst(D0), 
        .Q(Q0) );
endmodule


module XOR_forMUX_384 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_192 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_383 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_192 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_384 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_192 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_383 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_192 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_192 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_192 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_64 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_192 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_192 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_382 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_191 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_381 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_191 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_382 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_191 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_381 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_191 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_191 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_191 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_63 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_191 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_191 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_380 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_190 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_379 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_190 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_380 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_190 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_379 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_190 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_190 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_190 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_62 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_190 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_190 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_378 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_189 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_377 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_189 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_378 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_189 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_377 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_189 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_189 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_189 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_61 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_189 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_189 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_376 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_188 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_375 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_188 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_376 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_188 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_375 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_188 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_188 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_188 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_60 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_188 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_188 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_374 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_187 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_373 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_187 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_374 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_187 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_373 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_187 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_187 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_187 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_59 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_187 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_187 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_372 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_186 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_371 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_186 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_372 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_186 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_371 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_186 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_186 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_186 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_58 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_186 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_186 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_370 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_185 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_369 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_185 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_370 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_185 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_369 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_185 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_185 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_185 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_57 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_185 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_185 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module dflipfloplw_NBITS8_8 ( clk, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, n_reset;


  ScanFF_64 SFF_0 ( .CLK(clk), .SE(n_reset), .D(D_rst[0]), .DS(D[0]), .Q(Q[0])
         );
  ScanFF_63 SFF_1 ( .CLK(clk), .SE(n_reset), .D(D_rst[1]), .DS(D[1]), .Q(Q[1])
         );
  ScanFF_62 SFF_2 ( .CLK(clk), .SE(n_reset), .D(D_rst[2]), .DS(D[2]), .Q(Q[2])
         );
  ScanFF_61 SFF_3 ( .CLK(clk), .SE(n_reset), .D(D_rst[3]), .DS(D[3]), .Q(Q[3])
         );
  ScanFF_60 SFF_4 ( .CLK(clk), .SE(n_reset), .D(D_rst[4]), .DS(D[4]), .Q(Q[4])
         );
  ScanFF_59 SFF_5 ( .CLK(clk), .SE(n_reset), .D(D_rst[5]), .DS(D[5]), .Q(Q[5])
         );
  ScanFF_58 SFF_6 ( .CLK(clk), .SE(n_reset), .D(D_rst[6]), .DS(D[6]), .Q(Q[6])
         );
  ScanFF_57 SFF_7 ( .CLK(clk), .SE(n_reset), .D(D_rst[7]), .DS(D[7]), .Q(Q[7])
         );
endmodule


module reg_NBITS_D08_NBITS_D18_8 ( clk, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_NBITS8_8 gff_1 ( .clk(clk), .n_reset(sel), .D(D1), .D_rst(D0), 
        .Q(Q0) );
endmodule


module XOR_forMUX_368 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_184 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_367 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_184 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_368 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_184 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_367 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_184 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_184 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_184 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_56 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_184 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_184 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_366 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_183 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_365 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_183 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_366 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_183 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_365 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_183 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_183 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_183 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_55 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_183 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_183 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_364 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_182 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_363 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_182 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_364 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_182 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_363 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_182 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_182 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_182 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_54 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_182 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_182 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_362 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_181 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_361 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_181 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_362 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_181 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_361 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_181 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_181 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_181 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_53 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_181 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_181 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_360 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_180 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_359 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_180 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_360 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_180 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_359 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_180 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_180 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_180 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_52 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_180 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_180 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_358 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_179 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_357 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_179 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_358 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_179 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_357 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_179 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_179 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_179 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_51 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_179 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_179 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_356 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_178 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_355 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_178 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_356 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_178 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_355 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_178 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_178 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_178 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_50 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_178 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_178 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_354 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_177 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_353 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_177 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_354 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_177 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_353 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_177 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_177 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_177 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_49 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_177 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_177 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module dflipfloplw_NBITS8_7 ( clk, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, n_reset;


  ScanFF_56 SFF_0 ( .CLK(clk), .SE(n_reset), .D(D_rst[0]), .DS(D[0]), .Q(Q[0])
         );
  ScanFF_55 SFF_1 ( .CLK(clk), .SE(n_reset), .D(D_rst[1]), .DS(D[1]), .Q(Q[1])
         );
  ScanFF_54 SFF_2 ( .CLK(clk), .SE(n_reset), .D(D_rst[2]), .DS(D[2]), .Q(Q[2])
         );
  ScanFF_53 SFF_3 ( .CLK(clk), .SE(n_reset), .D(D_rst[3]), .DS(D[3]), .Q(Q[3])
         );
  ScanFF_52 SFF_4 ( .CLK(clk), .SE(n_reset), .D(D_rst[4]), .DS(D[4]), .Q(Q[4])
         );
  ScanFF_51 SFF_5 ( .CLK(clk), .SE(n_reset), .D(D_rst[5]), .DS(D[5]), .Q(Q[5])
         );
  ScanFF_50 SFF_6 ( .CLK(clk), .SE(n_reset), .D(D_rst[6]), .DS(D[6]), .Q(Q[6])
         );
  ScanFF_49 SFF_7 ( .CLK(clk), .SE(n_reset), .D(D_rst[7]), .DS(D[7]), .Q(Q[7])
         );
endmodule


module reg_NBITS_D08_NBITS_D18_7 ( clk, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_NBITS8_7 gff_1 ( .clk(clk), .n_reset(sel), .D(D1), .D_rst(D0), 
        .Q(Q0) );
endmodule


module XOR_forMUX_352 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_176 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_351 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_176 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_352 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_176 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_351 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_176 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_176 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_176 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_48 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_176 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_176 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_350 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_175 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_349 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_175 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_350 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_175 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_349 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_175 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_175 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_175 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_47 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_175 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_175 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_348 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_174 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_347 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_174 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_348 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_174 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_347 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_174 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_174 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_174 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_46 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_174 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_174 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_346 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_173 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_345 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_173 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_346 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_173 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_345 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_173 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_173 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_173 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_45 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_173 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_173 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_344 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_172 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_343 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_172 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_344 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_172 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_343 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_172 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_172 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_172 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_44 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_172 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_172 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_342 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_171 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_341 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_171 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_342 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_171 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_341 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_171 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_171 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_171 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_43 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_171 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_171 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_340 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_170 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_339 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_170 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_340 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_170 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_339 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_170 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_170 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_170 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_42 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_170 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_170 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_338 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_169 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_337 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_169 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_338 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_169 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_337 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_169 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_169 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_169 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_41 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_169 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_169 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module dflipfloplw_NBITS8_6 ( clk, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, n_reset;


  ScanFF_48 SFF_0 ( .CLK(clk), .SE(n_reset), .D(D_rst[0]), .DS(D[0]), .Q(Q[0])
         );
  ScanFF_47 SFF_1 ( .CLK(clk), .SE(n_reset), .D(D_rst[1]), .DS(D[1]), .Q(Q[1])
         );
  ScanFF_46 SFF_2 ( .CLK(clk), .SE(n_reset), .D(D_rst[2]), .DS(D[2]), .Q(Q[2])
         );
  ScanFF_45 SFF_3 ( .CLK(clk), .SE(n_reset), .D(D_rst[3]), .DS(D[3]), .Q(Q[3])
         );
  ScanFF_44 SFF_4 ( .CLK(clk), .SE(n_reset), .D(D_rst[4]), .DS(D[4]), .Q(Q[4])
         );
  ScanFF_43 SFF_5 ( .CLK(clk), .SE(n_reset), .D(D_rst[5]), .DS(D[5]), .Q(Q[5])
         );
  ScanFF_42 SFF_6 ( .CLK(clk), .SE(n_reset), .D(D_rst[6]), .DS(D[6]), .Q(Q[6])
         );
  ScanFF_41 SFF_7 ( .CLK(clk), .SE(n_reset), .D(D_rst[7]), .DS(D[7]), .Q(Q[7])
         );
endmodule


module reg_NBITS_D08_NBITS_D18_6 ( clk, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_NBITS8_6 gff_1 ( .clk(clk), .n_reset(sel), .D(D1), .D_rst(D0), 
        .Q(Q0) );
endmodule


module XOR_forMUX_336 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_168 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_335 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_168 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_336 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_168 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_335 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_168 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_168 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_168 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_40 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_168 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_168 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_334 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_167 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_333 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_167 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_334 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_167 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_333 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_167 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_167 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_167 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_39 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_167 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_167 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_332 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_166 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_331 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_166 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_332 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_166 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_331 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_166 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_166 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_166 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_38 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_166 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_166 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_330 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_165 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_329 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_165 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_330 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_165 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_329 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_165 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_165 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_165 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_37 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_165 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_165 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_328 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_164 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_327 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_164 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_328 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_164 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_327 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_164 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_164 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_164 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_36 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_164 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_164 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_326 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_163 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_325 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_163 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_326 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_163 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_325 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_163 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_163 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_163 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_35 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_163 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_163 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_324 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_162 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_323 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_162 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_324 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_162 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_323 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_162 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_162 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_162 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_34 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_162 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_162 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_322 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_161 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_321 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_161 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_322 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_161 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_321 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_161 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_161 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_161 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_33 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_161 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_161 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module dflipfloplw_NBITS8_5 ( clk, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, n_reset;


  ScanFF_40 SFF_0 ( .CLK(clk), .SE(n_reset), .D(D_rst[0]), .DS(D[0]), .Q(Q[0])
         );
  ScanFF_39 SFF_1 ( .CLK(clk), .SE(n_reset), .D(D_rst[1]), .DS(D[1]), .Q(Q[1])
         );
  ScanFF_38 SFF_2 ( .CLK(clk), .SE(n_reset), .D(D_rst[2]), .DS(D[2]), .Q(Q[2])
         );
  ScanFF_37 SFF_3 ( .CLK(clk), .SE(n_reset), .D(D_rst[3]), .DS(D[3]), .Q(Q[3])
         );
  ScanFF_36 SFF_4 ( .CLK(clk), .SE(n_reset), .D(D_rst[4]), .DS(D[4]), .Q(Q[4])
         );
  ScanFF_35 SFF_5 ( .CLK(clk), .SE(n_reset), .D(D_rst[5]), .DS(D[5]), .Q(Q[5])
         );
  ScanFF_34 SFF_6 ( .CLK(clk), .SE(n_reset), .D(D_rst[6]), .DS(D[6]), .Q(Q[6])
         );
  ScanFF_33 SFF_7 ( .CLK(clk), .SE(n_reset), .D(D_rst[7]), .DS(D[7]), .Q(Q[7])
         );
endmodule


module reg_NBITS_D08_NBITS_D18_5 ( clk, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_NBITS8_5 gff_1 ( .clk(clk), .n_reset(sel), .D(D1), .D_rst(D0), 
        .Q(Q0) );
endmodule


module XOR_forMUX_320 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_160 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_319 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_160 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_320 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_160 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_319 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_160 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_160 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_160 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_32 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_160 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_160 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_318 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_159 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_317 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_159 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_318 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_159 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_317 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_159 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_159 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_159 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_31 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_159 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_159 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_316 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_158 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_315 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_158 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_316 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_158 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_315 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_158 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_158 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_158 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_30 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_158 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_158 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_314 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_157 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_313 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_157 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_314 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_157 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_313 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_157 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_157 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_157 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_29 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_157 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_157 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_312 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_156 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_311 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_156 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_312 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_156 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_311 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_156 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_156 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_156 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_28 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_156 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_156 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_310 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_155 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_309 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_155 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_310 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_155 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_309 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_155 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_155 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_155 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_27 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_155 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_155 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_308 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_154 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_307 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_154 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_308 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_154 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_307 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_154 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_154 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_154 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_26 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_154 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_154 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_306 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_153 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_305 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_153 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_306 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_153 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_305 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_153 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_153 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_153 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_25 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_153 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_153 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module dflipfloplw_NBITS8_4 ( clk, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, n_reset;


  ScanFF_32 SFF_0 ( .CLK(clk), .SE(n_reset), .D(D_rst[0]), .DS(D[0]), .Q(Q[0])
         );
  ScanFF_31 SFF_1 ( .CLK(clk), .SE(n_reset), .D(D_rst[1]), .DS(D[1]), .Q(Q[1])
         );
  ScanFF_30 SFF_2 ( .CLK(clk), .SE(n_reset), .D(D_rst[2]), .DS(D[2]), .Q(Q[2])
         );
  ScanFF_29 SFF_3 ( .CLK(clk), .SE(n_reset), .D(D_rst[3]), .DS(D[3]), .Q(Q[3])
         );
  ScanFF_28 SFF_4 ( .CLK(clk), .SE(n_reset), .D(D_rst[4]), .DS(D[4]), .Q(Q[4])
         );
  ScanFF_27 SFF_5 ( .CLK(clk), .SE(n_reset), .D(D_rst[5]), .DS(D[5]), .Q(Q[5])
         );
  ScanFF_26 SFF_6 ( .CLK(clk), .SE(n_reset), .D(D_rst[6]), .DS(D[6]), .Q(Q[6])
         );
  ScanFF_25 SFF_7 ( .CLK(clk), .SE(n_reset), .D(D_rst[7]), .DS(D[7]), .Q(Q[7])
         );
endmodule


module reg_NBITS_D08_NBITS_D18_4 ( clk, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_NBITS8_4 gff_1 ( .clk(clk), .n_reset(sel), .D(D1), .D_rst(D0), 
        .Q(Q0) );
endmodule


module XOR_forMUX_304 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_152 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_303 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_152 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_304 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_152 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_303 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_152 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_152 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_152 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_24 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_152 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_152 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_302 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_151 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_301 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_151 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_302 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_151 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_301 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_151 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_151 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_151 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_23 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_151 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_151 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_300 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_150 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_299 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_150 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_300 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_150 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_299 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_150 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_150 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_150 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_22 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_150 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_150 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_298 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_149 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_297 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_149 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_298 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_149 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_297 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_149 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_149 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_149 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_21 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_149 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_149 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_296 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_148 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_295 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_148 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_296 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_148 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_295 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_148 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_148 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_148 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_20 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_148 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_148 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_294 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_147 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_293 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_147 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_294 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_147 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_293 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_147 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_147 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_147 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_19 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_147 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_147 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_292 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_146 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_291 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_146 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_292 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_146 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_291 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_146 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_146 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_146 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_18 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_146 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_146 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_290 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_145 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_289 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_145 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_290 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_145 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_289 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_145 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_145 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_145 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_17 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_145 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_145 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module dflipfloplw_NBITS8_3 ( clk, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, n_reset;


  ScanFF_24 SFF_0 ( .CLK(clk), .SE(n_reset), .D(D_rst[0]), .DS(D[0]), .Q(Q[0])
         );
  ScanFF_23 SFF_1 ( .CLK(clk), .SE(n_reset), .D(D_rst[1]), .DS(D[1]), .Q(Q[1])
         );
  ScanFF_22 SFF_2 ( .CLK(clk), .SE(n_reset), .D(D_rst[2]), .DS(D[2]), .Q(Q[2])
         );
  ScanFF_21 SFF_3 ( .CLK(clk), .SE(n_reset), .D(D_rst[3]), .DS(D[3]), .Q(Q[3])
         );
  ScanFF_20 SFF_4 ( .CLK(clk), .SE(n_reset), .D(D_rst[4]), .DS(D[4]), .Q(Q[4])
         );
  ScanFF_19 SFF_5 ( .CLK(clk), .SE(n_reset), .D(D_rst[5]), .DS(D[5]), .Q(Q[5])
         );
  ScanFF_18 SFF_6 ( .CLK(clk), .SE(n_reset), .D(D_rst[6]), .DS(D[6]), .Q(Q[6])
         );
  ScanFF_17 SFF_7 ( .CLK(clk), .SE(n_reset), .D(D_rst[7]), .DS(D[7]), .Q(Q[7])
         );
endmodule


module reg_NBITS_D08_NBITS_D18_3 ( clk, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_NBITS8_3 gff_1 ( .clk(clk), .n_reset(sel), .D(D1), .D_rst(D0), 
        .Q(Q0) );
endmodule


module XOR_forMUX_288 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_144 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_287 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_144 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_288 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_144 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_287 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_144 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_144 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_144 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_16 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_144 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_144 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_286 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_143 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_285 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_143 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_286 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_143 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_285 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_143 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_143 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_143 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_15 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_143 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_143 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_284 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_142 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_283 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_142 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_284 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_142 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_283 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_142 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_142 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_142 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_14 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_142 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_142 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_282 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_141 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_281 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_141 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_282 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_141 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_281 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_141 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_141 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_141 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_13 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_141 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_141 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_280 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_140 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_279 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_140 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_280 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_140 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_279 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_140 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_140 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_140 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_12 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_140 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_140 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_278 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_139 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_277 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_139 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_278 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_139 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_277 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_139 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_139 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_139 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_11 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_139 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_139 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_276 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_138 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_275 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_138 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_276 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_138 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_275 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_138 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_138 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_138 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_10 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_138 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_138 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_274 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_137 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_273 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_137 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_274 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_137 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_273 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_137 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_137 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_137 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_9 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_137 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_137 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module dflipfloplw_NBITS8_2 ( clk, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, n_reset;


  ScanFF_16 SFF_0 ( .CLK(clk), .SE(n_reset), .D(D_rst[0]), .DS(D[0]), .Q(Q[0])
         );
  ScanFF_15 SFF_1 ( .CLK(clk), .SE(n_reset), .D(D_rst[1]), .DS(D[1]), .Q(Q[1])
         );
  ScanFF_14 SFF_2 ( .CLK(clk), .SE(n_reset), .D(D_rst[2]), .DS(D[2]), .Q(Q[2])
         );
  ScanFF_13 SFF_3 ( .CLK(clk), .SE(n_reset), .D(D_rst[3]), .DS(D[3]), .Q(Q[3])
         );
  ScanFF_12 SFF_4 ( .CLK(clk), .SE(n_reset), .D(D_rst[4]), .DS(D[4]), .Q(Q[4])
         );
  ScanFF_11 SFF_5 ( .CLK(clk), .SE(n_reset), .D(D_rst[5]), .DS(D[5]), .Q(Q[5])
         );
  ScanFF_10 SFF_6 ( .CLK(clk), .SE(n_reset), .D(D_rst[6]), .DS(D[6]), .Q(Q[6])
         );
  ScanFF_9 SFF_7 ( .CLK(clk), .SE(n_reset), .D(D_rst[7]), .DS(D[7]), .Q(Q[7])
         );
endmodule


module reg_NBITS_D08_NBITS_D18_2 ( clk, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_NBITS8_2 gff_1 ( .clk(clk), .n_reset(sel), .D(D1), .D_rst(D0), 
        .Q(Q0) );
endmodule


module XOR_forMUX_272 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_136 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_271 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_136 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_272 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_136 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_271 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_136 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_136 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_136 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_8 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_136 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_136 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_270 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_135 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_269 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_135 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_270 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_135 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_269 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_135 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_135 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_135 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_7 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_135 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_135 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_268 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_134 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_267 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_134 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_268 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_134 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_267 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_134 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_134 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_134 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_6 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_134 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_134 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_266 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_133 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_265 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_133 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_266 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_133 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_265 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_133 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_133 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_133 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_5 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_133 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_133 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_264 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_132 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_263 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_132 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_264 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_132 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_263 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_132 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_132 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_132 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_4 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_132 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_132 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_262 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_131 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_261 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_131 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_262 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_131 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_261 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_131 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_131 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_131 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_3 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_131 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_131 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_260 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_130 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_259 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_130 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_260 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_130 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_259 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_130 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_130 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_130 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_2 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_130 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_130 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module XOR_forMUX_258 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_129 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_257 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_129 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_258 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_129 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_257 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_129 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_129 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_129 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFF_1 ( CLK, SE, D, DS, Q );
  input CLK, SE, D, DS;
  output Q;
  wire   QD;

  MUX_1bit_129 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_129 Q_reg ( .D(QD), .CK(CLK), .Q(Q), .QN() );
endmodule


module dflipfloplw_NBITS8_1 ( clk, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, n_reset;


  ScanFF_8 SFF_0 ( .CLK(clk), .SE(n_reset), .D(D_rst[0]), .DS(D[0]), .Q(Q[0])
         );
  ScanFF_7 SFF_1 ( .CLK(clk), .SE(n_reset), .D(D_rst[1]), .DS(D[1]), .Q(Q[1])
         );
  ScanFF_6 SFF_2 ( .CLK(clk), .SE(n_reset), .D(D_rst[2]), .DS(D[2]), .Q(Q[2])
         );
  ScanFF_5 SFF_3 ( .CLK(clk), .SE(n_reset), .D(D_rst[3]), .DS(D[3]), .Q(Q[3])
         );
  ScanFF_4 SFF_4 ( .CLK(clk), .SE(n_reset), .D(D_rst[4]), .DS(D[4]), .Q(Q[4])
         );
  ScanFF_3 SFF_5 ( .CLK(clk), .SE(n_reset), .D(D_rst[5]), .DS(D[5]), .Q(Q[5])
         );
  ScanFF_2 SFF_6 ( .CLK(clk), .SE(n_reset), .D(D_rst[6]), .DS(D[6]), .Q(Q[6])
         );
  ScanFF_1 SFF_7 ( .CLK(clk), .SE(n_reset), .D(D_rst[7]), .DS(D[7]), .Q(Q[7])
         );
endmodule


module reg_NBITS_D08_NBITS_D18_1 ( clk, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_NBITS8_1 gff_1 ( .clk(clk), .n_reset(sel), .D(D1), .D_rst(D0), 
        .Q(Q0) );
endmodule


module XOR_forMUX_638 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_319 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_637 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_319 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_638 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_319 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_637 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_636 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_318 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_635 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_318 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_636 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_318 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_635 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_634 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_317 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_633 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_317 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_634 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_317 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_633 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_632 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_316 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_631 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_316 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_632 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_316 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_631 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_630 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_315 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_629 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_315 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_630 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_315 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_629 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_628 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_314 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_627 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_314 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_628 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_314 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_627 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_626 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_313 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_625 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_313 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_626 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_313 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_625 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_624 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_312 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_623 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_312 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_624 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_312 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_623 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MUX_size8_7 ( S, D0, D1, Q );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q;
  input S;


  MUX_1bit_319 mux_inst_0 ( .S(S), .D0(D0[0]), .D1(D1[0]), .Q(Q[0]) );
  MUX_1bit_318 mux_inst_1 ( .S(S), .D0(D0[1]), .D1(D1[1]), .Q(Q[1]) );
  MUX_1bit_317 mux_inst_2 ( .S(S), .D0(D0[2]), .D1(D1[2]), .Q(Q[2]) );
  MUX_1bit_316 mux_inst_3 ( .S(S), .D0(D0[3]), .D1(D1[3]), .Q(Q[3]) );
  MUX_1bit_315 mux_inst_4 ( .S(S), .D0(D0[4]), .D1(D1[4]), .Q(Q[4]) );
  MUX_1bit_314 mux_inst_5 ( .S(S), .D0(D0[5]), .D1(D1[5]), .Q(Q[5]) );
  MUX_1bit_313 mux_inst_6 ( .S(S), .D0(D0[6]), .D1(D1[6]), .Q(Q[6]) );
  MUX_1bit_312 mux_inst_7 ( .S(S), .D0(D0[7]), .D1(D1[7]), .Q(Q[7]) );
endmodule


module XOR_forMUX_622 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_311 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_621 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_311 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_622 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_311 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_621 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_620 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_310 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_619 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_310 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_620 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_310 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_619 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_618 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_309 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_617 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_309 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_618 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_309 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_617 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_616 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_308 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_615 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_308 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_616 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_308 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_615 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_614 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_307 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_613 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_307 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_614 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_307 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_613 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_612 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_306 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_611 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_306 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_612 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_306 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_611 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_610 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_305 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_609 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_305 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_610 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_305 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_609 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_608 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_304 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_607 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_304 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_608 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_304 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_607 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MUX_size8_6 ( S, D0, D1, Q );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q;
  input S;


  MUX_1bit_311 mux_inst_0 ( .S(S), .D0(D0[0]), .D1(D1[0]), .Q(Q[0]) );
  MUX_1bit_310 mux_inst_1 ( .S(S), .D0(D0[1]), .D1(D1[1]), .Q(Q[1]) );
  MUX_1bit_309 mux_inst_2 ( .S(S), .D0(D0[2]), .D1(D1[2]), .Q(Q[2]) );
  MUX_1bit_308 mux_inst_3 ( .S(S), .D0(D0[3]), .D1(D1[3]), .Q(Q[3]) );
  MUX_1bit_307 mux_inst_4 ( .S(S), .D0(D0[4]), .D1(D1[4]), .Q(Q[4]) );
  MUX_1bit_306 mux_inst_5 ( .S(S), .D0(D0[5]), .D1(D1[5]), .Q(Q[5]) );
  MUX_1bit_305 mux_inst_6 ( .S(S), .D0(D0[6]), .D1(D1[6]), .Q(Q[6]) );
  MUX_1bit_304 mux_inst_7 ( .S(S), .D0(D0[7]), .D1(D1[7]), .Q(Q[7]) );
endmodule


module XOR_forMUX_606 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_303 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_605 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_303 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_606 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_303 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_605 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_604 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_302 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_603 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_302 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_604 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_302 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_603 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_602 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_301 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_601 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_301 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_602 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_301 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_601 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_600 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_300 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_599 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_300 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_600 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_300 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_599 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_598 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_299 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_597 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_299 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_598 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_299 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_597 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_596 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_298 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_595 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_298 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_596 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_298 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_595 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_594 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_297 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_593 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_297 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_594 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_297 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_593 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_592 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_296 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_591 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_296 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_592 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_296 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_591 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MUX_size8_5 ( S, D0, D1, Q );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q;
  input S;


  MUX_1bit_303 mux_inst_0 ( .S(S), .D0(D0[0]), .D1(D1[0]), .Q(Q[0]) );
  MUX_1bit_302 mux_inst_1 ( .S(S), .D0(D0[1]), .D1(D1[1]), .Q(Q[1]) );
  MUX_1bit_301 mux_inst_2 ( .S(S), .D0(D0[2]), .D1(D1[2]), .Q(Q[2]) );
  MUX_1bit_300 mux_inst_3 ( .S(S), .D0(D0[3]), .D1(D1[3]), .Q(Q[3]) );
  MUX_1bit_299 mux_inst_4 ( .S(S), .D0(D0[4]), .D1(D1[4]), .Q(Q[4]) );
  MUX_1bit_298 mux_inst_5 ( .S(S), .D0(D0[5]), .D1(D1[5]), .Q(Q[5]) );
  MUX_1bit_297 mux_inst_6 ( .S(S), .D0(D0[6]), .D1(D1[6]), .Q(Q[6]) );
  MUX_1bit_296 mux_inst_7 ( .S(S), .D0(D0[7]), .D1(D1[7]), .Q(Q[7]) );
endmodule


module XOR_forMUX_590 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_295 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_589 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_295 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_590 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_295 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_589 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_588 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_294 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_587 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_294 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_588 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_294 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_587 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_586 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_293 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_585 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_293 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_586 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_293 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_585 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_584 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_292 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_583 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_292 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_584 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_292 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_583 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_582 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_291 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_581 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_291 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_582 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_291 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_581 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_580 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_290 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_579 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_290 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_580 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_290 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_579 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_578 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_289 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_577 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_289 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_578 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_289 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_577 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_576 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_288 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_575 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_288 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_576 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_288 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_575 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MUX_size8_4 ( S, D0, D1, Q );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q;
  input S;


  MUX_1bit_295 mux_inst_0 ( .S(S), .D0(D0[0]), .D1(D1[0]), .Q(Q[0]) );
  MUX_1bit_294 mux_inst_1 ( .S(S), .D0(D0[1]), .D1(D1[1]), .Q(Q[1]) );
  MUX_1bit_293 mux_inst_2 ( .S(S), .D0(D0[2]), .D1(D1[2]), .Q(Q[2]) );
  MUX_1bit_292 mux_inst_3 ( .S(S), .D0(D0[3]), .D1(D1[3]), .Q(Q[3]) );
  MUX_1bit_291 mux_inst_4 ( .S(S), .D0(D0[4]), .D1(D1[4]), .Q(Q[4]) );
  MUX_1bit_290 mux_inst_5 ( .S(S), .D0(D0[5]), .D1(D1[5]), .Q(Q[5]) );
  MUX_1bit_289 mux_inst_6 ( .S(S), .D0(D0[6]), .D1(D1[6]), .Q(Q[6]) );
  MUX_1bit_288 mux_inst_7 ( .S(S), .D0(D0[7]), .D1(D1[7]), .Q(Q[7]) );
endmodule


module XOR_forMUX_574 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_287 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_573 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_287 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_574 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_287 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_573 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_572 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_286 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_571 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_286 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_572 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_286 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_571 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_570 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_285 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_569 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_285 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_570 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_285 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_569 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_568 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_284 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_567 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_284 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_568 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_284 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_567 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_566 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_283 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_565 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_283 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_566 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_283 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_565 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_564 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_282 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_563 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_282 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_564 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_282 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_563 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_562 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_281 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_561 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_281 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_562 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_281 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_561 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_560 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_280 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_559 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_280 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_560 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_280 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_559 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MUX_size8_3 ( S, D0, D1, Q );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q;
  input S;


  MUX_1bit_287 mux_inst_0 ( .S(S), .D0(D0[0]), .D1(D1[0]), .Q(Q[0]) );
  MUX_1bit_286 mux_inst_1 ( .S(S), .D0(D0[1]), .D1(D1[1]), .Q(Q[1]) );
  MUX_1bit_285 mux_inst_2 ( .S(S), .D0(D0[2]), .D1(D1[2]), .Q(Q[2]) );
  MUX_1bit_284 mux_inst_3 ( .S(S), .D0(D0[3]), .D1(D1[3]), .Q(Q[3]) );
  MUX_1bit_283 mux_inst_4 ( .S(S), .D0(D0[4]), .D1(D1[4]), .Q(Q[4]) );
  MUX_1bit_282 mux_inst_5 ( .S(S), .D0(D0[5]), .D1(D1[5]), .Q(Q[5]) );
  MUX_1bit_281 mux_inst_6 ( .S(S), .D0(D0[6]), .D1(D1[6]), .Q(Q[6]) );
  MUX_1bit_280 mux_inst_7 ( .S(S), .D0(D0[7]), .D1(D1[7]), .Q(Q[7]) );
endmodule


module State ( clk, selSR, selMC, inputSer, nReset, input0, inMC, output0, 
        outMC );
  input [7:0] inputSer;
  input [7:0] input0;
  input [31:0] inMC;
  output [7:0] output0;
  output [31:0] outMC;
  input clk, selSR, selMC, nReset;
  wire   nReset_selMC, n6, n7, n8;
  wire   [7:0] outS01ser;
  wire   [7:0] outS00par;
  wire   [7:0] outS02ser;
  wire   [7:0] outS01par;
  wire   [7:0] outS03ser;
  wire   [7:0] outS02par;
  wire   [7:0] inS03ser;
  wire   [7:0] outS03par;
  wire   [7:0] outS11ser;
  wire   [7:0] outS11par;
  wire   [7:0] outS10par;
  wire   [7:0] outS12ser;
  wire   [7:0] outS12par;
  wire   [7:0] outS13ser;
  wire   [7:0] outS13par;
  wire   [7:0] inS13ser;
  wire   [7:0] outS21ser;
  wire   [7:0] outS22par;
  wire   [7:0] outS20par;
  wire   [7:0] outS22ser;
  wire   [7:0] outS23par;
  wire   [7:0] outS21par;
  wire   [7:0] outS23ser;
  wire   [7:0] inS23ser;
  wire   [7:0] outS31ser;
  wire   [7:0] outS33par;
  wire   [7:0] outS30par;
  wire   [7:0] outS32ser;
  wire   [7:0] outS31par;
  wire   [7:0] outS33ser;
  wire   [7:0] outS32par;
  wire   [7:0] inS33ser;
  wire   [7:0] input_MC;
  assign outMC[31] = output0[7];
  assign outMC[30] = output0[6];
  assign outMC[29] = output0[5];
  assign outMC[28] = output0[4];
  assign outMC[27] = output0[3];
  assign outMC[26] = output0[2];
  assign outMC[25] = output0[1];
  assign outMC[24] = output0[0];

  reg_NBITS_D08_NBITS_D18_0 S00reg ( .clk(clk), .sel(n7), .D0(outS01ser), .D1(
        outS00par), .Q0(output0), .Q1(outS00par) );
  reg_NBITS_D08_NBITS_D18_15 S01reg ( .clk(clk), .sel(selSR), .D0(outS02ser), 
        .D1(outS01par), .Q0(outS01ser), .Q1(outS01par) );
  reg_NBITS_D08_NBITS_D18_14 S02reg ( .clk(clk), .sel(selSR), .D0(outS03ser), 
        .D1(outS02par), .Q0(outS02ser), .Q1(outS02par) );
  reg_NBITS_D08_NBITS_D18_13 S03reg ( .clk(clk), .sel(n6), .D0(inS03ser), .D1(
        outS03par), .Q0(outS03ser), .Q1(outS03par) );
  reg_NBITS_D08_NBITS_D18_12 S10reg ( .clk(clk), .sel(n7), .D0(outS11ser), 
        .D1(outS11par), .Q0(outMC[23:16]), .Q1(outS10par) );
  reg_NBITS_D08_NBITS_D18_11 S11reg ( .clk(clk), .sel(n7), .D0(outS12ser), 
        .D1(outS12par), .Q0(outS11ser), .Q1(outS11par) );
  reg_NBITS_D08_NBITS_D18_10 S12reg ( .clk(clk), .sel(n7), .D0(outS13ser), 
        .D1(outS13par), .Q0(outS12ser), .Q1(outS12par) );
  reg_NBITS_D08_NBITS_D18_9 S13reg ( .clk(clk), .sel(n7), .D0(inS13ser), .D1(
        outS10par), .Q0(outS13ser), .Q1(outS13par) );
  reg_NBITS_D08_NBITS_D18_8 S20reg ( .clk(clk), .sel(n7), .D0(outS21ser), .D1(
        outS22par), .Q0(outMC[15:8]), .Q1(outS20par) );
  reg_NBITS_D08_NBITS_D18_7 S21reg ( .clk(clk), .sel(n7), .D0(outS22ser), .D1(
        outS23par), .Q0(outS21ser), .Q1(outS21par) );
  reg_NBITS_D08_NBITS_D18_6 S22reg ( .clk(clk), .sel(n6), .D0(outS23ser), .D1(
        outS20par), .Q0(outS22ser), .Q1(outS22par) );
  reg_NBITS_D08_NBITS_D18_5 S23reg ( .clk(clk), .sel(n6), .D0(inS23ser), .D1(
        outS21par), .Q0(outS23ser), .Q1(outS23par) );
  reg_NBITS_D08_NBITS_D18_4 S30reg ( .clk(clk), .sel(n6), .D0(outS31ser), .D1(
        outS33par), .Q0(outMC[7:0]), .Q1(outS30par) );
  reg_NBITS_D08_NBITS_D18_3 S31reg ( .clk(clk), .sel(n6), .D0(outS32ser), .D1(
        outS30par), .Q0(outS31ser), .Q1(outS31par) );
  reg_NBITS_D08_NBITS_D18_2 S32reg ( .clk(clk), .sel(n6), .D0(outS33ser), .D1(
        outS31par), .Q0(outS32ser), .Q1(outS32par) );
  reg_NBITS_D08_NBITS_D18_1 S33reg ( .clk(clk), .sel(n6), .D0(inS33ser), .D1(
        outS32par), .Q0(outS33ser), .Q1(outS33par) );
  MUX_size8_7 MUX_inS03ser ( .S(nReset_selMC), .D0(outMC[23:16]), .D1(
        inMC[31:24]), .Q(inS03ser) );
  MUX_size8_6 MUX_inS13ser ( .S(nReset_selMC), .D0(outMC[15:8]), .D1(
        inMC[23:16]), .Q(inS13ser) );
  MUX_size8_5 MUX_inS23ser ( .S(nReset_selMC), .D0(outMC[7:0]), .D1(inMC[15:8]), .Q(inS23ser) );
  MUX_size8_4 MUX_input_MC ( .S(selMC), .D0(input0), .D1(inMC[7:0]), .Q(
        input_MC) );
  MUX_size8_3 MUX_inS33ser ( .S(nReset), .D0(inputSer), .D1(input_MC), .Q(
        inS33ser) );
  INV_X1 U1 ( .A(selSR), .ZN(n8) );
  INV_X2 U2 ( .A(n8), .ZN(n7) );
  AND2_X1 U3 ( .A1(nReset), .A2(selMC), .ZN(nReset_selMC) );
  INV_X2 U4 ( .A(n8), .ZN(n6) );
endmodule


module XOR_forMUX_718 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_359 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_717 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_359 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_718 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_359 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_717 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_716 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_358 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_715 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_358 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_716 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_358 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_715 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_714 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_357 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_713 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_357 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_714 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_357 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_713 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_712 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_356 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_711 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_356 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_712 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_356 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_711 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_710 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_355 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_709 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_355 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_710 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_355 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_709 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_708 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_354 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_707 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_354 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_708 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_354 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_707 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_706 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_353 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_705 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_353 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_706 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_353 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_705 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_704 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_352 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_703 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_352 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_704 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_352 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_703 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_702 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_351 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_701 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_351 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_702 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_351 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_701 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_700 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_350 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_699 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_350 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_700 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_350 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_699 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_698 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_349 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_697 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_349 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_698 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_349 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_697 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_696 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_348 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_695 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_348 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_696 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_348 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_695 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_694 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_347 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_693 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_347 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_694 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_347 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_693 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_692 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_346 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_691 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_346 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_692 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_346 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_691 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_690 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_345 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_689 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_345 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_690 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_345 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_689 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_688 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_344 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_687 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_344 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_688 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_344 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_687 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_686 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_343 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_685 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_343 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_686 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_343 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_685 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_684 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_342 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_683 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_342 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_684 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_342 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_683 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_682 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_341 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_681 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_341 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_682 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_341 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_681 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_680 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_340 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_679 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_340 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_680 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_340 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_679 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_678 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_339 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_677 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_339 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_678 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_339 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_677 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_676 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_338 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_675 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_338 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_676 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_338 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_675 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_674 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_337 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_673 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_337 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_674 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_337 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_673 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_672 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_336 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_671 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_336 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_672 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_336 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_671 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_670 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_335 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_669 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_335 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_670 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_335 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_669 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_668 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_334 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_667 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_334 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_668 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_334 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_667 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_666 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_333 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_665 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_333 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_666 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_333 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_665 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_664 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_332 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_663 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_332 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_664 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_332 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_663 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_662 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_331 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_661 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_331 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_662 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_331 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_661 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_660 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_330 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_659 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_330 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_660 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_330 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_659 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_658 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_329 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_657 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_329 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_658 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_329 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_657 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_656 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_328 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_655 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_328 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_656 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_328 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_655 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MUX_size32 ( S, D0, D1, Q );
  input [31:0] D0;
  input [31:0] D1;
  output [31:0] Q;
  input S;
  wire   n3, n4;

  MUX_1bit_359 mux_inst_0 ( .S(n3), .D0(D0[0]), .D1(D1[0]), .Q(Q[0]) );
  MUX_1bit_358 mux_inst_1 ( .S(n3), .D0(D0[1]), .D1(D1[1]), .Q(Q[1]) );
  MUX_1bit_357 mux_inst_2 ( .S(n3), .D0(D0[2]), .D1(D1[2]), .Q(Q[2]) );
  MUX_1bit_356 mux_inst_3 ( .S(n3), .D0(D0[3]), .D1(D1[3]), .Q(Q[3]) );
  MUX_1bit_355 mux_inst_4 ( .S(n3), .D0(D0[4]), .D1(D1[4]), .Q(Q[4]) );
  MUX_1bit_354 mux_inst_5 ( .S(n3), .D0(D0[5]), .D1(D1[5]), .Q(Q[5]) );
  MUX_1bit_353 mux_inst_6 ( .S(n3), .D0(D0[6]), .D1(D1[6]), .Q(Q[6]) );
  MUX_1bit_352 mux_inst_7 ( .S(n3), .D0(D0[7]), .D1(D1[7]), .Q(Q[7]) );
  MUX_1bit_351 mux_inst_8 ( .S(n3), .D0(D0[8]), .D1(D1[8]), .Q(Q[8]) );
  MUX_1bit_350 mux_inst_9 ( .S(n3), .D0(D0[9]), .D1(D1[9]), .Q(Q[9]) );
  MUX_1bit_349 mux_inst_10 ( .S(n3), .D0(D0[10]), .D1(D1[10]), .Q(Q[10]) );
  MUX_1bit_348 mux_inst_11 ( .S(n3), .D0(D0[11]), .D1(D1[11]), .Q(Q[11]) );
  MUX_1bit_347 mux_inst_12 ( .S(n3), .D0(D0[12]), .D1(D1[12]), .Q(Q[12]) );
  MUX_1bit_346 mux_inst_13 ( .S(n3), .D0(D0[13]), .D1(D1[13]), .Q(Q[13]) );
  MUX_1bit_345 mux_inst_14 ( .S(n3), .D0(D0[14]), .D1(D1[14]), .Q(Q[14]) );
  MUX_1bit_344 mux_inst_15 ( .S(n3), .D0(D0[15]), .D1(D1[15]), .Q(Q[15]) );
  MUX_1bit_343 mux_inst_16 ( .S(n3), .D0(D0[16]), .D1(D1[16]), .Q(Q[16]) );
  MUX_1bit_342 mux_inst_17 ( .S(n3), .D0(D0[17]), .D1(D1[17]), .Q(Q[17]) );
  MUX_1bit_341 mux_inst_18 ( .S(n3), .D0(D0[18]), .D1(D1[18]), .Q(Q[18]) );
  MUX_1bit_340 mux_inst_19 ( .S(n3), .D0(D0[19]), .D1(D1[19]), .Q(Q[19]) );
  MUX_1bit_339 mux_inst_20 ( .S(S), .D0(D0[20]), .D1(D1[20]), .Q(Q[20]) );
  MUX_1bit_338 mux_inst_21 ( .S(n3), .D0(D0[21]), .D1(D1[21]), .Q(Q[21]) );
  MUX_1bit_337 mux_inst_22 ( .S(n3), .D0(D0[22]), .D1(D1[22]), .Q(Q[22]) );
  MUX_1bit_336 mux_inst_23 ( .S(n3), .D0(D0[23]), .D1(D1[23]), .Q(Q[23]) );
  MUX_1bit_335 mux_inst_24 ( .S(S), .D0(D0[24]), .D1(D1[24]), .Q(Q[24]) );
  MUX_1bit_334 mux_inst_25 ( .S(S), .D0(D0[25]), .D1(D1[25]), .Q(Q[25]) );
  MUX_1bit_333 mux_inst_26 ( .S(S), .D0(D0[26]), .D1(D1[26]), .Q(Q[26]) );
  MUX_1bit_332 mux_inst_27 ( .S(S), .D0(D0[27]), .D1(D1[27]), .Q(Q[27]) );
  MUX_1bit_331 mux_inst_28 ( .S(n3), .D0(D0[28]), .D1(D1[28]), .Q(Q[28]) );
  MUX_1bit_330 mux_inst_29 ( .S(n3), .D0(D0[29]), .D1(D1[29]), .Q(Q[29]) );
  MUX_1bit_329 mux_inst_30 ( .S(n3), .D0(D0[30]), .D1(D1[30]), .Q(Q[30]) );
  MUX_1bit_328 mux_inst_31 ( .S(n3), .D0(D0[31]), .D1(D1[31]), .Q(Q[31]) );
  INV_X1 U1 ( .A(n4), .ZN(n3) );
  INV_X1 U2 ( .A(S), .ZN(n4) );
endmodule


module XOR_forMUX_256 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_128 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_255 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_128 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_256 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_128 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_255 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_128 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_128 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_128 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_128 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n3, n1, n2;

  MUX_1bit_128 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_128 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n3) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n3), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_254 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_127 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_253 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_127 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_254 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_127 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_253 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_127 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_127 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_127 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_127 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_127 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_127 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_252 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_126 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_251 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_126 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_252 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_126 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_251 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_126 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_126 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_126 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_126 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_126 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_126 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_250 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_125 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_249 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_125 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_250 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_125 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_249 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_125 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_125 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_125 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_125 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_125 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_125 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_248 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_124 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_247 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_124 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_248 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_124 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_247 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_124 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_124 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_124 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_124 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_124 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_124 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_246 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_123 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_245 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_123 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_246 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_123 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_245 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_123 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_123 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_123 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_123 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_123 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_123 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_244 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_122 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_243 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_122 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_244 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_122 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_243 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_122 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_122 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_122 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_122 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_122 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_122 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_242 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_121 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_241 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_121 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_242 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_121 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_241 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_121 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_121 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_121 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_121 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_121 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_121 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module dflipfloplw_en_NBITS8_0 ( clk, en, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, en, n_reset;


  ScanFFEN_128 SFF_0 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[0]), .DS(
        D[0]), .Q(Q[0]) );
  ScanFFEN_127 SFF_1 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[1]), .DS(
        D[1]), .Q(Q[1]) );
  ScanFFEN_126 SFF_2 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[2]), .DS(
        D[2]), .Q(Q[2]) );
  ScanFFEN_125 SFF_3 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[3]), .DS(
        D[3]), .Q(Q[3]) );
  ScanFFEN_124 SFF_4 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[4]), .DS(
        D[4]), .Q(Q[4]) );
  ScanFFEN_123 SFF_5 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[5]), .DS(
        D[5]), .Q(Q[5]) );
  ScanFFEN_122 SFF_6 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[6]), .DS(
        D[6]), .Q(Q[6]) );
  ScanFFEN_121 SFF_7 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[7]), .DS(
        D[7]), .Q(Q[7]) );
endmodule


module reg_en_NBITS_D08_NBITS_D18_0 ( clk, en, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, en, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_en_NBITS8_0 gff_1 ( .clk(clk), .en(en), .n_reset(sel), .D(D1), 
        .D_rst(D0), .Q(Q0) );
endmodule


module XOR_forMUX_240 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_120 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_239 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_120 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_240 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_120 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_239 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_120 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_120 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_120 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_120 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_120 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_120 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_238 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_119 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_237 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_119 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_238 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_119 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_237 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_119 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_119 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_119 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_119 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_119 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_119 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_236 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_118 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_235 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_118 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_236 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_118 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_235 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_118 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_118 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_118 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_118 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_118 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_118 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_234 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_117 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_233 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_117 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_234 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_117 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_233 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_117 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_117 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_117 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_117 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_117 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_117 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_232 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_116 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_231 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_116 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_232 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_116 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_231 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_116 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_116 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_116 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_116 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_116 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_116 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_230 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_115 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_229 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_115 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_230 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_115 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_229 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_115 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_115 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_115 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_115 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_115 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_115 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_228 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_114 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_227 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_114 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_228 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_114 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_227 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_114 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_114 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_114 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_114 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_114 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_114 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_226 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_113 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_225 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_113 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_226 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_113 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_225 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_113 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_113 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_113 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_113 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_113 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_113 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module dflipfloplw_en_NBITS8_15 ( clk, en, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, en, n_reset;


  ScanFFEN_120 SFF_0 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[0]), .DS(
        D[0]), .Q(Q[0]) );
  ScanFFEN_119 SFF_1 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[1]), .DS(
        D[1]), .Q(Q[1]) );
  ScanFFEN_118 SFF_2 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[2]), .DS(
        D[2]), .Q(Q[2]) );
  ScanFFEN_117 SFF_3 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[3]), .DS(
        D[3]), .Q(Q[3]) );
  ScanFFEN_116 SFF_4 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[4]), .DS(
        D[4]), .Q(Q[4]) );
  ScanFFEN_115 SFF_5 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[5]), .DS(
        D[5]), .Q(Q[5]) );
  ScanFFEN_114 SFF_6 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[6]), .DS(
        D[6]), .Q(Q[6]) );
  ScanFFEN_113 SFF_7 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[7]), .DS(
        D[7]), .Q(Q[7]) );
endmodule


module reg_en_NBITS_D08_NBITS_D18_15 ( clk, en, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, en, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_en_NBITS8_15 gff_1 ( .clk(clk), .en(en), .n_reset(sel), .D(D1), 
        .D_rst(D0), .Q(Q0) );
endmodule


module XOR_forMUX_224 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_112 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_223 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_112 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_224 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_112 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_223 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_112 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_112 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_112 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_112 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_112 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_112 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_222 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_111 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_221 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_111 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_222 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_111 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_221 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_111 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_111 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_111 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_111 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_111 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_111 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_220 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_110 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_219 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_110 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_220 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_110 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_219 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_110 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_110 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_110 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_110 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_110 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_110 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_218 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_109 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_217 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_109 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_218 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_109 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_217 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_109 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_109 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_109 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_109 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_109 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_109 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_216 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_108 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_215 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_108 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_216 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_108 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_215 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_108 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_108 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_108 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_108 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_108 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_108 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_214 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_107 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_213 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_107 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_214 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_107 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_213 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_107 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_107 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_107 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_107 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_107 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_107 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_212 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_106 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_211 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_106 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_212 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_106 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_211 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_106 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_106 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_106 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_106 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_106 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_106 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_210 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_105 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_209 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_105 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_210 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_105 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_209 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_105 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_105 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_105 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_105 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_105 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_105 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module dflipfloplw_en_NBITS8_14 ( clk, en, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, en, n_reset;


  ScanFFEN_112 SFF_0 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[0]), .DS(
        D[0]), .Q(Q[0]) );
  ScanFFEN_111 SFF_1 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[1]), .DS(
        D[1]), .Q(Q[1]) );
  ScanFFEN_110 SFF_2 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[2]), .DS(
        D[2]), .Q(Q[2]) );
  ScanFFEN_109 SFF_3 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[3]), .DS(
        D[3]), .Q(Q[3]) );
  ScanFFEN_108 SFF_4 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[4]), .DS(
        D[4]), .Q(Q[4]) );
  ScanFFEN_107 SFF_5 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[5]), .DS(
        D[5]), .Q(Q[5]) );
  ScanFFEN_106 SFF_6 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[6]), .DS(
        D[6]), .Q(Q[6]) );
  ScanFFEN_105 SFF_7 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[7]), .DS(
        D[7]), .Q(Q[7]) );
endmodule


module reg_en_NBITS_D08_NBITS_D18_14 ( clk, en, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, en, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_en_NBITS8_14 gff_1 ( .clk(clk), .en(en), .n_reset(sel), .D(D1), 
        .D_rst(D0), .Q(Q0) );
endmodule


module XOR_forMUX_208 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_104 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_207 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_104 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_208 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_104 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_207 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_104 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_104 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_104 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_104 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_104 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_104 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_206 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_103 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_205 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_103 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_206 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_103 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_205 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_103 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_103 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_103 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_103 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_103 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_103 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_204 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_102 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_203 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_102 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_204 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_102 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_203 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_102 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_102 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_102 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_102 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_102 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_102 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_202 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_101 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_201 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_101 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_202 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_101 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_201 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_101 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_101 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_101 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_101 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_101 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_101 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_200 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_100 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_199 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_100 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_200 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_100 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_199 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_100 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_100 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_100 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_100 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_100 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_100 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_198 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_99 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_197 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_99 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_198 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_99 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_197 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_99 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_99 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_99 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_99 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n3, n1, n2;

  MUX_1bit_99 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_99 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n3) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n3), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_196 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_98 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_195 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_98 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_196 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_98 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_195 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_98 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_98 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_98 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_98 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_98 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_98 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_194 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_97 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_193 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_97 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_194 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_97 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_193 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_97 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_97 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_97 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_97 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_97 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_97 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module dflipfloplw_en_NBITS8_13 ( clk, en, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, en, n_reset;


  ScanFFEN_104 SFF_0 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[0]), .DS(
        D[0]), .Q(Q[0]) );
  ScanFFEN_103 SFF_1 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[1]), .DS(
        D[1]), .Q(Q[1]) );
  ScanFFEN_102 SFF_2 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[2]), .DS(
        D[2]), .Q(Q[2]) );
  ScanFFEN_101 SFF_3 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[3]), .DS(
        D[3]), .Q(Q[3]) );
  ScanFFEN_100 SFF_4 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[4]), .DS(
        D[4]), .Q(Q[4]) );
  ScanFFEN_99 SFF_5 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[5]), .DS(D[5]), .Q(Q[5]) );
  ScanFFEN_98 SFF_6 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[6]), .DS(D[6]), .Q(Q[6]) );
  ScanFFEN_97 SFF_7 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[7]), .DS(D[7]), .Q(Q[7]) );
endmodule


module reg_en_NBITS_D08_NBITS_D18_13 ( clk, en, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, en, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_en_NBITS8_13 gff_1 ( .clk(clk), .en(en), .n_reset(sel), .D(D1), 
        .D_rst(D0), .Q(Q0) );
endmodule


module XOR_forMUX_192 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_96 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_191 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_96 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_192 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_96 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_191 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_96 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_96 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_96 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_96 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_96 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_96 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_190 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_95 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_189 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_95 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_190 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_95 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_189 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_95 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_95 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_95 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_95 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_95 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_95 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_188 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_94 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_187 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_94 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_188 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_94 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_187 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_94 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_94 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_94 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_94 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_94 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_94 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_186 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_93 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_185 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_93 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_186 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_93 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_185 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_93 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_93 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_93 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_93 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_93 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_93 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_184 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_92 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_183 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_92 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_184 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_92 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_183 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_92 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_92 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_92 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_92 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_92 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_92 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_182 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_91 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_181 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_91 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_182 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_91 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_181 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_91 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_91 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_91 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_91 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_91 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_91 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_180 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_90 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_179 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_90 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_180 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_90 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_179 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_90 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_90 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_90 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_90 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_90 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_90 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_178 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_89 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_177 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_89 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_178 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_89 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_177 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_89 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_89 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_89 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_89 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_89 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_89 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module dflipfloplw_en_NBITS8_12 ( clk, en, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, en, n_reset;


  ScanFFEN_96 SFF_0 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[0]), .DS(D[0]), .Q(Q[0]) );
  ScanFFEN_95 SFF_1 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[1]), .DS(D[1]), .Q(Q[1]) );
  ScanFFEN_94 SFF_2 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[2]), .DS(D[2]), .Q(Q[2]) );
  ScanFFEN_93 SFF_3 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[3]), .DS(D[3]), .Q(Q[3]) );
  ScanFFEN_92 SFF_4 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[4]), .DS(D[4]), .Q(Q[4]) );
  ScanFFEN_91 SFF_5 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[5]), .DS(D[5]), .Q(Q[5]) );
  ScanFFEN_90 SFF_6 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[6]), .DS(D[6]), .Q(Q[6]) );
  ScanFFEN_89 SFF_7 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[7]), .DS(D[7]), .Q(Q[7]) );
endmodule


module reg_en_NBITS_D08_NBITS_D18_12 ( clk, en, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, en, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_en_NBITS8_12 gff_1 ( .clk(clk), .en(en), .n_reset(sel), .D(D1), 
        .D_rst(D0), .Q(Q0) );
endmodule


module XOR_forMUX_176 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_88 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_175 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_88 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_176 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_88 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_175 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_88 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_88 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_88 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_88 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_88 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_88 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_174 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_87 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_173 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_87 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_174 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_87 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_173 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_87 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_87 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_87 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_87 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_87 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_87 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_172 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_86 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_171 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_86 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_172 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_86 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_171 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_86 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_86 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_86 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_86 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_86 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_86 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_170 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_85 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_169 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_85 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_170 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_85 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_169 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_85 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_85 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_85 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_85 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_85 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_85 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_168 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_84 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_167 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_84 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_168 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_84 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_167 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_84 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_84 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_84 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_84 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_84 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_84 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_166 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_83 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_165 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_83 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_166 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_83 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_165 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_83 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_83 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_83 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_83 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_83 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_83 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_164 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_82 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_163 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_82 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_164 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_82 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_163 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_82 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_82 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_82 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_82 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_82 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_82 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_162 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_81 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_161 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_81 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_162 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_81 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_161 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_81 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_81 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_81 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_81 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_81 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_81 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module dflipfloplw_en_NBITS8_11 ( clk, en, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, en, n_reset;


  ScanFFEN_88 SFF_0 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[0]), .DS(D[0]), .Q(Q[0]) );
  ScanFFEN_87 SFF_1 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[1]), .DS(D[1]), .Q(Q[1]) );
  ScanFFEN_86 SFF_2 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[2]), .DS(D[2]), .Q(Q[2]) );
  ScanFFEN_85 SFF_3 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[3]), .DS(D[3]), .Q(Q[3]) );
  ScanFFEN_84 SFF_4 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[4]), .DS(D[4]), .Q(Q[4]) );
  ScanFFEN_83 SFF_5 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[5]), .DS(D[5]), .Q(Q[5]) );
  ScanFFEN_82 SFF_6 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[6]), .DS(D[6]), .Q(Q[6]) );
  ScanFFEN_81 SFF_7 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[7]), .DS(D[7]), .Q(Q[7]) );
endmodule


module reg_en_NBITS_D08_NBITS_D18_11 ( clk, en, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, en, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_en_NBITS8_11 gff_1 ( .clk(clk), .en(en), .n_reset(sel), .D(D1), 
        .D_rst(D0), .Q(Q0) );
endmodule


module XOR_forMUX_160 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_80 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_159 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_80 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_160 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_80 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_159 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_80 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_80 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_80 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_80 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_80 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_80 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_158 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_79 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_157 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_79 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_158 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_79 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_157 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_79 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_79 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_79 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_79 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_79 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_79 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_156 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_78 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_155 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_78 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_156 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_78 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_155 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_78 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_78 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_78 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_78 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_78 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_78 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_154 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_77 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_153 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_77 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_154 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_77 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_153 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_77 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_77 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_77 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_77 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_77 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_77 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_152 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_76 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_151 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_76 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_152 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_76 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_151 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_76 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_76 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_76 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_76 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_76 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_76 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_150 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_75 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_149 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_75 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_150 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_75 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_149 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_75 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_75 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_75 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_75 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_75 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_75 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_148 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_74 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_147 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_74 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_148 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_74 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_147 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_74 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_74 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_74 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_74 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_74 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_74 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_146 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_73 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_145 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_73 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_146 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_73 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_145 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_73 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_73 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_73 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_73 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_73 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_73 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module dflipfloplw_en_NBITS8_10 ( clk, en, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, en, n_reset;


  ScanFFEN_80 SFF_0 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[0]), .DS(D[0]), .Q(Q[0]) );
  ScanFFEN_79 SFF_1 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[1]), .DS(D[1]), .Q(Q[1]) );
  ScanFFEN_78 SFF_2 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[2]), .DS(D[2]), .Q(Q[2]) );
  ScanFFEN_77 SFF_3 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[3]), .DS(D[3]), .Q(Q[3]) );
  ScanFFEN_76 SFF_4 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[4]), .DS(D[4]), .Q(Q[4]) );
  ScanFFEN_75 SFF_5 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[5]), .DS(D[5]), .Q(Q[5]) );
  ScanFFEN_74 SFF_6 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[6]), .DS(D[6]), .Q(Q[6]) );
  ScanFFEN_73 SFF_7 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[7]), .DS(D[7]), .Q(Q[7]) );
endmodule


module reg_en_NBITS_D08_NBITS_D18_10 ( clk, en, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, en, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_en_NBITS8_10 gff_1 ( .clk(clk), .en(en), .n_reset(sel), .D(D1), 
        .D_rst(D0), .Q(Q0) );
endmodule


module XOR_forMUX_144 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_72 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_143 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_72 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_144 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_72 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_143 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_72 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_72 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_72 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_72 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_72 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_72 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_142 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_71 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_141 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_71 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_142 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_71 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_141 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_71 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_71 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_71 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_71 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_71 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_71 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_140 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_70 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_139 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_70 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_140 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_70 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_139 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_70 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_70 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_70 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_70 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_70 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_70 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_138 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_69 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_137 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_69 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_138 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_69 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_137 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_69 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_69 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_69 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_69 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_69 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_69 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_136 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_68 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_135 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_68 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_136 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_68 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_135 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_68 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_68 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_68 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_68 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_68 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_68 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_134 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_67 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_133 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_67 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_134 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_67 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_133 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_67 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_67 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_67 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_67 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_67 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_67 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_132 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_66 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_131 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_66 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_132 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_66 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_131 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_66 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_66 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_66 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_66 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_66 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_66 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_130 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_65 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_129 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_65 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_130 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_65 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_129 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_65 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_65 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_65 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_65 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_65 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_65 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module dflipfloplw_en_NBITS8_9 ( clk, en, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, en, n_reset;


  ScanFFEN_72 SFF_0 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[0]), .DS(D[0]), .Q(Q[0]) );
  ScanFFEN_71 SFF_1 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[1]), .DS(D[1]), .Q(Q[1]) );
  ScanFFEN_70 SFF_2 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[2]), .DS(D[2]), .Q(Q[2]) );
  ScanFFEN_69 SFF_3 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[3]), .DS(D[3]), .Q(Q[3]) );
  ScanFFEN_68 SFF_4 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[4]), .DS(D[4]), .Q(Q[4]) );
  ScanFFEN_67 SFF_5 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[5]), .DS(D[5]), .Q(Q[5]) );
  ScanFFEN_66 SFF_6 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[6]), .DS(D[6]), .Q(Q[6]) );
  ScanFFEN_65 SFF_7 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[7]), .DS(D[7]), .Q(Q[7]) );
endmodule


module reg_en_NBITS_D08_NBITS_D18_9 ( clk, en, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, en, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_en_NBITS8_9 gff_1 ( .clk(clk), .en(en), .n_reset(sel), .D(D1), 
        .D_rst(D0), .Q(Q0) );
endmodule


module XOR_forMUX_128 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_64 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_127 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_64 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_128 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_64 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_127 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_64 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_64 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_64 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_64 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_64 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_64 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_126 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_63 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_125 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_63 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_126 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_63 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_125 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_63 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_63 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_63 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_63 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_63 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_63 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_124 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_62 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_123 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_62 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_124 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_62 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_123 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_62 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_62 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_62 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_62 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_62 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_62 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_122 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_61 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_121 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_61 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_122 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_61 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_121 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_61 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_61 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_61 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_61 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_61 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_61 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_120 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_60 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_119 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_60 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_120 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_60 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_119 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_60 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_60 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_60 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_60 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_60 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_60 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_118 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_59 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_117 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_59 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_118 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_59 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_117 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_59 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_59 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_59 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_59 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_59 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_59 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_116 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_58 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_115 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_58 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_116 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_58 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_115 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_58 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_58 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_58 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_58 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_58 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_58 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_114 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_57 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_113 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_57 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_114 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_57 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_113 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_57 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_57 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_57 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_57 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_57 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_57 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module dflipfloplw_en_NBITS8_8 ( clk, en, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, en, n_reset;


  ScanFFEN_64 SFF_0 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[0]), .DS(D[0]), .Q(Q[0]) );
  ScanFFEN_63 SFF_1 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[1]), .DS(D[1]), .Q(Q[1]) );
  ScanFFEN_62 SFF_2 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[2]), .DS(D[2]), .Q(Q[2]) );
  ScanFFEN_61 SFF_3 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[3]), .DS(D[3]), .Q(Q[3]) );
  ScanFFEN_60 SFF_4 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[4]), .DS(D[4]), .Q(Q[4]) );
  ScanFFEN_59 SFF_5 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[5]), .DS(D[5]), .Q(Q[5]) );
  ScanFFEN_58 SFF_6 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[6]), .DS(D[6]), .Q(Q[6]) );
  ScanFFEN_57 SFF_7 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[7]), .DS(D[7]), .Q(Q[7]) );
endmodule


module reg_en_NBITS_D08_NBITS_D18_8 ( clk, en, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, en, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_en_NBITS8_8 gff_1 ( .clk(clk), .en(en), .n_reset(sel), .D(D1), 
        .D_rst(D0), .Q(Q0) );
endmodule


module XOR_forMUX_112 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_56 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_111 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_56 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_112 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_56 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_111 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_56 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_56 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_56 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_56 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_56 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_56 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_110 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_55 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_109 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_55 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_110 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_55 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_109 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_55 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_55 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_55 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_55 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_55 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_55 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_108 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_54 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_107 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_54 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_108 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_54 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_107 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_54 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_54 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_54 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_54 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_54 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_54 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_106 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_53 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_105 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_53 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_106 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_53 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_105 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_53 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_53 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_53 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_53 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_53 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_53 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_104 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_52 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_103 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_52 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_104 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_52 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_103 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_52 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_52 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_52 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_52 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_52 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_52 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_102 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_51 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_101 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_51 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_102 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_51 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_101 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_51 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_51 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_51 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_51 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_51 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_51 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_100 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_50 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_99 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_50 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_100 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_50 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_99 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_50 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_50 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_50 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_50 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_50 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_50 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_98 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_49 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_97 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_49 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_98 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_49 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_97 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_49 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_49 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_49 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_49 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_49 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_49 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module dflipfloplw_en_NBITS8_7 ( clk, en, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, en, n_reset;


  ScanFFEN_56 SFF_0 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[0]), .DS(D[0]), .Q(Q[0]) );
  ScanFFEN_55 SFF_1 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[1]), .DS(D[1]), .Q(Q[1]) );
  ScanFFEN_54 SFF_2 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[2]), .DS(D[2]), .Q(Q[2]) );
  ScanFFEN_53 SFF_3 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[3]), .DS(D[3]), .Q(Q[3]) );
  ScanFFEN_52 SFF_4 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[4]), .DS(D[4]), .Q(Q[4]) );
  ScanFFEN_51 SFF_5 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[5]), .DS(D[5]), .Q(Q[5]) );
  ScanFFEN_50 SFF_6 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[6]), .DS(D[6]), .Q(Q[6]) );
  ScanFFEN_49 SFF_7 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[7]), .DS(D[7]), .Q(Q[7]) );
endmodule


module reg_en_NBITS_D08_NBITS_D18_7 ( clk, en, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, en, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_en_NBITS8_7 gff_1 ( .clk(clk), .en(en), .n_reset(sel), .D(D1), 
        .D_rst(D0), .Q(Q0) );
endmodule


module XOR_forMUX_96 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_48 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_95 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_48 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_96 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_48 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_95 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_48 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_48 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_48 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_48 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_48 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_48 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_94 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_47 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_93 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_47 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_94 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_47 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_93 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_47 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_47 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_47 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_47 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_47 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_47 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_92 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_46 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_91 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_46 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_92 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_46 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_91 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_46 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_46 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_46 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_46 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_46 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_46 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_90 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_45 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_89 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_45 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_90 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_45 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_89 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_45 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_45 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_45 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_45 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_45 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_45 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_88 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_44 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_87 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_44 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_88 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_44 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_87 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_44 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_44 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_44 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_44 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_44 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_44 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_86 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_43 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_85 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_43 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_86 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_43 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_85 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_43 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_43 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_43 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_43 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_43 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_43 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_84 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_42 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_83 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_42 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_84 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_42 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_83 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_42 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_42 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_42 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_42 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_42 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_42 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_82 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_41 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_81 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_41 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_82 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_41 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_81 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_41 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_41 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_41 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_41 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_41 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_41 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module dflipfloplw_en_NBITS8_6 ( clk, en, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, en, n_reset;


  ScanFFEN_48 SFF_0 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[0]), .DS(D[0]), .Q(Q[0]) );
  ScanFFEN_47 SFF_1 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[1]), .DS(D[1]), .Q(Q[1]) );
  ScanFFEN_46 SFF_2 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[2]), .DS(D[2]), .Q(Q[2]) );
  ScanFFEN_45 SFF_3 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[3]), .DS(D[3]), .Q(Q[3]) );
  ScanFFEN_44 SFF_4 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[4]), .DS(D[4]), .Q(Q[4]) );
  ScanFFEN_43 SFF_5 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[5]), .DS(D[5]), .Q(Q[5]) );
  ScanFFEN_42 SFF_6 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[6]), .DS(D[6]), .Q(Q[6]) );
  ScanFFEN_41 SFF_7 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[7]), .DS(D[7]), .Q(Q[7]) );
endmodule


module reg_en_NBITS_D08_NBITS_D18_6 ( clk, en, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, en, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_en_NBITS8_6 gff_1 ( .clk(clk), .en(en), .n_reset(sel), .D(D1), 
        .D_rst(D0), .Q(Q0) );
endmodule


module XOR_forMUX_80 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_40 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_79 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_40 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_80 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_40 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_79 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_40 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_40 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_40 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_40 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_40 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_40 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_78 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_39 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_77 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_39 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_78 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_39 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_77 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_39 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_39 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_39 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_39 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_39 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_39 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_76 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_38 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_75 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_38 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_76 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_38 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_75 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_38 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_38 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_38 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_38 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_38 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_38 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_74 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_37 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_73 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_37 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_74 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_37 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_73 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_37 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_37 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_37 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_37 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_37 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_37 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_72 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_36 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_71 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_36 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_72 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_36 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_71 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_36 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_36 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_36 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_36 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_36 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_36 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_70 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_35 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_69 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_35 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_70 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_35 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_69 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_35 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_35 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_35 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_35 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_35 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_35 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_68 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_34 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_67 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_34 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_68 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_34 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_67 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_34 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_34 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_34 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_34 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_34 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_34 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_66 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_33 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_65 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_33 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_66 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_33 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_65 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_33 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_33 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_33 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_33 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_33 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_33 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module dflipfloplw_en_NBITS8_5 ( clk, en, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, en, n_reset;


  ScanFFEN_40 SFF_0 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[0]), .DS(D[0]), .Q(Q[0]) );
  ScanFFEN_39 SFF_1 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[1]), .DS(D[1]), .Q(Q[1]) );
  ScanFFEN_38 SFF_2 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[2]), .DS(D[2]), .Q(Q[2]) );
  ScanFFEN_37 SFF_3 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[3]), .DS(D[3]), .Q(Q[3]) );
  ScanFFEN_36 SFF_4 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[4]), .DS(D[4]), .Q(Q[4]) );
  ScanFFEN_35 SFF_5 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[5]), .DS(D[5]), .Q(Q[5]) );
  ScanFFEN_34 SFF_6 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[6]), .DS(D[6]), .Q(Q[6]) );
  ScanFFEN_33 SFF_7 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[7]), .DS(D[7]), .Q(Q[7]) );
endmodule


module reg_en_NBITS_D08_NBITS_D18_5 ( clk, en, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, en, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_en_NBITS8_5 gff_1 ( .clk(clk), .en(en), .n_reset(sel), .D(D1), 
        .D_rst(D0), .Q(Q0) );
endmodule


module XOR_forMUX_64 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_32 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_63 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_32 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_64 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_32 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_63 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_32 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_32 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_32 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_32 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_32 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_32 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_62 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_31 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_61 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_31 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_62 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_31 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_61 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_31 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_31 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_31 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_31 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_31 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_31 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_60 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_30 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_59 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_30 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_60 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_30 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_59 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_30 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_30 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_30 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_30 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_30 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_30 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_58 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_29 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_57 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_29 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_58 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_29 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_57 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_29 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_29 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_29 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_29 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_29 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_29 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_56 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_28 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_55 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_28 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_56 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_28 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_55 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_28 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_28 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_28 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_28 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_28 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_28 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_54 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_27 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_53 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_27 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_54 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_27 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_53 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_27 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_27 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_27 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_27 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_27 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_27 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_52 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_26 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_51 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_26 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_52 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_26 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_51 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_26 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_26 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_26 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_26 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_26 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_26 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_50 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_25 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_49 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_25 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_50 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_25 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_49 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_25 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_25 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_25 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_25 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_25 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_25 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module dflipfloplw_en_NBITS8_4 ( clk, en, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, en, n_reset;


  ScanFFEN_32 SFF_0 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[0]), .DS(D[0]), .Q(Q[0]) );
  ScanFFEN_31 SFF_1 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[1]), .DS(D[1]), .Q(Q[1]) );
  ScanFFEN_30 SFF_2 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[2]), .DS(D[2]), .Q(Q[2]) );
  ScanFFEN_29 SFF_3 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[3]), .DS(D[3]), .Q(Q[3]) );
  ScanFFEN_28 SFF_4 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[4]), .DS(D[4]), .Q(Q[4]) );
  ScanFFEN_27 SFF_5 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[5]), .DS(D[5]), .Q(Q[5]) );
  ScanFFEN_26 SFF_6 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[6]), .DS(D[6]), .Q(Q[6]) );
  ScanFFEN_25 SFF_7 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[7]), .DS(D[7]), .Q(Q[7]) );
endmodule


module reg_en_NBITS_D08_NBITS_D18_4 ( clk, en, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, en, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_en_NBITS8_4 gff_1 ( .clk(clk), .en(en), .n_reset(sel), .D(D1), 
        .D_rst(D0), .Q(Q0) );
endmodule


module XOR_forMUX_48 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_24 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_47 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_24 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_48 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_24 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_47 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_24 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_24 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_24 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_24 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_24 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_24 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_46 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_23 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_45 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_23 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_46 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_23 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_45 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_23 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_23 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_23 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_23 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_23 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_23 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_44 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_22 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_43 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_22 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_44 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_22 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_43 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_22 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_22 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_22 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_22 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_22 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_22 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_42 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_21 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_41 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_21 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_42 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_21 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_41 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_21 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_21 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_21 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_21 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_21 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_21 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_40 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_20 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_39 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_20 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_40 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_20 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_39 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_20 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_20 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_20 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_20 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_20 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_20 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_38 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_19 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_37 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_19 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_38 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_19 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_37 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_19 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_19 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_19 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_19 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_19 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_19 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_36 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_18 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_35 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_18 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_36 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_18 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_35 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_18 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_18 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_18 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_18 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_18 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_18 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_34 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_17 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_33 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_17 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_34 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_17 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_33 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_17 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_17 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_17 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_17 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_17 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_17 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module dflipfloplw_en_NBITS8_3 ( clk, en, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, en, n_reset;


  ScanFFEN_24 SFF_0 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[0]), .DS(D[0]), .Q(Q[0]) );
  ScanFFEN_23 SFF_1 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[1]), .DS(D[1]), .Q(Q[1]) );
  ScanFFEN_22 SFF_2 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[2]), .DS(D[2]), .Q(Q[2]) );
  ScanFFEN_21 SFF_3 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[3]), .DS(D[3]), .Q(Q[3]) );
  ScanFFEN_20 SFF_4 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[4]), .DS(D[4]), .Q(Q[4]) );
  ScanFFEN_19 SFF_5 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[5]), .DS(D[5]), .Q(Q[5]) );
  ScanFFEN_18 SFF_6 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[6]), .DS(D[6]), .Q(Q[6]) );
  ScanFFEN_17 SFF_7 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[7]), .DS(D[7]), .Q(Q[7]) );
endmodule


module reg_en_NBITS_D08_NBITS_D18_3 ( clk, en, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, en, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_en_NBITS8_3 gff_1 ( .clk(clk), .en(en), .n_reset(sel), .D(D1), 
        .D_rst(D0), .Q(Q0) );
endmodule


module XOR_forMUX_32 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_16 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_31 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_16 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_32 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_16 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_31 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_16 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_16 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_16 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_16 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_16 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_16 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_30 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_15 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_29 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_15 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_30 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_15 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_29 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_15 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_15 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_15 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_15 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_15 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_15 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_28 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_14 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_27 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_14 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_28 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_14 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_27 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_14 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_14 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_14 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_14 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_14 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_14 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_26 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_13 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_25 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_13 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_26 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_13 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_25 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_13 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_13 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_13 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_13 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_13 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_13 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_24 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_12 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_23 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_12 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_24 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_12 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_23 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_12 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_12 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_12 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_12 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n6, n11, n1, n2;

  MUX_1bit_12 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_12 Q_reg ( .D(n6), .CK(CLK), .Q(Q), .QN(n11) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n11), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
endmodule


module XOR_forMUX_22 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_11 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_21 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_11 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_22 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_11 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_21 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_11 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_11 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_11 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_11 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_11 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_11 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_20 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_10 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_19 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_10 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_20 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_10 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_19 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_10 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_10 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_10 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_10 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_10 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_10 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_18 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_9 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_17 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_9 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_18 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_9 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_17 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_9 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_9 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_9 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_9 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_9 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_9 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module dflipfloplw_en_NBITS8_2 ( clk, en, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, en, n_reset;


  ScanFFEN_16 SFF_0 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[0]), .DS(D[0]), .Q(Q[0]) );
  ScanFFEN_15 SFF_1 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[1]), .DS(D[1]), .Q(Q[1]) );
  ScanFFEN_14 SFF_2 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[2]), .DS(D[2]), .Q(Q[2]) );
  ScanFFEN_13 SFF_3 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[3]), .DS(D[3]), .Q(Q[3]) );
  ScanFFEN_12 SFF_4 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[4]), .DS(D[4]), .Q(Q[4]) );
  ScanFFEN_11 SFF_5 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[5]), .DS(D[5]), .Q(Q[5]) );
  ScanFFEN_10 SFF_6 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[6]), .DS(D[6]), .Q(Q[6]) );
  ScanFFEN_9 SFF_7 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[7]), .DS(D[7]), 
        .Q(Q[7]) );
endmodule


module reg_en_NBITS_D08_NBITS_D18_2 ( clk, en, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, en, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_en_NBITS8_2 gff_1 ( .clk(clk), .en(en), .n_reset(sel), .D(D1), 
        .D_rst(D0), .Q(Q0) );
endmodule


module XOR_forMUX_16 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_8 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_15 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_8 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_16 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_8 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_15 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_8 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_8 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_8 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_8 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_8 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_8 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_14 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_7 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_13 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_7 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_14 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_7 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_13 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_7 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_7 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_7 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_7 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_7 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_7 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_12 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_6 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_11 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_6 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_12 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_6 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_11 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_6 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_6 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_6 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_6 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_6 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_6 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_10 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_5 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_9 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_5 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_10 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_5 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_9 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_5 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_5 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_5 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_5 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_5 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_5 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_8 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_4 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_7 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_4 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_8 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_4 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_7 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_4 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_4 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_4 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_4 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_4 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_4 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_6 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_3 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_5 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_3 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_6 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_3 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_5 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_3 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_3 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_3 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_3 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_3 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_3 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_4 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_2 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_3 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_2 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_4 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_2 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_3 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_2 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_2 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_2 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_2 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_2 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_2 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module XOR_forMUX_2 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_1 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_1 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_1 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_2 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_1 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_1 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MyDFFs_1 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_1 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_1 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module ScanFFEN_1 ( CLK, EN, SE, D, DS, Q );
  input CLK, EN, SE, D, DS;
  output Q;
  wire   QD, n5, n10, n1, n2;

  MUX_1bit_1 MUXInst ( .S(SE), .D0(D), .D1(DS), .Q(QD) );
  MyDFF_1 Q_reg ( .D(n5), .CK(CLK), .Q(Q), .QN(n10) );
  NAND2_X1 U1 ( .A1(QD), .A2(EN), .ZN(n2) );
  OR2_X1 U2 ( .A1(EN), .A2(n10), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n5) );
endmodule


module dflipfloplw_en_NBITS8_1 ( clk, en, n_reset, D, D_rst, Q );
  input [7:0] D;
  input [7:0] D_rst;
  output [7:0] Q;
  input clk, en, n_reset;


  ScanFFEN_8 SFF_0 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[0]), .DS(D[0]), 
        .Q(Q[0]) );
  ScanFFEN_7 SFF_1 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[1]), .DS(D[1]), 
        .Q(Q[1]) );
  ScanFFEN_6 SFF_2 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[2]), .DS(D[2]), 
        .Q(Q[2]) );
  ScanFFEN_5 SFF_3 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[3]), .DS(D[3]), 
        .Q(Q[3]) );
  ScanFFEN_4 SFF_4 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[4]), .DS(D[4]), 
        .Q(Q[4]) );
  ScanFFEN_3 SFF_5 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[5]), .DS(D[5]), 
        .Q(Q[5]) );
  ScanFFEN_2 SFF_6 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[6]), .DS(D[6]), 
        .Q(Q[6]) );
  ScanFFEN_1 SFF_7 ( .CLK(clk), .EN(en), .SE(n_reset), .D(D_rst[7]), .DS(D[7]), 
        .Q(Q[7]) );
endmodule


module reg_en_NBITS_D08_NBITS_D18_1 ( clk, en, sel, D0, D1, Q0, Q1 );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q0;
  output [7:0] Q1;
  input clk, en, sel;

  assign Q1[7] = Q0[7];
  assign Q1[6] = Q0[6];
  assign Q1[5] = Q0[5];
  assign Q1[4] = Q0[4];
  assign Q1[3] = Q0[3];
  assign Q1[2] = Q0[2];
  assign Q1[1] = Q0[1];
  assign Q1[0] = Q0[0];

  dflipfloplw_en_NBITS8_1 gff_1 ( .clk(clk), .en(en), .n_reset(sel), .D(D1), 
        .D_rst(D0), .Q(Q0) );
endmodule


module XOR_forMUX_558 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_279 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_557 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_279 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_558 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_279 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_557 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_556 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_278 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_555 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_278 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_556 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_278 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_555 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_554 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_277 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_553 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_277 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_554 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_277 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_553 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_552 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_276 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_551 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_276 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_552 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_276 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_551 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_550 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_275 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_549 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_275 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_550 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_275 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_549 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_548 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_274 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_547 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_274 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_548 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_274 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_547 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_546 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_273 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_545 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_273 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_546 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_273 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_545 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_544 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_272 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_543 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_272 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_544 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_272 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_543 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MUX_size8_2 ( S, D0, D1, Q );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q;
  input S;


  MUX_1bit_279 mux_inst_0 ( .S(S), .D0(D0[0]), .D1(D1[0]), .Q(Q[0]) );
  MUX_1bit_278 mux_inst_1 ( .S(S), .D0(D0[1]), .D1(D1[1]), .Q(Q[1]) );
  MUX_1bit_277 mux_inst_2 ( .S(S), .D0(D0[2]), .D1(D1[2]), .Q(Q[2]) );
  MUX_1bit_276 mux_inst_3 ( .S(S), .D0(D0[3]), .D1(D1[3]), .Q(Q[3]) );
  MUX_1bit_275 mux_inst_4 ( .S(S), .D0(D0[4]), .D1(D1[4]), .Q(Q[4]) );
  MUX_1bit_274 mux_inst_5 ( .S(S), .D0(D0[5]), .D1(D1[5]), .Q(Q[5]) );
  MUX_1bit_273 mux_inst_6 ( .S(S), .D0(D0[6]), .D1(D1[6]), .Q(Q[6]) );
  MUX_1bit_272 mux_inst_7 ( .S(S), .D0(D0[7]), .D1(D1[7]), .Q(Q[7]) );
endmodule


module XOR_forMUX_542 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_271 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_541 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_271 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_542 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_271 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_541 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_540 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_270 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_539 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_270 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_540 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_270 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_539 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_538 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_269 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_537 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_269 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_538 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_269 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_537 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_536 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_268 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_535 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_268 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_536 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_268 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_535 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_534 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_267 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_533 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_267 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_534 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_267 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_533 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_532 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_266 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_531 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_266 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_532 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_266 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_531 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_530 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_265 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_529 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_265 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_530 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_265 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_529 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_528 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_264 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_527 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_264 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_528 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_264 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_527 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MUX_size8_1 ( S, D0, D1, Q );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q;
  input S;


  MUX_1bit_271 mux_inst_0 ( .S(S), .D0(D0[0]), .D1(D1[0]), .Q(Q[0]) );
  MUX_1bit_270 mux_inst_1 ( .S(S), .D0(D0[1]), .D1(D1[1]), .Q(Q[1]) );
  MUX_1bit_269 mux_inst_2 ( .S(S), .D0(D0[2]), .D1(D1[2]), .Q(Q[2]) );
  MUX_1bit_268 mux_inst_3 ( .S(S), .D0(D0[3]), .D1(D1[3]), .Q(Q[3]) );
  MUX_1bit_267 mux_inst_4 ( .S(S), .D0(D0[4]), .D1(D1[4]), .Q(Q[4]) );
  MUX_1bit_266 mux_inst_5 ( .S(S), .D0(D0[5]), .D1(D1[5]), .Q(Q[5]) );
  MUX_1bit_265 mux_inst_6 ( .S(S), .D0(D0[6]), .D1(D1[6]), .Q(Q[6]) );
  MUX_1bit_264 mux_inst_7 ( .S(S), .D0(D0[7]), .D1(D1[7]), .Q(Q[7]) );
endmodule


module KeyState ( clk, en, selXOR, selMC, inputSer, nReset, input0, inSB, 
        inRCon, outSB, roundKey );
  input [7:0] inputSer;
  input [7:0] input0;
  input [7:0] inSB;
  input [7:0] inRCon;
  output [7:0] outSB;
  output [7:0] roundKey;
  input clk, en, selXOR, selMC, nReset;
  wire   nReset_selXOR, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32;
  wire   [7:0] inS00ser;
  wire   [7:0] outS10par;
  wire   [7:0] outS00par;
  wire   [7:0] outS02ser;
  wire   [7:0] outS11par;
  wire   [7:0] outS01ser;
  wire   [7:0] outS01par;
  wire   [7:0] outS03ser;
  wire   [7:0] outS12par;
  wire   [7:0] outS02par;
  wire   [7:0] outS10ser;
  wire   [7:0] outS13par;
  wire   [7:0] outS03par;
  wire   [7:0] outS11ser;
  wire   [7:0] outS20par;
  wire   [7:0] outS12ser;
  wire   [7:0] outS21par;
  wire   [7:0] outS22par;
  wire   [7:0] outS20ser;
  wire   [7:0] outS23par;
  wire   [7:0] outS21ser;
  wire   [7:0] outS30par;
  wire   [7:0] outS22ser;
  wire   [7:0] outS31par;
  wire   [7:0] outS23ser;
  wire   [7:0] outS32par;
  wire   [7:0] outS30ser;
  wire   [7:0] outS33par;
  wire   [7:0] outS31ser;
  wire   [7:0] inS30par;
  wire   [7:0] outS32ser;
  wire   [7:0] outS33ser;
  wire   [7:0] inS33ser;
  wire   [7:0] outS01ser_XOR_00;

  reg_en_NBITS_D08_NBITS_D18_0 S00reg ( .clk(clk), .en(n19), .sel(n23), .D0(
        inS00ser), .D1(outS10par), .Q0(roundKey), .Q1(outS00par) );
  reg_en_NBITS_D08_NBITS_D18_15 S01reg ( .clk(clk), .en(n19), .sel(n23), .D0(
        outS02ser), .D1(outS11par), .Q0(outS01ser), .Q1(outS01par) );
  reg_en_NBITS_D08_NBITS_D18_14 S02reg ( .clk(clk), .en(n19), .sel(n23), .D0(
        outS03ser), .D1(outS12par), .Q0(outS02ser), .Q1(outS02par) );
  reg_en_NBITS_D08_NBITS_D18_13 S03reg ( .clk(clk), .en(n19), .sel(n23), .D0(
        outS10ser), .D1(outS13par), .Q0(outS03ser), .Q1(outS03par) );
  reg_en_NBITS_D08_NBITS_D18_12 S10reg ( .clk(clk), .en(n19), .sel(n22), .D0(
        outS11ser), .D1(outS20par), .Q0(outS10ser), .Q1(outS10par) );
  reg_en_NBITS_D08_NBITS_D18_11 S11reg ( .clk(clk), .en(n19), .sel(n22), .D0(
        outS12ser), .D1(outS21par), .Q0(outS11ser), .Q1(outS11par) );
  reg_en_NBITS_D08_NBITS_D18_10 S12reg ( .clk(clk), .en(n18), .sel(n22), .D0(
        outSB), .D1(outS22par), .Q0(outS12ser), .Q1(outS12par) );
  reg_en_NBITS_D08_NBITS_D18_9 S13reg ( .clk(clk), .en(n18), .sel(n22), .D0(
        outS20ser), .D1(outS23par), .Q0(outSB), .Q1(outS13par) );
  reg_en_NBITS_D08_NBITS_D18_8 S20reg ( .clk(clk), .en(n18), .sel(n22), .D0(
        outS21ser), .D1(outS30par), .Q0(outS20ser), .Q1(outS20par) );
  reg_en_NBITS_D08_NBITS_D18_7 S21reg ( .clk(clk), .en(n18), .sel(n22), .D0(
        outS22ser), .D1(outS31par), .Q0(outS21ser), .Q1(outS21par) );
  reg_en_NBITS_D08_NBITS_D18_6 S22reg ( .clk(clk), .en(n18), .sel(n21), .D0(
        outS23ser), .D1(outS32par), .Q0(outS22ser), .Q1(outS22par) );
  reg_en_NBITS_D08_NBITS_D18_5 S23reg ( .clk(clk), .en(n18), .sel(n21), .D0(
        outS30ser), .D1(outS33par), .Q0(outS23ser), .Q1(outS23par) );
  reg_en_NBITS_D08_NBITS_D18_4 S30reg ( .clk(clk), .en(n18), .sel(n21), .D0(
        outS31ser), .D1(inS30par), .Q0(outS30ser), .Q1(outS30par) );
  reg_en_NBITS_D08_NBITS_D18_3 S31reg ( .clk(clk), .en(n18), .sel(n21), .D0(
        outS32ser), .D1(outS01par), .Q0(outS31ser), .Q1(outS31par) );
  reg_en_NBITS_D08_NBITS_D18_2 S32reg ( .clk(clk), .en(n18), .sel(n21), .D0(
        outS33ser), .D1(outS02par), .Q0(outS32ser), .Q1(outS32par) );
  reg_en_NBITS_D08_NBITS_D18_1 S33reg ( .clk(clk), .en(n18), .sel(n21), .D0(
        inS33ser), .D1(outS03par), .Q0(outS33ser), .Q1(outS33par) );
  MUX_size8_2 MUX_inS00ser ( .S(nReset_selXOR), .D0(outS01ser), .D1(
        outS01ser_XOR_00), .Q(inS00ser) );
  MUX_size8_1 MUX_inS33ser ( .S(nReset), .D0(inputSer), .D1(input0), .Q(
        inS33ser) );
  INV_X8 U1 ( .A(n20), .ZN(n18) );
  INV_X1 U2 ( .A(en), .ZN(n20) );
  INV_X4 U3 ( .A(n20), .ZN(n19) );
  INV_X1 U4 ( .A(n24), .ZN(n23) );
  INV_X1 U5 ( .A(selMC), .ZN(n24) );
  INV_X2 U6 ( .A(n24), .ZN(n22) );
  INV_X2 U7 ( .A(n24), .ZN(n21) );
  XNOR2_X1 U8 ( .A(inRCon[0]), .B(inSB[0]), .ZN(n25) );
  XNOR2_X1 U9 ( .A(n25), .B(outS00par[0]), .ZN(inS30par[0]) );
  XNOR2_X1 U10 ( .A(inRCon[1]), .B(inSB[1]), .ZN(n26) );
  XNOR2_X1 U11 ( .A(n26), .B(outS00par[1]), .ZN(inS30par[1]) );
  XNOR2_X1 U12 ( .A(inRCon[2]), .B(inSB[2]), .ZN(n27) );
  XNOR2_X1 U13 ( .A(n27), .B(outS00par[2]), .ZN(inS30par[2]) );
  XNOR2_X1 U14 ( .A(inRCon[3]), .B(inSB[3]), .ZN(n28) );
  XNOR2_X1 U15 ( .A(n28), .B(outS00par[3]), .ZN(inS30par[3]) );
  XNOR2_X1 U16 ( .A(inRCon[4]), .B(inSB[4]), .ZN(n29) );
  XNOR2_X1 U17 ( .A(n29), .B(outS00par[4]), .ZN(inS30par[4]) );
  XNOR2_X1 U18 ( .A(inRCon[5]), .B(inSB[5]), .ZN(n30) );
  XNOR2_X1 U19 ( .A(n30), .B(outS00par[5]), .ZN(inS30par[5]) );
  XNOR2_X1 U20 ( .A(inRCon[6]), .B(inSB[6]), .ZN(n31) );
  XNOR2_X1 U21 ( .A(n31), .B(outS00par[6]), .ZN(inS30par[6]) );
  XNOR2_X1 U22 ( .A(inRCon[7]), .B(inSB[7]), .ZN(n32) );
  XNOR2_X1 U23 ( .A(n32), .B(outS00par[7]), .ZN(inS30par[7]) );
  AND2_X1 U24 ( .A1(nReset), .A2(selXOR), .ZN(nReset_selXOR) );
  XOR2_X1 U25 ( .A(outS01ser[0]), .B(roundKey[0]), .Z(outS01ser_XOR_00[0]) );
  XOR2_X1 U26 ( .A(outS01ser[1]), .B(roundKey[1]), .Z(outS01ser_XOR_00[1]) );
  XOR2_X1 U27 ( .A(outS01ser[2]), .B(roundKey[2]), .Z(outS01ser_XOR_00[2]) );
  XOR2_X1 U28 ( .A(outS01ser[3]), .B(roundKey[3]), .Z(outS01ser_XOR_00[3]) );
  XOR2_X1 U29 ( .A(outS01ser[4]), .B(roundKey[4]), .Z(outS01ser_XOR_00[4]) );
  XOR2_X1 U30 ( .A(outS01ser[5]), .B(roundKey[5]), .Z(outS01ser_XOR_00[5]) );
  XOR2_X1 U31 ( .A(outS01ser[6]), .B(roundKey[6]), .Z(outS01ser_XOR_00[6]) );
  XOR2_X1 U32 ( .A(outS01ser[7]), .B(roundKey[7]), .Z(outS01ser_XOR_00[7]) );
endmodule


module times2_0 ( input0, output0 );
  input [7:0] input0;
  output [7:0] output0;

  assign output0[7] = input0[6];
  assign output0[6] = input0[5];
  assign output0[5] = input0[4];
  assign output0[2] = input0[1];
  assign output0[0] = input0[7];

  XOR2_X1 U1 ( .A(input0[7]), .B(input0[0]), .Z(output0[1]) );
  XOR2_X1 U2 ( .A(input0[7]), .B(input0[2]), .Z(output0[3]) );
  XOR2_X1 U3 ( .A(input0[7]), .B(input0[3]), .Z(output0[4]) );
endmodule


module times2_4 ( input0, output0 );
  input [7:0] input0;
  output [7:0] output0;

  assign output0[7] = input0[6];
  assign output0[6] = input0[5];
  assign output0[5] = input0[4];
  assign output0[2] = input0[1];
  assign output0[0] = input0[7];

  XOR2_X1 U1 ( .A(input0[7]), .B(input0[0]), .Z(output0[1]) );
  XOR2_X1 U2 ( .A(input0[7]), .B(input0[2]), .Z(output0[3]) );
  XOR2_X1 U3 ( .A(input0[7]), .B(input0[3]), .Z(output0[4]) );
endmodule


module times3_0 ( input0, output0 );
  input [7:0] input0;
  output [7:0] output0;

  wire   [7:0] input2;

  times2_4 timesTWO ( .input0(input0), .output0(input2) );
  XOR2_X1 U1 ( .A(input0[0]), .B(input2[0]), .Z(output0[0]) );
  XOR2_X1 U2 ( .A(input0[1]), .B(input2[1]), .Z(output0[1]) );
  XOR2_X1 U3 ( .A(input0[2]), .B(input2[2]), .Z(output0[2]) );
  XOR2_X1 U4 ( .A(input0[3]), .B(input2[3]), .Z(output0[3]) );
  XOR2_X1 U5 ( .A(input0[4]), .B(input2[4]), .Z(output0[4]) );
  XOR2_X1 U6 ( .A(input0[5]), .B(input2[5]), .Z(output0[5]) );
  XOR2_X1 U7 ( .A(input0[6]), .B(input2[6]), .Z(output0[6]) );
  XOR2_X1 U8 ( .A(input0[7]), .B(input2[7]), .Z(output0[7]) );
endmodule


module MC1Col_0 ( input0, output0 );
  input [31:0] input0;
  output [7:0] output0;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
;
  wire   [7:0] S02;
  wire   [7:0] S13;

  times2_0 timesTWO ( .input0(input0[31:24]), .output0(S02) );
  times3_0 timesTHREE ( .input0(input0[23:16]), .output0(S13) );
  XOR2_X1 U1 ( .A(S02[0]), .B(S13[0]), .Z(n2) );
  XNOR2_X1 U2 ( .A(input0[0]), .B(input0[8]), .ZN(n1) );
  XNOR2_X1 U3 ( .A(n2), .B(n1), .ZN(output0[0]) );
  XOR2_X1 U4 ( .A(S02[1]), .B(S13[1]), .Z(n4) );
  XNOR2_X1 U5 ( .A(input0[1]), .B(input0[9]), .ZN(n3) );
  XNOR2_X1 U6 ( .A(n4), .B(n3), .ZN(output0[1]) );
  XOR2_X1 U7 ( .A(S02[2]), .B(S13[2]), .Z(n6) );
  XNOR2_X1 U8 ( .A(input0[10]), .B(input0[2]), .ZN(n5) );
  XNOR2_X1 U9 ( .A(n6), .B(n5), .ZN(output0[2]) );
  XOR2_X1 U10 ( .A(S02[3]), .B(S13[3]), .Z(n8) );
  XNOR2_X1 U11 ( .A(input0[11]), .B(input0[3]), .ZN(n7) );
  XNOR2_X1 U12 ( .A(n8), .B(n7), .ZN(output0[3]) );
  XOR2_X1 U13 ( .A(S02[4]), .B(S13[4]), .Z(n10) );
  XNOR2_X1 U14 ( .A(input0[12]), .B(input0[4]), .ZN(n9) );
  XNOR2_X1 U15 ( .A(n10), .B(n9), .ZN(output0[4]) );
  XOR2_X1 U16 ( .A(S02[5]), .B(S13[5]), .Z(n12) );
  XNOR2_X1 U17 ( .A(input0[13]), .B(input0[5]), .ZN(n11) );
  XNOR2_X1 U18 ( .A(n12), .B(n11), .ZN(output0[5]) );
  XOR2_X1 U19 ( .A(S02[6]), .B(S13[6]), .Z(n14) );
  XNOR2_X1 U20 ( .A(input0[14]), .B(input0[6]), .ZN(n13) );
  XNOR2_X1 U21 ( .A(n14), .B(n13), .ZN(output0[6]) );
  XOR2_X1 U22 ( .A(S02[7]), .B(S13[7]), .Z(n16) );
  XNOR2_X1 U23 ( .A(input0[15]), .B(input0[7]), .ZN(n15) );
  XNOR2_X1 U24 ( .A(n16), .B(n15), .ZN(output0[7]) );
endmodule


module times2_7 ( input0, output0 );
  input [7:0] input0;
  output [7:0] output0;

  assign output0[7] = input0[6];
  assign output0[6] = input0[5];
  assign output0[5] = input0[4];
  assign output0[2] = input0[1];
  assign output0[0] = input0[7];

  XOR2_X1 U1 ( .A(input0[7]), .B(input0[0]), .Z(output0[1]) );
  XOR2_X1 U2 ( .A(input0[7]), .B(input0[2]), .Z(output0[3]) );
  XOR2_X1 U3 ( .A(input0[7]), .B(input0[3]), .Z(output0[4]) );
endmodule


module times2_3 ( input0, output0 );
  input [7:0] input0;
  output [7:0] output0;

  assign output0[7] = input0[6];
  assign output0[6] = input0[5];
  assign output0[5] = input0[4];
  assign output0[2] = input0[1];
  assign output0[0] = input0[7];

  XOR2_X1 U1 ( .A(input0[7]), .B(input0[0]), .Z(output0[1]) );
  XOR2_X1 U2 ( .A(input0[7]), .B(input0[2]), .Z(output0[3]) );
  XOR2_X1 U3 ( .A(input0[7]), .B(input0[3]), .Z(output0[4]) );
endmodule


module times3_3 ( input0, output0 );
  input [7:0] input0;
  output [7:0] output0;

  wire   [7:0] input2;

  times2_3 timesTWO ( .input0(input0), .output0(input2) );
  XOR2_X1 U1 ( .A(input0[0]), .B(input2[0]), .Z(output0[0]) );
  XOR2_X1 U2 ( .A(input0[1]), .B(input2[1]), .Z(output0[1]) );
  XOR2_X1 U3 ( .A(input0[2]), .B(input2[2]), .Z(output0[2]) );
  XOR2_X1 U4 ( .A(input0[3]), .B(input2[3]), .Z(output0[3]) );
  XOR2_X1 U5 ( .A(input0[4]), .B(input2[4]), .Z(output0[4]) );
  XOR2_X1 U6 ( .A(input0[5]), .B(input2[5]), .Z(output0[5]) );
  XOR2_X1 U7 ( .A(input0[6]), .B(input2[6]), .Z(output0[6]) );
  XOR2_X1 U8 ( .A(input0[7]), .B(input2[7]), .Z(output0[7]) );
endmodule


module MC1Col_3 ( input0, output0 );
  input [31:0] input0;
  output [7:0] output0;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
;
  wire   [7:0] S02;
  wire   [7:0] S13;

  times2_7 timesTWO ( .input0(input0[31:24]), .output0(S02) );
  times3_3 timesTHREE ( .input0(input0[23:16]), .output0(S13) );
  XOR2_X1 U1 ( .A(S02[0]), .B(S13[0]), .Z(n2) );
  XNOR2_X1 U2 ( .A(input0[0]), .B(input0[8]), .ZN(n1) );
  XNOR2_X1 U3 ( .A(n2), .B(n1), .ZN(output0[0]) );
  XOR2_X1 U4 ( .A(S02[1]), .B(S13[1]), .Z(n4) );
  XNOR2_X1 U5 ( .A(input0[1]), .B(input0[9]), .ZN(n3) );
  XNOR2_X1 U6 ( .A(n4), .B(n3), .ZN(output0[1]) );
  XOR2_X1 U7 ( .A(S02[2]), .B(S13[2]), .Z(n6) );
  XNOR2_X1 U8 ( .A(input0[10]), .B(input0[2]), .ZN(n5) );
  XNOR2_X1 U9 ( .A(n6), .B(n5), .ZN(output0[2]) );
  XOR2_X1 U10 ( .A(S02[3]), .B(S13[3]), .Z(n8) );
  XNOR2_X1 U11 ( .A(input0[11]), .B(input0[3]), .ZN(n7) );
  XNOR2_X1 U12 ( .A(n8), .B(n7), .ZN(output0[3]) );
  XOR2_X1 U13 ( .A(S02[4]), .B(S13[4]), .Z(n10) );
  XNOR2_X1 U14 ( .A(input0[12]), .B(input0[4]), .ZN(n9) );
  XNOR2_X1 U15 ( .A(n10), .B(n9), .ZN(output0[4]) );
  XOR2_X1 U16 ( .A(S02[5]), .B(S13[5]), .Z(n12) );
  XNOR2_X1 U17 ( .A(input0[13]), .B(input0[5]), .ZN(n11) );
  XNOR2_X1 U18 ( .A(n12), .B(n11), .ZN(output0[5]) );
  XOR2_X1 U19 ( .A(S02[6]), .B(S13[6]), .Z(n14) );
  XNOR2_X1 U20 ( .A(input0[14]), .B(input0[6]), .ZN(n13) );
  XNOR2_X1 U21 ( .A(n14), .B(n13), .ZN(output0[6]) );
  XOR2_X1 U22 ( .A(S02[7]), .B(S13[7]), .Z(n16) );
  XNOR2_X1 U23 ( .A(input0[15]), .B(input0[7]), .ZN(n15) );
  XNOR2_X1 U24 ( .A(n16), .B(n15), .ZN(output0[7]) );
endmodule


module times2_6 ( input0, output0 );
  input [7:0] input0;
  output [7:0] output0;

  assign output0[7] = input0[6];
  assign output0[6] = input0[5];
  assign output0[5] = input0[4];
  assign output0[2] = input0[1];
  assign output0[0] = input0[7];

  XOR2_X1 U1 ( .A(input0[7]), .B(input0[0]), .Z(output0[1]) );
  XOR2_X1 U2 ( .A(input0[7]), .B(input0[2]), .Z(output0[3]) );
  XOR2_X1 U3 ( .A(input0[7]), .B(input0[3]), .Z(output0[4]) );
endmodule


module times2_2 ( input0, output0 );
  input [7:0] input0;
  output [7:0] output0;

  assign output0[7] = input0[6];
  assign output0[6] = input0[5];
  assign output0[5] = input0[4];
  assign output0[2] = input0[1];
  assign output0[0] = input0[7];

  XOR2_X1 U1 ( .A(input0[7]), .B(input0[0]), .Z(output0[1]) );
  XOR2_X1 U2 ( .A(input0[7]), .B(input0[2]), .Z(output0[3]) );
  XOR2_X1 U3 ( .A(input0[7]), .B(input0[3]), .Z(output0[4]) );
endmodule


module times3_2 ( input0, output0 );
  input [7:0] input0;
  output [7:0] output0;

  wire   [7:0] input2;

  times2_2 timesTWO ( .input0(input0), .output0(input2) );
  XOR2_X1 U1 ( .A(input0[0]), .B(input2[0]), .Z(output0[0]) );
  XOR2_X1 U2 ( .A(input0[1]), .B(input2[1]), .Z(output0[1]) );
  XOR2_X1 U3 ( .A(input0[2]), .B(input2[2]), .Z(output0[2]) );
  XOR2_X1 U4 ( .A(input0[3]), .B(input2[3]), .Z(output0[3]) );
  XOR2_X1 U5 ( .A(input0[4]), .B(input2[4]), .Z(output0[4]) );
  XOR2_X1 U6 ( .A(input0[5]), .B(input2[5]), .Z(output0[5]) );
  XOR2_X1 U7 ( .A(input0[6]), .B(input2[6]), .Z(output0[6]) );
  XOR2_X1 U8 ( .A(input0[7]), .B(input2[7]), .Z(output0[7]) );
endmodule


module MC1Col_2 ( input0, output0 );
  input [31:0] input0;
  output [7:0] output0;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
;
  wire   [7:0] S02;
  wire   [7:0] S13;

  times2_6 timesTWO ( .input0(input0[31:24]), .output0(S02) );
  times3_2 timesTHREE ( .input0(input0[23:16]), .output0(S13) );
  XOR2_X1 U1 ( .A(S02[0]), .B(S13[0]), .Z(n2) );
  XNOR2_X1 U2 ( .A(input0[0]), .B(input0[8]), .ZN(n1) );
  XNOR2_X1 U3 ( .A(n2), .B(n1), .ZN(output0[0]) );
  XOR2_X1 U4 ( .A(S02[1]), .B(S13[1]), .Z(n4) );
  XNOR2_X1 U5 ( .A(input0[1]), .B(input0[9]), .ZN(n3) );
  XNOR2_X1 U6 ( .A(n4), .B(n3), .ZN(output0[1]) );
  XOR2_X1 U7 ( .A(S02[2]), .B(S13[2]), .Z(n6) );
  XNOR2_X1 U8 ( .A(input0[10]), .B(input0[2]), .ZN(n5) );
  XNOR2_X1 U9 ( .A(n6), .B(n5), .ZN(output0[2]) );
  XOR2_X1 U10 ( .A(S02[3]), .B(S13[3]), .Z(n8) );
  XNOR2_X1 U11 ( .A(input0[11]), .B(input0[3]), .ZN(n7) );
  XNOR2_X1 U12 ( .A(n8), .B(n7), .ZN(output0[3]) );
  XOR2_X1 U13 ( .A(S02[4]), .B(S13[4]), .Z(n10) );
  XNOR2_X1 U14 ( .A(input0[12]), .B(input0[4]), .ZN(n9) );
  XNOR2_X1 U15 ( .A(n10), .B(n9), .ZN(output0[4]) );
  XOR2_X1 U16 ( .A(S02[5]), .B(S13[5]), .Z(n12) );
  XNOR2_X1 U17 ( .A(input0[13]), .B(input0[5]), .ZN(n11) );
  XNOR2_X1 U18 ( .A(n12), .B(n11), .ZN(output0[5]) );
  XOR2_X1 U19 ( .A(S02[6]), .B(S13[6]), .Z(n14) );
  XNOR2_X1 U20 ( .A(input0[14]), .B(input0[6]), .ZN(n13) );
  XNOR2_X1 U21 ( .A(n14), .B(n13), .ZN(output0[6]) );
  XOR2_X1 U22 ( .A(S02[7]), .B(S13[7]), .Z(n16) );
  XNOR2_X1 U23 ( .A(input0[15]), .B(input0[7]), .ZN(n15) );
  XNOR2_X1 U24 ( .A(n16), .B(n15), .ZN(output0[7]) );
endmodule


module times2_5 ( input0, output0 );
  input [7:0] input0;
  output [7:0] output0;

  assign output0[7] = input0[6];
  assign output0[6] = input0[5];
  assign output0[5] = input0[4];
  assign output0[2] = input0[1];
  assign output0[0] = input0[7];

  XOR2_X1 U1 ( .A(input0[7]), .B(input0[0]), .Z(output0[1]) );
  XOR2_X1 U2 ( .A(input0[7]), .B(input0[2]), .Z(output0[3]) );
  XOR2_X1 U3 ( .A(input0[7]), .B(input0[3]), .Z(output0[4]) );
endmodule


module times2_1 ( input0, output0 );
  input [7:0] input0;
  output [7:0] output0;

  assign output0[7] = input0[6];
  assign output0[6] = input0[5];
  assign output0[5] = input0[4];
  assign output0[2] = input0[1];
  assign output0[0] = input0[7];

  XOR2_X1 U1 ( .A(input0[7]), .B(input0[0]), .Z(output0[1]) );
  XOR2_X1 U2 ( .A(input0[7]), .B(input0[2]), .Z(output0[3]) );
  XOR2_X1 U3 ( .A(input0[7]), .B(input0[3]), .Z(output0[4]) );
endmodule


module times3_1 ( input0, output0 );
  input [7:0] input0;
  output [7:0] output0;

  wire   [7:0] input2;

  times2_1 timesTWO ( .input0(input0), .output0(input2) );
  XOR2_X1 U1 ( .A(input0[0]), .B(input2[0]), .Z(output0[0]) );
  XOR2_X1 U2 ( .A(input0[1]), .B(input2[1]), .Z(output0[1]) );
  XOR2_X1 U3 ( .A(input0[2]), .B(input2[2]), .Z(output0[2]) );
  XOR2_X1 U4 ( .A(input0[3]), .B(input2[3]), .Z(output0[3]) );
  XOR2_X1 U5 ( .A(input0[4]), .B(input2[4]), .Z(output0[4]) );
  XOR2_X1 U6 ( .A(input0[5]), .B(input2[5]), .Z(output0[5]) );
  XOR2_X1 U7 ( .A(input0[6]), .B(input2[6]), .Z(output0[6]) );
  XOR2_X1 U8 ( .A(input0[7]), .B(input2[7]), .Z(output0[7]) );
endmodule


module MC1Col_1 ( input0, output0 );
  input [31:0] input0;
  output [7:0] output0;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
;
  wire   [7:0] S02;
  wire   [7:0] S13;

  times2_5 timesTWO ( .input0(input0[31:24]), .output0(S02) );
  times3_1 timesTHREE ( .input0(input0[23:16]), .output0(S13) );
  XOR2_X1 U1 ( .A(S02[0]), .B(S13[0]), .Z(n2) );
  XNOR2_X1 U2 ( .A(input0[0]), .B(input0[8]), .ZN(n1) );
  XNOR2_X1 U3 ( .A(n2), .B(n1), .ZN(output0[0]) );
  XOR2_X1 U4 ( .A(S02[1]), .B(S13[1]), .Z(n4) );
  XNOR2_X1 U5 ( .A(input0[1]), .B(input0[9]), .ZN(n3) );
  XNOR2_X1 U6 ( .A(n4), .B(n3), .ZN(output0[1]) );
  XOR2_X1 U7 ( .A(S02[2]), .B(S13[2]), .Z(n6) );
  XNOR2_X1 U8 ( .A(input0[10]), .B(input0[2]), .ZN(n5) );
  XNOR2_X1 U9 ( .A(n6), .B(n5), .ZN(output0[2]) );
  XOR2_X1 U10 ( .A(S02[3]), .B(S13[3]), .Z(n8) );
  XNOR2_X1 U11 ( .A(input0[11]), .B(input0[3]), .ZN(n7) );
  XNOR2_X1 U12 ( .A(n8), .B(n7), .ZN(output0[3]) );
  XOR2_X1 U13 ( .A(S02[4]), .B(S13[4]), .Z(n10) );
  XNOR2_X1 U14 ( .A(input0[12]), .B(input0[4]), .ZN(n9) );
  XNOR2_X1 U15 ( .A(n10), .B(n9), .ZN(output0[4]) );
  XOR2_X1 U16 ( .A(S02[5]), .B(S13[5]), .Z(n12) );
  XNOR2_X1 U17 ( .A(input0[13]), .B(input0[5]), .ZN(n11) );
  XNOR2_X1 U18 ( .A(n12), .B(n11), .ZN(output0[5]) );
  XOR2_X1 U19 ( .A(S02[6]), .B(S13[6]), .Z(n14) );
  XNOR2_X1 U20 ( .A(input0[14]), .B(input0[6]), .ZN(n13) );
  XNOR2_X1 U21 ( .A(n14), .B(n13), .ZN(output0[6]) );
  XOR2_X1 U22 ( .A(S02[7]), .B(S13[7]), .Z(n16) );
  XNOR2_X1 U23 ( .A(input0[15]), .B(input0[7]), .ZN(n15) );
  XNOR2_X1 U24 ( .A(n16), .B(n15), .ZN(output0[7]) );
endmodule


module MC ( input0, output0 );
  input [31:0] input0;
  output [31:0] output0;


  MC1Col_0 line0 ( .input0(input0), .output0(output0[31:24]) );
  MC1Col_3 line1 ( .input0({input0[23:0], input0[31:24]}), .output0(
        output0[23:16]) );
  MC1Col_2 line2 ( .input0({input0[15:0], input0[31:16]}), .output0(
        output0[15:8]) );
  MC1Col_1 line3 ( .input0({input0[7:0], input0[31:8]}), .output0(output0[7:0]) );
endmodule


module MyDFFs_271 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_271 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_271 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module MyDFFs_270 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_270 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_270 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module MyDFFs_269 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_269 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_269 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module MyDFFs_268 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_268 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_268 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module MyDFFs_267 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_267 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_267 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module MyDFFs_266 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_266 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_266 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module MyDFFs_265 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_265 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_265 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module MyDFFs_264 ( D, CK, Q );
  input D, CK;
  output Q;


  DFF_X1 FF ( .D(D), .CK(CK), .Q(Q), .QN() );
endmodule


module MyDFF_264 ( D, CK, Q, QN );
  input D, CK;
  output Q, QN;


  MyDFFs_264 FF ( .D(D), .CK(CK), .Q(Q) );
  INV_X1 U1 ( .A(Q), .ZN(QN) );
endmodule


module RCon ( clk, nReset, en, enOut, notFirst, final, rconst );
  output [7:0] rconst;
  input clk, nReset, en, enOut;
  output notFirst, final;
  wire   n51, n12, n50, n49, n11, n48, n47, n46, n45, n44, n10, n1, n2, n3, n4,
         n6, n7, n8, n9, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43;
  wire   [7:0] s_current_state;

  MyDFF_271 s_current_state_reg_0_ ( .D(n51), .CK(clk), .Q(s_current_state[0]), 
        .QN(n12) );
  MyDFF_270 s_current_state_reg_1_ ( .D(n50), .CK(clk), .Q(s_current_state[1]), 
        .QN(n1) );
  MyDFF_269 s_current_state_reg_2_ ( .D(n49), .CK(clk), .Q(s_current_state[2]), 
        .QN(n11) );
  MyDFF_268 s_current_state_reg_3_ ( .D(n48), .CK(clk), .Q(s_current_state[3]), 
        .QN() );
  MyDFF_267 s_current_state_reg_4_ ( .D(n47), .CK(clk), .Q(s_current_state[4]), 
        .QN(n3) );
  MyDFF_266 s_current_state_reg_5_ ( .D(n46), .CK(clk), .Q(s_current_state[5]), 
        .QN(n4) );
  MyDFF_265 s_current_state_reg_6_ ( .D(n45), .CK(clk), .Q(s_current_state[6]), 
        .QN(n2) );
  MyDFF_264 s_current_state_reg_7_ ( .D(n44), .CK(clk), .Q(s_current_state[7]), 
        .QN(n10) );
  NOR2_X1 U1 ( .A1(n8), .A2(n7), .ZN(final) );
  NOR2_X1 U2 ( .A1(en), .A2(n6), .ZN(n34) );
  INV_X1 U3 ( .A(nReset), .ZN(n6) );
  NAND2_X1 U4 ( .A1(s_current_state[1]), .A2(s_current_state[2]), .ZN(n8) );
  NAND2_X1 U5 ( .A1(s_current_state[5]), .A2(s_current_state[4]), .ZN(n7) );
  NOR2_X1 U6 ( .A1(n34), .A2(n2), .ZN(n13) );
  NOR2_X1 U7 ( .A1(en), .A2(n10), .ZN(n9) );
  NOR2_X1 U8 ( .A1(n13), .A2(n9), .ZN(n14) );
  NAND2_X1 U9 ( .A1(nReset), .A2(n14), .ZN(n44) );
  NOR2_X1 U10 ( .A1(n34), .A2(n6), .ZN(n29) );
  NAND2_X1 U11 ( .A1(s_current_state[5]), .A2(n29), .ZN(n16) );
  NAND2_X1 U12 ( .A1(s_current_state[6]), .A2(n34), .ZN(n15) );
  NAND2_X1 U13 ( .A1(n16), .A2(n15), .ZN(n45) );
  NAND2_X1 U14 ( .A1(s_current_state[4]), .A2(n29), .ZN(n18) );
  NAND2_X1 U15 ( .A1(s_current_state[5]), .A2(n34), .ZN(n17) );
  NAND2_X1 U16 ( .A1(n18), .A2(n17), .ZN(n46) );
  XOR2_X1 U17 ( .A(s_current_state[3]), .B(s_current_state[7]), .Z(n19) );
  NAND2_X1 U18 ( .A1(n19), .A2(n29), .ZN(n21) );
  NAND2_X1 U19 ( .A1(n34), .A2(s_current_state[4]), .ZN(n20) );
  NAND2_X1 U20 ( .A1(n21), .A2(n20), .ZN(n47) );
  XOR2_X1 U21 ( .A(n11), .B(s_current_state[7]), .Z(n22) );
  NOR2_X1 U22 ( .A1(n34), .A2(n22), .ZN(n23) );
  NOR2_X1 U23 ( .A1(n23), .A2(n6), .ZN(n25) );
  NAND2_X1 U24 ( .A1(n34), .A2(s_current_state[3]), .ZN(n24) );
  NAND2_X1 U25 ( .A1(n25), .A2(n24), .ZN(n48) );
  NOR2_X1 U26 ( .A1(n34), .A2(n1), .ZN(n27) );
  NOR2_X1 U27 ( .A1(en), .A2(n11), .ZN(n26) );
  NOR2_X1 U28 ( .A1(n27), .A2(n26), .ZN(n28) );
  NAND2_X1 U29 ( .A1(nReset), .A2(n28), .ZN(n49) );
  XOR2_X1 U30 ( .A(s_current_state[0]), .B(s_current_state[7]), .Z(n30) );
  NAND2_X1 U31 ( .A1(n30), .A2(n29), .ZN(n32) );
  NAND2_X1 U32 ( .A1(n34), .A2(s_current_state[1]), .ZN(n31) );
  NAND2_X1 U33 ( .A1(n32), .A2(n31), .ZN(n50) );
  NOR2_X1 U34 ( .A1(n34), .A2(n10), .ZN(n33) );
  NOR2_X1 U35 ( .A1(n6), .A2(n33), .ZN(n36) );
  NAND2_X1 U36 ( .A1(n34), .A2(s_current_state[0]), .ZN(n35) );
  NAND2_X1 U37 ( .A1(n36), .A2(n35), .ZN(n51) );
  NAND2_X1 U38 ( .A1(n1), .A2(n3), .ZN(n38) );
  NAND2_X1 U39 ( .A1(s_current_state[2]), .A2(s_current_state[0]), .ZN(n37) );
  NOR2_X1 U40 ( .A1(n38), .A2(n37), .ZN(n42) );
  NAND2_X1 U41 ( .A1(s_current_state[3]), .A2(s_current_state[7]), .ZN(n40) );
  NAND2_X1 U42 ( .A1(n2), .A2(n4), .ZN(n39) );
  NOR2_X1 U43 ( .A1(n40), .A2(n39), .ZN(n41) );
  NAND2_X1 U44 ( .A1(n42), .A2(n41), .ZN(notFirst) );
  INV_X1 U45 ( .A(enOut), .ZN(n43) );
  NOR2_X1 U46 ( .A1(n12), .A2(n43), .ZN(rconst[0]) );
  NOR2_X1 U47 ( .A1(n1), .A2(n43), .ZN(rconst[1]) );
  NOR2_X1 U48 ( .A1(n11), .A2(n43), .ZN(rconst[2]) );
  AND2_X1 U49 ( .A1(s_current_state[3]), .A2(enOut), .ZN(rconst[3]) );
  NOR2_X1 U50 ( .A1(n3), .A2(n43), .ZN(rconst[4]) );
  NOR2_X1 U51 ( .A1(n4), .A2(n43), .ZN(rconst[5]) );
  NOR2_X1 U52 ( .A1(n2), .A2(n43), .ZN(rconst[6]) );
  NOR2_X1 U53 ( .A1(n10), .A2(n43), .ZN(rconst[7]) );
endmodule


module XOR_forMUX_654 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_327 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_653 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_327 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_654 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_327 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_653 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_652 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_326 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_651 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_326 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_652 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_326 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_651 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_650 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_325 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_649 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_325 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_650 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_325 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_649 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_648 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_324 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_647 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_324 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_648 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_324 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_647 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_646 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_323 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_645 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_323 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_646 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_323 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_645 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_644 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_322 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_643 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_322 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_644 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_322 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_643 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_642 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_321 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_641 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_321 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_642 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_321 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_641 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module XOR_forMUX_640 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module AND_forMUX_320 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module XOR_forMUX_639 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MUX_1bit_320 ( S, D0, D1, Q );
  input S, D0, D1;
  output Q;
  wire   X, Y;

  XOR_forMUX_640 XOR1 ( .A(D0), .B(D1), .C(X) );
  AND_forMUX_320 AND1 ( .A(S), .B(X), .C(Y) );
  XOR_forMUX_639 XOR2 ( .A(Y), .B(D0), .C(Q) );
endmodule


module MUX_size8_8 ( S, D0, D1, Q );
  input [7:0] D0;
  input [7:0] D1;
  output [7:0] Q;
  input S;


  MUX_1bit_327 mux_inst_0 ( .S(S), .D0(D0[0]), .D1(D1[0]), .Q(Q[0]) );
  MUX_1bit_326 mux_inst_1 ( .S(S), .D0(D0[1]), .D1(D1[1]), .Q(Q[1]) );
  MUX_1bit_325 mux_inst_2 ( .S(S), .D0(D0[2]), .D1(D1[2]), .Q(Q[2]) );
  MUX_1bit_324 mux_inst_3 ( .S(S), .D0(D0[3]), .D1(D1[3]), .Q(Q[3]) );
  MUX_1bit_323 mux_inst_4 ( .S(S), .D0(D0[4]), .D1(D1[4]), .Q(Q[4]) );
  MUX_1bit_322 mux_inst_5 ( .S(S), .D0(D0[5]), .D1(D1[5]), .Q(Q[5]) );
  MUX_1bit_321 mux_inst_6 ( .S(S), .D0(D0[6]), .D1(D1[6]), .Q(Q[6]) );
  MUX_1bit_320 mux_inst_7 ( .S(S), .D0(D0[7]), .D1(D1[7]), .Q(Q[7]) );
endmodule


module MyXOR_0 ( A, B, C );
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


module MyXOR_87 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_86 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_85 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_84 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_83 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
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


module MyXOR_69 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
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


module MyAND_0 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_33 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyXOR_63 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyAND_32 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyXOR_62 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyAND_31 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_30 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyXOR_61 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyAND_29 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyXOR_60 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
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


module MyXOR_59 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyAND_26 ( A, B, C );
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


module MyAND_25 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
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


module MyXOR_45 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
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


module MyAND_12 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_11 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_10 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_9 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_8 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_7 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_6 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_5 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_4 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_3 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_2 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
endmodule


module MyAND_1 ( A, B, C );
  input A, B;
  output C;


  AND2_X1 U1 ( .A1(A), .A2(B), .ZN(C) );
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


module MyXOR_24 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_23 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_22 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_21 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_20 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_19 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_18 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_17 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_16 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_15 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_14 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_13 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_12 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_11 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_10 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_9 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_8 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_7 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_6 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_5 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_4 ( A, B, C );
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


module MyXOR_3 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_2 ( A, B, C );
  input A, B;
  output C;


  XOR2_X1 U1 ( .A(A), .B(B), .Z(C) );
endmodule


module MyXOR_1 ( A, B, C );
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
  MyXOR_89 XOR_T2 ( .A(x[7]), .B(x[2]), .C(T2) );
  MyXOR_88 XOR_T3 ( .A(x[7]), .B(x[1]), .C(T3) );
  MyXOR_87 XOR_T4 ( .A(x[4]), .B(x[2]), .C(T4) );
  MyXOR_86 XOR_T5 ( .A(x[3]), .B(x[1]), .C(T5) );
  MyXOR_85 XOR_T6 ( .A(T1), .B(T5), .C(T6) );
  MyXOR_84 XOR_T7 ( .A(x[6]), .B(x[5]), .C(T7) );
  MyXOR_83 XOR_T8 ( .A(x[0]), .B(T6), .C(T8) );
  MyXOR_82 XOR_T9 ( .A(x[0]), .B(T7), .C(T9) );
  MyXOR_81 XOR_T10 ( .A(T6), .B(T7), .C(T10) );
  MyXOR_80 XOR_T11 ( .A(x[6]), .B(x[2]), .C(T11) );
  MyXOR_79 XOR_T12 ( .A(x[5]), .B(x[2]), .C(T12) );
  MyXOR_78 XOR_T13 ( .A(T3), .B(T4), .C(T13) );
  MyXOR_77 XOR_T14 ( .A(T6), .B(T11), .C(T14) );
  MyXOR_76 XOR_T15 ( .A(T5), .B(T11), .C(T15) );
  MyXOR_75 XOR_T16 ( .A(T5), .B(T12), .C(T16) );
  MyXOR_74 XOR_T17 ( .A(T9), .B(T16), .C(T17) );
  MyXOR_73 XOR_T18 ( .A(x[4]), .B(x[0]), .C(T18) );
  MyXOR_72 XOR_T19 ( .A(T7), .B(T18), .C(T19) );
  MyXOR_71 XOR_T20 ( .A(T1), .B(T19), .C(T20) );
  MyXOR_70 XOR_T21 ( .A(x[1]), .B(x[0]), .C(T21) );
  MyXOR_69 XOR_T22 ( .A(T7), .B(T21), .C(T22) );
  MyXOR_68 XOR_T23 ( .A(T2), .B(T22), .C(T23) );
  MyXOR_67 XOR_T24 ( .A(T2), .B(T10), .C(T24) );
  MyXOR_66 XOR_T25 ( .A(T20), .B(T17), .C(T25) );
  MyXOR_65 XOR_T26 ( .A(T3), .B(T16), .C(T26) );
  MyXOR_64 XOR_T27 ( .A(T1), .B(T12), .C(T27) );
  MyAND_0 AND_M1 ( .A(T13), .B(T6), .C(M1) );
  MyAND_33 AND_M2 ( .A(T23), .B(T8), .C(M2) );
  MyXOR_63 XOR_M3 ( .A(T14), .B(M1), .C(M3) );
  MyAND_32 AND_M4 ( .A(T19), .B(x[0]), .C(M4) );
  MyXOR_62 XOR_M5 ( .A(M4), .B(M1), .C(M5) );
  MyAND_31 AND_M6 ( .A(T3), .B(T16), .C(M6) );
  MyAND_30 AND_M7 ( .A(T22), .B(T9), .C(M7) );
  MyXOR_61 XOR_M8 ( .A(T26), .B(M6), .C(M8) );
  MyAND_29 AND_M9 ( .A(T20), .B(T17), .C(M9) );
  MyXOR_60 XOR_M10 ( .A(M9), .B(M6), .C(M10) );
  MyAND_28 AND_M11 ( .A(T1), .B(T15), .C(M11) );
  MyAND_27 AND_M12 ( .A(T4), .B(T27), .C(M12) );
  MyXOR_59 XOR_M13 ( .A(M12), .B(M11), .C(M13) );
  MyAND_26 AND_M14 ( .A(T2), .B(T10), .C(M14) );
  MyXOR_58 XOR_M15 ( .A(M14), .B(M11), .C(M15) );
  MyXOR_57 XOR_M16 ( .A(M3), .B(M2), .C(M16) );
  MyXOR_56 XOR_M17 ( .A(M5), .B(T24), .C(M17) );
  MyXOR_55 XOR_M18 ( .A(M8), .B(M7), .C(M18) );
  MyXOR_54 XOR_M19 ( .A(M10), .B(M15), .C(M19) );
  MyXOR_53 XOR_M20 ( .A(M16), .B(M13), .C(M20) );
  MyXOR_52 XOR_M21 ( .A(M17), .B(M15), .C(M21) );
  MyXOR_51 XOR_M22 ( .A(M18), .B(M13), .C(M22) );
  MyXOR_50 XOR_M23 ( .A(M19), .B(T25), .C(M23) );
  MyXOR_49 XOR_M24 ( .A(M22), .B(M23), .C(M24) );
  MyAND_25 AND_M25 ( .A(M22), .B(M20), .C(M25) );
  MyXOR_48 XOR_M26 ( .A(M21), .B(M25), .C(M26) );
  MyXOR_47 XOR_M27 ( .A(M20), .B(M21), .C(M27) );
  MyXOR_46 XOR_M28 ( .A(M23), .B(M25), .C(M28) );
  MyAND_24 AND_M29 ( .A(M28), .B(M27), .C(M29) );
  MyAND_23 AND_M30 ( .A(M26), .B(M24), .C(M30) );
  MyAND_22 AND_M31 ( .A(M20), .B(M23), .C(M31) );
  MyAND_21 AND_M32 ( .A(M27), .B(M31), .C(M32) );
  MyXOR_45 XOR_M33 ( .A(M27), .B(M25), .C(M33) );
  MyAND_20 AND_M34 ( .A(M21), .B(M22), .C(M34) );
  MyAND_19 AND_M35 ( .A(M24), .B(M34), .C(M35) );
  MyXOR_44 XOR_M36 ( .A(M24), .B(M25), .C(M36) );
  MyXOR_43 XOR_M37 ( .A(M21), .B(M29), .C(M37) );
  MyXOR_42 XOR_M38 ( .A(M32), .B(M33), .C(M38) );
  MyXOR_41 XOR_M39 ( .A(M23), .B(M30), .C(M39) );
  MyXOR_40 XOR_M40 ( .A(M35), .B(M36), .C(M40) );
  MyXOR_39 XOR_M41 ( .A(M38), .B(M40), .C(M41) );
  MyXOR_38 XOR_M42 ( .A(M37), .B(M39), .C(M42) );
  MyXOR_37 XOR_M43 ( .A(M37), .B(M38), .C(M43) );
  MyXOR_36 XOR_M44 ( .A(M39), .B(M40), .C(M44) );
  MyXOR_35 XOR_M45 ( .A(M42), .B(M41), .C(M45) );
  MyAND_18 AND_M46 ( .A(M44), .B(T6), .C(M46) );
  MyAND_17 AND_M47 ( .A(M40), .B(T8), .C(M47) );
  MyAND_16 AND_M48 ( .A(M39), .B(x[0]), .C(M48) );
  MyAND_15 AND_M49 ( .A(M43), .B(T16), .C(M49) );
  MyAND_14 AND_M50 ( .A(M38), .B(T9), .C(M50) );
  MyAND_13 AND_M51 ( .A(M37), .B(T17), .C(M51) );
  MyAND_12 AND_M52 ( .A(M42), .B(T15), .C(M52) );
  MyAND_11 AND_M53 ( .A(M45), .B(T27), .C(M53) );
  MyAND_10 AND_M54 ( .A(M41), .B(T10), .C(M54) );
  MyAND_9 AND_M55 ( .A(M44), .B(T13), .C(M55) );
  MyAND_8 AND_M56 ( .A(M40), .B(T23), .C(M56) );
  MyAND_7 AND_M57 ( .A(M39), .B(T19), .C(M57) );
  MyAND_6 AND_M58 ( .A(M43), .B(T3), .C(M58) );
  MyAND_5 AND_M59 ( .A(M38), .B(T22), .C(M59) );
  MyAND_4 AND_M60 ( .A(M37), .B(T20), .C(M60) );
  MyAND_3 AND_M61 ( .A(M42), .B(T1), .C(M61) );
  MyAND_2 AND_M62 ( .A(M45), .B(T4), .C(M62) );
  MyAND_1 AND_M63 ( .A(M41), .B(T2), .C(M63) );
  MyXOR_34 XOR_L0 ( .A(M61), .B(M62), .C(L0) );
  MyXOR_33 XOR_L1 ( .A(M50), .B(M56), .C(L1) );
  MyXOR_32 XOR_L2 ( .A(M46), .B(M48), .C(L2) );
  MyXOR_31 XOR_L3 ( .A(M47), .B(M55), .C(L3) );
  MyXOR_30 XOR_L4 ( .A(M54), .B(M58), .C(L4) );
  MyXOR_29 XOR_L5 ( .A(M49), .B(M61), .C(L5) );
  MyXOR_28 XOR_L6 ( .A(M62), .B(L5), .C(L6) );
  MyXOR_27 XOR_L7 ( .A(M46), .B(L3), .C(L7) );
  MyXOR_26 XOR_L8 ( .A(M51), .B(M59), .C(L8) );
  MyXOR_25 XOR_L9 ( .A(M52), .B(M53), .C(L9) );
  MyXOR_24 XOR_L10 ( .A(M53), .B(L4), .C(L10) );
  MyXOR_23 XOR_L11 ( .A(M60), .B(L2), .C(L11) );
  MyXOR_22 XOR_L12 ( .A(M48), .B(M51), .C(L12) );
  MyXOR_21 XOR_L13 ( .A(M50), .B(L0), .C(L13) );
  MyXOR_20 XOR_L14 ( .A(M52), .B(M61), .C(L14) );
  MyXOR_19 XOR_L15 ( .A(M55), .B(L1), .C(L15) );
  MyXOR_18 XOR_L16 ( .A(M56), .B(L0), .C(L16) );
  MyXOR_17 XOR_L17 ( .A(M57), .B(L1), .C(L17) );
  MyXOR_16 XOR_L18 ( .A(M58), .B(L8), .C(L18) );
  MyXOR_15 XOR_L19 ( .A(M63), .B(L4), .C(L19) );
  MyXOR_14 XOR_L20 ( .A(L0), .B(L1), .C(L20) );
  MyXOR_13 XOR_L21 ( .A(L1), .B(L7), .C(L21) );
  MyXOR_12 XOR_L22 ( .A(L3), .B(L12), .C(L22) );
  MyXOR_11 XOR_L23 ( .A(L18), .B(L2), .C(L23) );
  MyXOR_10 XOR_L24 ( .A(L15), .B(L9), .C(L24) );
  MyXOR_9 XOR_L25 ( .A(L6), .B(L10), .C(L25) );
  MyXOR_8 XOR_L26 ( .A(L7), .B(L9), .C(L26) );
  MyXOR_7 XOR_L27 ( .A(L8), .B(L10), .C(L27) );
  MyXOR_6 XOR_L28 ( .A(L11), .B(L14), .C(L28) );
  MyXOR_5 XOR_L29 ( .A(L11), .B(L17), .C(L29) );
  MyXOR_4 XOR_S0 ( .A(L6), .B(L24), .C(y[7]) );
  MyXNOR_0 XOR_S1 ( .A(L16), .B(L26), .C(y[6]) );
  MyXNOR_3 XOR_S2 ( .A(L19), .B(L28), .C(y[5]) );
  MyXOR_3 XOR_S3 ( .A(L6), .B(L21), .C(y[4]) );
  MyXOR_2 XOR_S4 ( .A(L20), .B(L22), .C(y[3]) );
  MyXOR_1 XOR_S5 ( .A(L25), .B(L29), .C(y[2]) );
  MyXNOR_2 XOR_S6 ( .A(L13), .B(L27), .C(y[1]) );
  MyXNOR_1 XOR_S7 ( .A(L6), .B(L23), .C(y[0]) );
endmodule


module AES ( clk, start, port_in, port_out, done );
  input [7:0] port_in;
  output [7:0] port_out;
  input clk, start;
  output done;
  wire   selMC, selSR, selXOR, enRCon, intFinal, enKS, intselXOR, notFirst, n2
;
  wire   [7:0] SboxOut;
  wire   [7:0] StateOutXORroundKey;
  wire   [7:0] StateIn;
  wire   [31:0] StateInMC;
  wire   [31:0] MCin;
  wire   [31:0] MCout;
  wire   [7:0] keyStateIn;
  wire   [7:0] roundConstant;
  wire   [7:0] keySBIn;
  wire   [7:0] SboxIn;

  controler ctrl ( .clk(clk), .nReset(n2), .done(done), .selMC(selMC), .selSR(
        selSR), .selXOR(selXOR), .enRCon(enRCon), .finalStep(), .Final(
        intFinal) );
  MUX_size8_0 MUX_StateIn ( .S(intFinal), .D0(SboxOut), .D1(
        StateOutXORroundKey), .Q(StateIn) );
  State stateArray ( .clk(clk), .selSR(selSR), .selMC(selMC), .inputSer(
        port_in), .nReset(n2), .input0(StateIn), .inMC(StateInMC), .output0(
        port_out), .outMC(MCin) );
  MUX_size32 MUX_StateInMC ( .S(intFinal), .D0(MCout), .D1(MCin), .Q(StateInMC) );
  KeyState KeyArray ( .clk(clk), .en(enKS), .selXOR(intselXOR), .selMC(selMC), 
        .inputSer(port_out), .nReset(n2), .input0(keyStateIn), .inSB(SboxOut), 
        .inRCon(roundConstant), .outSB(keySBIn), .roundKey(keyStateIn) );
  MC MixColumns ( .input0(MCin), .output0(MCout) );
  RCon calcRCon ( .clk(clk), .nReset(n2), .en(selSR), .enOut(enRCon), 
        .notFirst(notFirst), .final(intFinal), .rconst(roundConstant) );
  MUX_size8_8 MUX_SboxIn ( .S(selMC), .D0(StateOutXORroundKey), .D1(keySBIn), 
        .Q(SboxIn) );
  Sbox Inst_bSbox ( .x(SboxIn), .y(SboxOut) );
  NAND2_X1 U23 ( .A1(selSR), .A2(n2), .ZN(enKS) );
  INV_X1 U24 ( .A(start), .ZN(n2) );
  XOR2_X1 U25 ( .A(keyStateIn[0]), .B(port_out[0]), .Z(StateOutXORroundKey[0])
         );
  XOR2_X1 U26 ( .A(keyStateIn[1]), .B(port_out[1]), .Z(StateOutXORroundKey[1])
         );
  XOR2_X1 U27 ( .A(keyStateIn[2]), .B(port_out[2]), .Z(StateOutXORroundKey[2])
         );
  XOR2_X1 U28 ( .A(keyStateIn[3]), .B(port_out[3]), .Z(StateOutXORroundKey[3])
         );
  XOR2_X1 U29 ( .A(keyStateIn[4]), .B(port_out[4]), .Z(StateOutXORroundKey[4])
         );
  XOR2_X1 U30 ( .A(keyStateIn[5]), .B(port_out[5]), .Z(StateOutXORroundKey[5])
         );
  XOR2_X1 U31 ( .A(keyStateIn[6]), .B(port_out[6]), .Z(StateOutXORroundKey[6])
         );
  XOR2_X1 U32 ( .A(keyStateIn[7]), .B(port_out[7]), .Z(StateOutXORroundKey[7])
         );
  AND2_X1 U33 ( .A1(notFirst), .A2(selXOR), .ZN(intselXOR) );
endmodule

