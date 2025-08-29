 // NumberOfConfigBits: 11
module ctrl_IO_switch_matrix
    #(
        parameter NoConfigBits=11
    )
    (
        input from_EA_1s0,
        input from_EB_1s0,
        input from_EC_1s0,
        input from_ED_1s0,
        input from_EF_1s0,
        input from_EG_1s0,
        input from_EH_1s0,
        input from_EI_1s0,
        input A_Q0_t,
        input A_Q0_f,
        output to_WA_1s0,
        output to_WB_1s0,
        output to_WC_1s0,
        output to_WD_1s0,
        output to_WF_1s0,
        output to_WG_1s0,
        output to_WH_1s0,
        output to_WI_1s0,
        output A_I0_t,
        output A_I0_f,
        output A_T,
 //global
        input [NoConfigBits-1:0] ConfigBits,
        input [NoConfigBits-1:0] ConfigBits_N
);
parameter GND0 = 1'b0;
parameter GND = 1'b0;
parameter VCC0 = 1'b1;
parameter VCC = 1'b1;
parameter VDD0 = 1'b1;
parameter VDD = 1'b1;

wire[2-1:0] to_WA_1s0_input;
wire[2-1:0] to_WB_1s0_input;
wire[2-1:0] to_WC_1s0_input;
wire[2-1:0] to_WD_1s0_input;
wire[2-1:0] to_WF_1s0_input;
wire[2-1:0] to_WG_1s0_input;
wire[2-1:0] to_WH_1s0_input;
wire[2-1:0] to_WI_1s0_input;
wire[8-1:0] A_I0_t_input;
wire[0-1:0] A_I0_f_input;
wire[2-1:0] A_T_input;
 //The configuration bits (if any) are just a long shift register
 //This shift register is padded to an even number of flops/latches
 //switch matrix multiplexer to_WA_1s0 MUX-2
assign to_WA_1s0_input = {A_Q0_t,from_EA_1s0};
my_mux2 inst_my_mux2_to_WA_1s0 (
    .A0(to_WA_1s0_input[0]),
    .A1(to_WA_1s0_input[1]),
    .S(ConfigBits[0+0]),
    .X(to_WA_1s0)
);

 //switch matrix multiplexer to_WB_1s0 MUX-2
assign to_WB_1s0_input = {A_Q0_t,from_EB_1s0};
my_mux2 inst_my_mux2_to_WB_1s0 (
    .A0(to_WB_1s0_input[0]),
    .A1(to_WB_1s0_input[1]),
    .S(ConfigBits[1+0]),
    .X(to_WB_1s0)
);

 //switch matrix multiplexer to_WC_1s0 MUX-2
assign to_WC_1s0_input = {A_Q0_t,from_EC_1s0};
my_mux2 inst_my_mux2_to_WC_1s0 (
    .A0(to_WC_1s0_input[0]),
    .A1(to_WC_1s0_input[1]),
    .S(ConfigBits[2+0]),
    .X(to_WC_1s0)
);

 //switch matrix multiplexer to_WD_1s0 MUX-2
assign to_WD_1s0_input = {A_Q0_t,from_ED_1s0};
my_mux2 inst_my_mux2_to_WD_1s0 (
    .A0(to_WD_1s0_input[0]),
    .A1(to_WD_1s0_input[1]),
    .S(ConfigBits[3+0]),
    .X(to_WD_1s0)
);

 //switch matrix multiplexer to_WF_1s0 MUX-2
assign to_WF_1s0_input = {A_Q0_t,from_EF_1s0};
my_mux2 inst_my_mux2_to_WF_1s0 (
    .A0(to_WF_1s0_input[0]),
    .A1(to_WF_1s0_input[1]),
    .S(ConfigBits[4+0]),
    .X(to_WF_1s0)
);

 //switch matrix multiplexer to_WG_1s0 MUX-2
assign to_WG_1s0_input = {A_Q0_t,from_EG_1s0};
my_mux2 inst_my_mux2_to_WG_1s0 (
    .A0(to_WG_1s0_input[0]),
    .A1(to_WG_1s0_input[1]),
    .S(ConfigBits[5+0]),
    .X(to_WG_1s0)
);

 //switch matrix multiplexer to_WH_1s0 MUX-2
assign to_WH_1s0_input = {A_Q0_t,from_EH_1s0};
my_mux2 inst_my_mux2_to_WH_1s0 (
    .A0(to_WH_1s0_input[0]),
    .A1(to_WH_1s0_input[1]),
    .S(ConfigBits[6+0]),
    .X(to_WH_1s0)
);

 //switch matrix multiplexer to_WI_1s0 MUX-2
assign to_WI_1s0_input = {A_Q0_t,from_EI_1s0};
my_mux2 inst_my_mux2_to_WI_1s0 (
    .A0(to_WI_1s0_input[0]),
    .A1(to_WI_1s0_input[1]),
    .S(ConfigBits[7+0]),
    .X(to_WI_1s0)
);

 //switch matrix multiplexer A_I0_t MUX-8
assign A_I0_t_input = {from_EI_1s0,from_EH_1s0,from_EG_1s0,from_EF_1s0,from_ED_1s0,from_EC_1s0,from_EB_1s0,from_EA_1s0};
cus_mux81_buf inst_cus_mux81_buf_A_I0_t (
    .A0(A_I0_t_input[0]),
    .A1(A_I0_t_input[1]),
    .A2(A_I0_t_input[2]),
    .A3(A_I0_t_input[3]),
    .A4(A_I0_t_input[4]),
    .A5(A_I0_t_input[5]),
    .A6(A_I0_t_input[6]),
    .A7(A_I0_t_input[7]),
    .S0(ConfigBits[8+0]),
    .S0N(ConfigBits_N[8+0]),
    .S1(ConfigBits[8+1]),
    .S1N(ConfigBits_N[8+1]),
    .S2(ConfigBits[8+2]),
    .S2N(ConfigBits_N[8+2]),
    .X(A_I0_t)
);

 //switch matrix multiplexer A_I0_f MUX-0
 //WARNING unused multiplexer MUX-A_I0_f
 //switch matrix multiplexer A_T MUX-2
assign A_T_input = {VCC0,GND0};
my_mux2 inst_my_mux2_A_T (
    .A0(A_T_input[0]),
    .A1(A_T_input[1]),
    .S(ConfigBits[11+0]),
    .X(A_T)
);

endmodule