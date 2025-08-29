`timescale 1ns / 1ps

module MyRegn #(parameter n = 4)(
    input  [n-1:0] D,
    input  C,
    output [n-1:0] Q
    );
    
   genvar i;
	
   generate 
      for (i=0;i<n;i=i+1) begin : gen_loop
         MyReg R (.D(D[i]), .C(C), .Q(Q[i]));
      end
   endgenerate

endmodule

//------------------------------------------

module MyReg(
    input  D,
    input  C,
    output reg Q=0
    );
    
    always @(posedge C) 
    begin
        Q <= D;
    end	

endmodule

//------------------------------------------

module MyMUXn #(parameter n = 4)(
    input  [n-1:0] A0,
    input  [n-1:0] A1,
	 input  S,
    output [n-1:0] C
    );

   genvar i;
	
   generate 
      for (i=0;i<n;i=i+1) begin : gen_loop
         MyMUX M (.A0(A0[i]), .A1(A1[i]), .S(S), .C(C[i]));
      end
   endgenerate

endmodule

//------------------------------------------

module MyMUX(
    input  A0,
    input  A1,
	 input  S,
    output C
    );
    
	 wire X, Y;
	 
    MyXOR X1 (.A(A0), .B(A1), .C(X));
	 MyAND A  (.A(S),  .B(X),  .C(Y));
	 MyXOR X2 (.A(Y),  .B(A0), .C(C));

endmodule

//------------------------------------------

module MyXOR(
    input  A,
    input  B,
    output C
    );
    
    assign C = A ^ B;

endmodule

//------------------------------------------

module MyXNOR(
    input  A,
    input  B,
    output C
    );
    
    assign C = ~(A ^ B);

endmodule

//------------------------------------------

module MyAND(
    input  A,
    input  B,
    output C
    );
    
    assign C = A & B;    

endmodule

//------------------------------------------

module Sbox(
    input  [7:0] x,
    output [7:0] y
    );

   wire T1,  T2,  T3,  T4,  T5,  T6,  T7,  T8,  T9;
   wire T10, T11, T12, T13, T14, T15, T16, T17, T18, T19;
   wire T20, T21, T22, T23, T24, T25, T26, T27;

   wire      M1,  M2,  M3,  M4,  M5,  M6,  M7,  M8,  M9;
   wire M10, M11, M12, M13, M14, M15, M16, M17, M18, M19;
   wire M20, M21, M22, M23, M24, M25, M26, M27, M28, M29;
   wire M30, M31, M32, M33, M34, M35, M36, M37, M38, M39;
   wire M40, M41, M42, M43, M44, M45, M46, M47, M48, M49;
   wire M50, M51, M52, M53, M54, M55, M56, M57, M58, M59;
   wire M60, M61, M62, M63;

   wire L0,  L1,  L2,  L3,  L4,  L5,  L6,  L7,  L8,  L9;
   wire L10, L11, L12, L13, L14, L15, L16, L17, L18, L19;
   wire L20, L21, L22, L23, L24, L25, L26, L27, L28, L29;


   //T1 = U0 + U3
   MyXOR XOR_T1 (.A(x[7]), .B(x[4]), .C(T1));

   //T2 = U0 + U5
   MyXOR XOR_T2 (.A(x[7]), .B(x[2]), .C(T2));

   //T3 = U0 + U6
   MyXOR XOR_T3 (.A(x[7]), .B(x[1]), .C(T3));

   //T4 = U3 + U5
   MyXOR XOR_T4 (.A(x[4]), .B(x[2]), .C(T4));

   //T5 = U4 + U6
   MyXOR XOR_T5 (.A(x[3]), .B(x[1]), .C(T5));

   //T6 = T1 + T5
   MyXOR XOR_T6 (.A(T1), .B(T5), .C(T6));

   //T7 = U1 + U2
   MyXOR XOR_T7 (.A(x[6]), .B(x[5]), .C(T7));

   //T8 = U7 + T6
   MyXOR XOR_T8 (.A(x[0]), .B(T6), .C(T8));

   //T9 = U7 + T7
   MyXOR XOR_T9 (.A(x[0]), .B(T7), .C(T9));

   //T10 = T6 + T7
   MyXOR XOR_T10 (.A(T6), .B(T7), .C(T10));

   //T11 = U1 + U5
   MyXOR XOR_T11 (.A(x[6]), .B(x[2]), .C(T11));

   //T12 = U2 + U5
   MyXOR XOR_T12 (.A(x[5]), .B(x[2]), .C(T12));

   //T13 = T3 + T4
   MyXOR XOR_T13 (.A(T3), .B(T4), .C(T13));

   //T14 = T6 + T11
   MyXOR XOR_T14 (.A(T6), .B(T11), .C(T14));

   //T15 = T5 + T11
   MyXOR XOR_T15 (.A(T5), .B(T11), .C(T15));

   //T16 = T5 + T12
   MyXOR XOR_T16 (.A(T5), .B(T12), .C(T16));

   //T17 = T9 + T16
   MyXOR XOR_T17 (.A(T9), .B(T16), .C(T17));

   //T18 = U3 + U7
   MyXOR XOR_T18 (.A(x[4]), .B(x[0]), .C(T18));

   //T19 = T7 + T18
   MyXOR XOR_T19 (.A(T7), .B(T18), .C(T19));

   //T20 = T1 + T19
   MyXOR XOR_T20 (.A(T1), .B(T19), .C(T20));

   //T21 = U6 + U7
   MyXOR XOR_T21 (.A(x[1]), .B(x[0]), .C(T21));

   //T22 = T7 + T21
   MyXOR XOR_T22 (.A(T7), .B(T21), .C(T22));

   //T23 = T2 + T22
   MyXOR XOR_T23 (.A(T2), .B(T22), .C(T23));

   //T24 = T2 + T10
   MyXOR XOR_T24 (.A(T2), .B(T10), .C(T24));

   //T25 = T20 + T17
   MyXOR XOR_T25 (.A(T20), .B(T17), .C(T25));

   //T26 = T3 + T16
   MyXOR XOR_T26 (.A(T3), .B(T16), .C(T26));

   //T27 = T1 + T12
   MyXOR XOR_T27 (.A(T1), .B(T12), .C(T27));

   //-----------------------------------------------
     
   //M1 = T13 x T6
   MyAND  AND_M1 (.A(T13), .B(T6), .C(M1));
   
   //M2 = T23 x T8
   MyAND  AND_M2 (.A(T23), .B(T8), .C(M2));
   
   //M3 = T14 + M1
   MyXOR XOR_M3 (.A(T14), .B(M1), .C(M3));
   
   //M4 = T19 x x[0]
   MyAND  AND_M4 (.A(T19), .B(x[0]), .C(M4));
   
   //M5 = M4 + M1
   MyXOR XOR_M5 (.A(M4), .B(M1), .C(M5));
   
   //M6 = T3 x T16
   MyAND  AND_M6 (.A(T3), .B(T16), .C(M6));
   
   //M7 = T22 x T9
   MyAND  AND_M7 (.A(T22), .B(T9), .C(M7));
   
   //M8 = T26 + M6
   MyXOR XOR_M8 (.A(T26), .B(M6), .C(M8));
   
   //M9 = T20 x T17
   MyAND  AND_M9 (.A(T20), .B(T17), .C(M9));
   
   //M10 = M9 + M6
   MyXOR XOR_M10 (.A(M9), .B(M6), .C(M10));
   
   //M11 = T1 x T15
   MyAND  AND_M11 (.A(T1), .B(T15), .C(M11));
   
   //M12 = T4 x T27
   MyAND  AND_M12 (.A(T4), .B(T27), .C(M12));
   
   //M13 = M12 + M11
   MyXOR XOR_M13 (.A(M12), .B(M11), .C(M13));
   
   //M14 = T2 x T10
   MyAND  AND_M14 (.A(T2), .B(T10), .C(M14));
   
   //M15 = M14 + M11
   MyXOR XOR_M15 (.A(M14), .B(M11), .C(M15));
   
   //M16 = M3 + M2
   MyXOR XOR_M16 (.A(M3), .B(M2), .C(M16));
   
   //M17 = M5 + T24
   MyXOR XOR_M17 (.A(M5), .B(T24), .C(M17));
   
   //M18 = M8 + M7
   MyXOR XOR_M18 (.A(M8), .B(M7), .C(M18));
   
   //M19 = M10 + M15
   MyXOR XOR_M19 (.A(M10), .B(M15), .C(M19));
   
   //M20 = M16 + M13
   MyXOR XOR_M20 (.A(M16), .B(M13), .C(M20));
   
   //M21 = M17 + M15
   MyXOR XOR_M21 (.A(M17), .B(M15), .C(M21));
   
   //M22 = M18 + M13
   MyXOR XOR_M22 (.A(M18), .B(M13), .C(M22));
   
   //M23 = M19 + T25
   MyXOR XOR_M23 (.A(M19), .B(T25), .C(M23));
   
   //M24 = M22 + M23
   MyXOR XOR_M24 (.A(M22), .B(M23), .C(M24));
   
   //M25 = M22 x M20
   MyAND  AND_M25 (.A(M22), .B(M20), .C(M25));
   
   //M26 = M21 + M25
   MyXOR XOR_M26 (.A(M21), .B(M25), .C(M26));
   
   //M27 = M20 + M21
   MyXOR XOR_M27 (.A(M20), .B(M21), .C(M27));
   
   //M28 = M23 + M25
   MyXOR XOR_M28 (.A(M23), .B(M25), .C(M28));
   
   //M29 = M28 x M27
   MyAND  AND_M29 (.A(M28), .B(M27), .C(M29));
   
   //M30 = M26 x M24
   MyAND  AND_M30 (.A(M26), .B(M24), .C(M30));
   
   //M31 = M20 x M23
   MyAND  AND_M31 (.A(M20), .B(M23), .C(M31));
   
   //M32 = M27 x M31
   MyAND  AND_M32 (.A(M27), .B(M31), .C(M32));
   
   //M33 = M27 + M25
   MyXOR XOR_M33 (.A(M27), .B(M25), .C(M33));
   
   //M34 = M21 x M22
   MyAND  AND_M34 (.A(M21), .B(M22), .C(M34));
   
   //M35 = M24 x M34
   MyAND  AND_M35 (.A(M24), .B(M34), .C(M35));
   
   //M36 = M24 + M25
   MyXOR XOR_M36 (.A(M24), .B(M25), .C(M36));
   
   //M37 = M21 + M29
   MyXOR XOR_M37 (.A(M21), .B(M29), .C(M37));
   
   //M38 = M32 + M33
   MyXOR XOR_M38 (.A(M32), .B(M33), .C(M38));
   
   //M39 = M23 + M30
   MyXOR XOR_M39 (.A(M23), .B(M30), .C(M39));
   
   //M40 = M35 + M36
   MyXOR XOR_M40 (.A(M35), .B(M36), .C(M40));
   
   //M41 = M38 + M40
   MyXOR XOR_M41 (.A(M38), .B(M40), .C(M41));
   
   //M42 = M37 + M39
   MyXOR XOR_M42 (.A(M37), .B(M39), .C(M42));
   
   //M43 = M37 + M38
   MyXOR XOR_M43 (.A(M37), .B(M38), .C(M43));
   
   //M44 = M39 + M40
   MyXOR XOR_M44 (.A(M39), .B(M40), .C(M44));
   
   //M45 = M42 + M41
   MyXOR XOR_M45 (.A(M42), .B(M41), .C(M45));
   
   //M46 = M44 x T6
   MyAND  AND_M46 (.A(M44), .B(T6), .C(M46));
   
   //M47 = M40 x T8
   MyAND  AND_M47 (.A(M40), .B(T8), .C(M47));
   
   //M48 = M39 x x[0]
   MyAND  AND_M48 (.A(M39), .B(x[0]), .C(M48));
   
   //M49 = M43 x T16
   MyAND  AND_M49 (.A(M43), .B(T16), .C(M49));
   
   //M50 = M38 x T9
   MyAND  AND_M50 (.A(M38), .B(T9), .C(M50));
   
   //M51 = M37 x T17
   MyAND  AND_M51 (.A(M37), .B(T17), .C(M51));
   
   //M52 = M42 x T15
   MyAND  AND_M52 (.A(M42), .B(T15), .C(M52));
   
   //M53 = M45 x T27
   MyAND  AND_M53 (.A(M45), .B(T27), .C(M53));
   
   //M54 = M41 x T10
   MyAND  AND_M54 (.A(M41), .B(T10), .C(M54));
   
   //M55 = M44 x T13
   MyAND  AND_M55 (.A(M44), .B(T13), .C(M55));
   
   //M56 = M40 x T23
   MyAND  AND_M56 (.A(M40), .B(T23), .C(M56));
   
   //M57 = M39 x T19
   MyAND  AND_M57 (.A(M39), .B(T19), .C(M57));
   
   //M58 = M43 x T3
   MyAND  AND_M58 (.A(M43), .B(T3), .C(M58));
   
   //M59 = M38 x T22
   MyAND  AND_M59 (.A(M38), .B(T22), .C(M59));
   
   //M60 = M37 x T20
   MyAND  AND_M60 (.A(M37), .B(T20), .C(M60));
   
   //M61 = M42 x T1
   MyAND  AND_M61 (.A(M42), .B(T1), .C(M61));
   
   //M62 = M45 x T4
   MyAND  AND_M62 (.A(M45), .B(T4), .C(M62));
   
   //M63 = M41 x T2
   MyAND  AND_M63 (.A(M41), .B(T2), .C(M63));
   
   //-----------------------------------------------

   //L0 = M61 + M62
   MyXOR XOR_L0 (.A(M61), .B(M62), .C(L0));
   
   //L1 = M50 + M56
   MyXOR XOR_L1 (.A(M50), .B(M56), .C(L1));
   
   //L2 = M46 + M48
   MyXOR XOR_L2 (.A(M46), .B(M48), .C(L2));
   
   //L3 = M47 + M55
   MyXOR XOR_L3 (.A(M47), .B(M55), .C(L3));
   
   //L4 = M54 + M58
   MyXOR XOR_L4 (.A(M54), .B(M58), .C(L4));
   
   //L5 = M49 + M61
   MyXOR XOR_L5 (.A(M49), .B(M61), .C(L5));
   
   //L6 = M62 + L5
   MyXOR XOR_L6 (.A(M62), .B(L5), .C(L6));
   
   //L7 = M46 + L3
   MyXOR XOR_L7 (.A(M46), .B(L3), .C(L7));
   
   //L8 = M51 + M59
   MyXOR XOR_L8 (.A(M51), .B(M59), .C(L8));
   
   //L9 = M52 + M53
   MyXOR XOR_L9 (.A(M52), .B(M53), .C(L9));
   
   //L10 = M53 + L4
   MyXOR XOR_L10 (.A(M53), .B(L4), .C(L10));
   
   //L11 = M60 + L2
   MyXOR XOR_L11 (.A(M60), .B(L2), .C(L11));
   
   //L12 = M48 + M51
   MyXOR XOR_L12 (.A(M48), .B(M51), .C(L12));
   
   //L13 = M50 + L0
   MyXOR XOR_L13 (.A(M50), .B(L0), .C(L13));
   
   //L14 = M52 + M61
   MyXOR XOR_L14 (.A(M52), .B(M61), .C(L14));
   
   //L15 = M55 + L1
   MyXOR XOR_L15 (.A(M55), .B(L1), .C(L15));
   
   //L16 = M56 + L0
   MyXOR XOR_L16 (.A(M56), .B(L0), .C(L16));
   
   //L17 = M57 + L1
   MyXOR XOR_L17 (.A(M57), .B(L1), .C(L17));
   
   //L18 = M58 + L8
   MyXOR XOR_L18 (.A(M58), .B(L8), .C(L18));
   
   //L19 = M63 + L4
   MyXOR XOR_L19 (.A(M63), .B(L4), .C(L19));
   
   //L20 = L0 + L1
   MyXOR XOR_L20 (.A(L0), .B(L1), .C(L20));
   
   //L21 = L1 + L7
   MyXOR XOR_L21 (.A(L1), .B(L7), .C(L21));
   
   //L22 = L3 + L12
   MyXOR XOR_L22 (.A(L3), .B(L12), .C(L22));
   
   //L23 = L18 + L2
   MyXOR XOR_L23 (.A(L18), .B(L2), .C(L23));
   
   //L24 = L15 + L9
   MyXOR XOR_L24 (.A(L15), .B(L9), .C(L24));
   
   //L25 = L6 + L10
   MyXOR XOR_L25 (.A(L6), .B(L10), .C(L25));
   
   //L26 = L7 + L9
   MyXOR XOR_L26 (.A(L7), .B(L9), .C(L26));
   
   //L27 = L8 + L10
   MyXOR XOR_L27 (.A(L8), .B(L10), .C(L27));
   
   //L28 = L11 + L14
   MyXOR XOR_L28 (.A(L11), .B(L14), .C(L28));
   
   //L29 = L11 + L17
   MyXOR XOR_L29 (.A(L11), .B(L17), .C(L29));
   
   //S0 = L6 + L24
   MyXOR XOR_S0 (.A(L6), .B(L24), .C(y[7]));
   
   //S1 = L16 # L26
   MyXNOR XOR_S1 (.A(L16), .B(L26), .C(y[6]));
   
   //S2 = L19 # L28
   MyXNOR XOR_S2 (.A(L19), .B(L28), .C(y[5]));
   
   //S3 = L6 + L21
   MyXOR XOR_S3 (.A(L6), .B(L21), .C(y[4]));
   
   //S4 = L20 + L22
   MyXOR XOR_S4 (.A(L20), .B(L22), .C(y[3]));
   
   //S5 = L25 + L29
   MyXOR XOR_S5 (.A(L25), .B(L29), .C(y[2]));
   
   //S6 = L13 # L27
   MyXNOR XOR_S6 (.A(L13), .B(L27), .C(y[1]));
   
   //S7 = L6 # L23
   MyXNOR XOR_S7 (.A(L6), .B(L23), .C(y[0]));

endmodule
































