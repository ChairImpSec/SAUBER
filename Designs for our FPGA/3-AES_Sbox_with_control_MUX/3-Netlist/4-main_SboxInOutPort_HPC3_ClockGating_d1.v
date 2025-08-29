/* modified netlist. Source: module main in file /mnt/c/Users/amirm/Desktop/Papers_in_progress/SAUBER/Design for our FPGA/3-AES_Sbox_with_control_MUX/3-Netlist/3-main_SboxInOutPort.v */
/* clock gating is added to the circuit, the latency increased 1 time(s)  */

module main_HPC3_ClockGating_d1 (value_in_s0, start, Sbox_out_s0, rst, clk, value_in_s1, Sbox_out_s1, Fresh, value_out_s0, Sbox_in_s0, value_out_s1, Sbox_in_s1, Synch);

    input [7:0] value_in_s0 ;
    input [7:0] value_in_s1 ;
    input [3:0] start ;
    input rst ;
    output [7:0] value_out_s0 ;
    output [7:0] value_out_s1 ;
    output [7:0] Sbox_in_s0 ;
    output [7:0] Sbox_in_s1 ;
    
    
    wire n5 ;
    wire n8 ;
    wire n9 ;
    wire M1_gen_loop_0__M_Y ;
    wire M1_gen_loop_0__M_X ;
    wire M1_gen_loop_1__M_Y ;
    wire M1_gen_loop_1__M_X ;
    wire M1_gen_loop_2__M_Y ;
    wire M1_gen_loop_2__M_X ;
    wire M1_gen_loop_3__M_Y ;
    wire M1_gen_loop_3__M_X ;
    wire M1_gen_loop_4__M_Y ;
    wire M1_gen_loop_4__M_X ;
    wire M1_gen_loop_5__M_Y ;
    wire M1_gen_loop_5__M_X ;
    wire M1_gen_loop_6__M_Y ;
    wire M1_gen_loop_6__M_X ;
    wire M1_gen_loop_7__M_Y ;
    wire M1_gen_loop_7__M_X ;
    wire M2_gen_loop_0__M_Y ;
    wire M2_gen_loop_0__M_X ;
    wire M2_gen_loop_1__M_Y ;
    wire M2_gen_loop_1__M_X ;
    wire M2_gen_loop_2__M_Y ;
    wire M2_gen_loop_2__M_X ;
    wire M2_gen_loop_3__M_Y ;
    wire M2_gen_loop_3__M_X ;
    wire [3:1] Inc_out ;
    wire [3:0] Inc_Reg ;
    wire [3:0] Inc_in ;
    wire new_AGEMA_signal_84 ;
    wire new_AGEMA_signal_87 ;
    wire new_AGEMA_signal_90 ;
    wire new_AGEMA_signal_93 ;
    wire new_AGEMA_signal_96 ;
    wire new_AGEMA_signal_99 ;
    wire new_AGEMA_signal_102 ;
    wire new_AGEMA_signal_105 ;
    wire new_AGEMA_signal_106 ;
    wire new_AGEMA_signal_107 ;
    wire new_AGEMA_signal_108 ;
    wire new_AGEMA_signal_109 ;
    wire new_AGEMA_signal_110 ;
    wire new_AGEMA_signal_111 ;
    wire new_AGEMA_signal_112 ;
    wire new_AGEMA_signal_113 ;
    
    wire clk_gated ;

    /* cells in depth 0 */

    AND2_X1 U14 ( .A1 (Inc_in[0]), .A2 (Inc_in[1]), .ZN (n8) ) ;
    INV_X1 U15 ( .A (Inc_in[0]), .ZN (n5) ) ;
    XNOR2_X1 U16 ( .A (Inc_in[1]), .B (n5), .ZN (Inc_out[1]) ) ;
    XOR2_X1 U17 ( .A (n8), .B (Inc_in[2]), .Z (Inc_out[2]) ) ;
    NAND2_X1 U18 ( .A1 (n8), .A2 (Inc_in[2]), .ZN (n9) ) ;
    XNOR2_X1 U19 ( .A (Inc_in[3]), .B (n9), .ZN (Inc_out[3]) ) ;
    XOR2_X1 M2_gen_loop_0__M_X1_U1 ( .A (Inc_Reg[0]), .B (start[0]), .Z (M2_gen_loop_0__M_X) ) ;
    AND2_X1 M2_gen_loop_0__M_A_U1 ( .A1 (rst), .A2 (M2_gen_loop_0__M_X), .ZN (M2_gen_loop_0__M_Y) ) ;
    XOR2_X1 M2_gen_loop_0__M_X2_U1 ( .A (M2_gen_loop_0__M_Y), .B (Inc_Reg[0]), .Z (Inc_in[0]) ) ;
    XOR2_X1 M2_gen_loop_1__M_X1_U1 ( .A (Inc_Reg[1]), .B (start[1]), .Z (M2_gen_loop_1__M_X) ) ;
    AND2_X1 M2_gen_loop_1__M_A_U1 ( .A1 (rst), .A2 (M2_gen_loop_1__M_X), .ZN (M2_gen_loop_1__M_Y) ) ;
    XOR2_X1 M2_gen_loop_1__M_X2_U1 ( .A (M2_gen_loop_1__M_Y), .B (Inc_Reg[1]), .Z (Inc_in[1]) ) ;
    XOR2_X1 M2_gen_loop_2__M_X1_U1 ( .A (Inc_Reg[2]), .B (start[2]), .Z (M2_gen_loop_2__M_X) ) ;
    AND2_X1 M2_gen_loop_2__M_A_U1 ( .A1 (rst), .A2 (M2_gen_loop_2__M_X), .ZN (M2_gen_loop_2__M_Y) ) ;
    XOR2_X1 M2_gen_loop_2__M_X2_U1 ( .A (M2_gen_loop_2__M_Y), .B (Inc_Reg[2]), .Z (Inc_in[2]) ) ;
    XOR2_X1 M2_gen_loop_3__M_X1_U1 ( .A (Inc_Reg[3]), .B (start[3]), .Z (M2_gen_loop_3__M_X) ) ;
    AND2_X1 M2_gen_loop_3__M_A_U1 ( .A1 (rst), .A2 (M2_gen_loop_3__M_X), .ZN (M2_gen_loop_3__M_Y) ) ;
    XOR2_X1 M2_gen_loop_3__M_X2_U1 ( .A (M2_gen_loop_3__M_Y), .B (Inc_Reg[3]), .Z (Inc_in[3]) ) ;
    
    DFF_X1 R2_gen_loop_0__R_Q_reg ( .D (n5), .CK (clk_gated), .Q (Inc_Reg[0]), .QN () ) ;
    DFF_X1 R2_gen_loop_1__R_Q_reg ( .D (Inc_out[1]), .CK (clk_gated), .Q (Inc_Reg[1]), .QN () ) ;
    DFF_X1 R2_gen_loop_2__R_Q_reg ( .D (Inc_out[2]), .CK (clk_gated), .Q (Inc_Reg[2]), .QN () ) ;
    DFF_X1 R2_gen_loop_3__R_Q_reg ( .D (Inc_out[3]), .CK (clk_gated), .Q (Inc_Reg[3]), .QN () ) ;
    
    
    xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_0__M_X1_U1 ( .a ({value_in_s1[0], value_in_s0[0]}), .b ({value_out_s1[0], value_out_s0[0]}), .c ({new_AGEMA_signal_84, M1_gen_loop_0__M_X}) ) ;
    xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_1__M_X1_U1 ( .a ({value_in_s1[1], value_in_s0[1]}), .b ({value_out_s1[1], value_out_s0[1]}), .c ({new_AGEMA_signal_87, M1_gen_loop_1__M_X}) ) ;
    xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_2__M_X1_U1 ( .a ({value_in_s1[2], value_in_s0[2]}), .b ({value_out_s1[2], value_out_s0[2]}), .c ({new_AGEMA_signal_90, M1_gen_loop_2__M_X}) ) ;
    xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_3__M_X1_U1 ( .a ({value_in_s1[3], value_in_s0[3]}), .b ({value_out_s1[3], value_out_s0[3]}), .c ({new_AGEMA_signal_93, M1_gen_loop_3__M_X}) ) ;
    xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_4__M_X1_U1 ( .a ({value_in_s1[4], value_in_s0[4]}), .b ({value_out_s1[4], value_out_s0[4]}), .c ({new_AGEMA_signal_96, M1_gen_loop_4__M_X}) ) ;
    xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_5__M_X1_U1 ( .a ({value_in_s1[5], value_in_s0[5]}), .b ({value_out_s1[5], value_out_s0[5]}), .c ({new_AGEMA_signal_99, M1_gen_loop_5__M_X}) ) ;
    xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_6__M_X1_U1 ( .a ({value_in_s1[6], value_in_s0[6]}), .b ({value_out_s1[6], value_out_s0[6]}), .c ({new_AGEMA_signal_102, M1_gen_loop_6__M_X}) ) ;
    xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_7__M_X1_U1 ( .a ({value_in_s1[7], value_in_s0[7]}), .b ({value_out_s1[7], value_out_s0[7]}), .c ({new_AGEMA_signal_105, M1_gen_loop_7__M_X}) ) ;

    ClockGatingController #(2) ClockGatingInst ( .clk (clk), .rst (rst), .GatedClk (clk_gated), .Synch (Synch) ) ;

    /* cells in depth 1 */
    and_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_0__M_A_U1 ( .a ({1'b0, Inc_out[3]}), .b ({new_AGEMA_signal_84, M1_gen_loop_0__M_X}), .clk (clk), .r ({Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_106, M1_gen_loop_0__M_Y}) ) ;
    xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_0__M_X2_U1 ( .a ({new_AGEMA_signal_106, M1_gen_loop_0__M_Y}), .b ({value_in_s1[0], value_in_s0[0]}), .c ({Sbox_in_s1[0], Sbox_in_s0[0]}) ) ;
    and_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_1__M_A_U1 ( .a ({1'b0, Inc_out[3]}), .b ({new_AGEMA_signal_87, M1_gen_loop_1__M_X}), .clk (clk), .r ({Fresh[3], Fresh[2]}), .c ({new_AGEMA_signal_107, M1_gen_loop_1__M_Y}) ) ;
    xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_1__M_X2_U1 ( .a ({new_AGEMA_signal_107, M1_gen_loop_1__M_Y}), .b ({value_in_s1[1], value_in_s0[1]}), .c ({Sbox_in_s1[1], Sbox_in_s0[1]}) ) ;
    and_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_2__M_A_U1 ( .a ({1'b0, Inc_out[3]}), .b ({new_AGEMA_signal_90, M1_gen_loop_2__M_X}), .clk (clk), .r ({Fresh[5], Fresh[4]}), .c ({new_AGEMA_signal_108, M1_gen_loop_2__M_Y}) ) ;
    xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_2__M_X2_U1 ( .a ({new_AGEMA_signal_108, M1_gen_loop_2__M_Y}), .b ({value_in_s1[2], value_in_s0[2]}), .c ({Sbox_in_s1[2], Sbox_in_s0[2]}) ) ;
    and_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_3__M_A_U1 ( .a ({1'b0, Inc_out[3]}), .b ({new_AGEMA_signal_93, M1_gen_loop_3__M_X}), .clk (clk), .r ({Fresh[7], Fresh[6]}), .c ({new_AGEMA_signal_109, M1_gen_loop_3__M_Y}) ) ;
    xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_3__M_X2_U1 ( .a ({new_AGEMA_signal_109, M1_gen_loop_3__M_Y}), .b ({value_in_s1[3], value_in_s0[3]}), .c ({Sbox_in_s1[3], Sbox_in_s0[3]}) ) ;
    and_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_4__M_A_U1 ( .a ({1'b0, Inc_out[3]}), .b ({new_AGEMA_signal_96, M1_gen_loop_4__M_X}), .clk (clk), .r ({Fresh[9], Fresh[8]}), .c ({new_AGEMA_signal_110, M1_gen_loop_4__M_Y}) ) ;
    xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_4__M_X2_U1 ( .a ({new_AGEMA_signal_110, M1_gen_loop_4__M_Y}), .b ({value_in_s1[4], value_in_s0[4]}), .c ({Sbox_in_s1[4], Sbox_in_s0[4]}) ) ;
    and_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_5__M_A_U1 ( .a ({1'b0, Inc_out[3]}), .b ({new_AGEMA_signal_99, M1_gen_loop_5__M_X}), .clk (clk), .r ({Fresh[11], Fresh[10]}), .c ({new_AGEMA_signal_111, M1_gen_loop_5__M_Y}) ) ;
    xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_5__M_X2_U1 ( .a ({new_AGEMA_signal_111, M1_gen_loop_5__M_Y}), .b ({value_in_s1[5], value_in_s0[5]}), .c ({Sbox_in_s1[5], Sbox_in_s0[5]}) ) ;
    and_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_6__M_A_U1 ( .a ({1'b0, Inc_out[3]}), .b ({new_AGEMA_signal_102, M1_gen_loop_6__M_X}), .clk (clk), .r ({Fresh[13], Fresh[12]}), .c ({new_AGEMA_signal_112, M1_gen_loop_6__M_Y}) ) ;
    xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_6__M_X2_U1 ( .a ({new_AGEMA_signal_112, M1_gen_loop_6__M_Y}), .b ({value_in_s1[6], value_in_s0[6]}), .c ({Sbox_in_s1[6], Sbox_in_s0[6]}) ) ;
    and_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_7__M_A_U1 ( .a ({1'b0, Inc_out[3]}), .b ({new_AGEMA_signal_105, M1_gen_loop_7__M_X}), .clk (clk), .r ({Fresh[15], Fresh[14]}), .c ({new_AGEMA_signal_113, M1_gen_loop_7__M_Y}) ) ;
    xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_7__M_X2_U1 ( .a ({new_AGEMA_signal_113, M1_gen_loop_7__M_Y}), .b ({value_in_s1[7], value_in_s0[7]}), .c ({Sbox_in_s1[7], Sbox_in_s0[7]}) ) ;

    /* register cells */
    reg_masked #(.security_order(1), .pipeline(0)) R1_gen_loop_0__R_Q_reg ( .D ({Sbox_out_s1[0], Sbox_out_s0[0]}), .clk (clk_gated), .Q ({value_out_s1[0], value_out_s0[0]}) ) ;
    reg_masked #(.security_order(1), .pipeline(0)) R1_gen_loop_1__R_Q_reg ( .D ({Sbox_out_s1[1], Sbox_out_s0[1]}), .clk (clk_gated), .Q ({value_out_s1[1], value_out_s0[1]}) ) ;
    reg_masked #(.security_order(1), .pipeline(0)) R1_gen_loop_2__R_Q_reg ( .D ({Sbox_out_s1[2], Sbox_out_s0[2]}), .clk (clk_gated), .Q ({value_out_s1[2], value_out_s0[2]}) ) ;
    reg_masked #(.security_order(1), .pipeline(0)) R1_gen_loop_3__R_Q_reg ( .D ({Sbox_out_s1[3], Sbox_out_s0[3]}), .clk (clk_gated), .Q ({value_out_s1[3], value_out_s0[3]}) ) ;
    reg_masked #(.security_order(1), .pipeline(0)) R1_gen_loop_4__R_Q_reg ( .D ({Sbox_out_s1[4], Sbox_out_s0[4]}), .clk (clk_gated), .Q ({value_out_s1[4], value_out_s0[4]}) ) ;
    reg_masked #(.security_order(1), .pipeline(0)) R1_gen_loop_5__R_Q_reg ( .D ({Sbox_out_s1[5], Sbox_out_s0[5]}), .clk (clk_gated), .Q ({value_out_s1[5], value_out_s0[5]}) ) ;
    reg_masked #(.security_order(1), .pipeline(0)) R1_gen_loop_6__R_Q_reg ( .D ({Sbox_out_s1[6], Sbox_out_s0[6]}), .clk (clk_gated), .Q ({value_out_s1[6], value_out_s0[6]}) ) ;
    reg_masked #(.security_order(1), .pipeline(0)) R1_gen_loop_7__R_Q_reg ( .D ({Sbox_out_s1[7], Sbox_out_s0[7]}), .clk (clk_gated), .Q ({value_out_s1[7], value_out_s0[7]}) ) ;
endmodule
