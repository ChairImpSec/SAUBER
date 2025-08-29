 // NumberOfConfigBits: 78
module linear_LMDPL_switch_matrix
    #(
        parameter NoConfigBits=78
    )
    (
        input from_EA0,
        input from_EB0,
        input from_EC0,
        input from_ED0,
        input from_EF0,
        input from_EG0,
        input from_EH0,
        input from_EI0,
        input from_WA0,
        input from_WB0,
        input from_WC0,
        input from_WD0,
        input from_WF0,
        input from_WG0,
        input from_WH0,
        input from_WI0,
        input from_NA0,
        input from_NB0,
        input from_NC0,
        input from_ND0,
        input from_NF0,
        input from_NG0,
        input from_NH0,
        input from_NI0,
        input from_SA0,
        input from_SB0,
        input from_SC0,
        input from_SD0,
        input from_SF0,
        input from_SG0,
        input from_SH0,
        input from_SI0,
        input Z0_t,
        input Z0_f,
        input Z1_t,
        input Z1_f,
        input from_J_I1A0,
        input from_J_I2A0,
        input from_J_I1B0,
        input from_J_I2B0,
        output to_EA0,
        output to_EB0,
        output to_EC0,
        output to_ED0,
        output to_EF0,
        output to_EG0,
        output to_EH0,
        output to_EI0,
        output to_WA0,
        output to_WB0,
        output to_WC0,
        output to_WD0,
        output to_WF0,
        output to_WG0,
        output to_WH0,
        output to_WI0,
        output to_NA0,
        output to_NB0,
        output to_NC0,
        output to_ND0,
        output to_NF0,
        output to_NG0,
        output to_NH0,
        output to_NI0,
        output to_SA0,
        output to_SB0,
        output to_SC0,
        output to_SD0,
        output to_SF0,
        output to_SG0,
        output to_SH0,
        output to_SI0,
        output A0_t,
        output B0_t,
        output A0_f,
        output B0_f,
        output A1_t,
        output B1_t,
        output A1_f,
        output B1_f,
        output to_J_I1A0,
        output to_J_I2A0,
        output to_J_I1B0,
        output to_J_I2B0,
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

wire[4-1:0] to_EA0_input;
wire[4-1:0] to_EB0_input;
wire[4-1:0] to_EC0_input;
wire[4-1:0] to_ED0_input;
wire[4-1:0] to_EF0_input;
wire[4-1:0] to_EG0_input;
wire[4-1:0] to_EH0_input;
wire[4-1:0] to_EI0_input;
wire[4-1:0] to_WA0_input;
wire[4-1:0] to_WB0_input;
wire[4-1:0] to_WC0_input;
wire[4-1:0] to_WD0_input;
wire[4-1:0] to_WF0_input;
wire[4-1:0] to_WG0_input;
wire[4-1:0] to_WH0_input;
wire[4-1:0] to_WI0_input;
wire[4-1:0] to_NA0_input;
wire[4-1:0] to_NB0_input;
wire[4-1:0] to_NC0_input;
wire[4-1:0] to_ND0_input;
wire[4-1:0] to_NF0_input;
wire[4-1:0] to_NG0_input;
wire[4-1:0] to_NH0_input;
wire[4-1:0] to_NI0_input;
wire[4-1:0] to_SA0_input;
wire[4-1:0] to_SB0_input;
wire[4-1:0] to_SC0_input;
wire[4-1:0] to_SD0_input;
wire[4-1:0] to_SF0_input;
wire[4-1:0] to_SG0_input;
wire[4-1:0] to_SH0_input;
wire[4-1:0] to_SI0_input;
wire[4-1:0] A0_t_input;
wire[4-1:0] B0_t_input;
wire[0-1:0] A0_f_input;
wire[0-1:0] B0_f_input;
wire[0-1:0] A1_t_input;
wire[0-1:0] B1_t_input;
wire[0-1:0] A1_f_input;
wire[0-1:0] B1_f_input;
wire[16-1:0] to_J_I1A0_input;
wire[16-1:0] to_J_I2A0_input;
wire[16-1:0] to_J_I1B0_input;
wire[16-1:0] to_J_I2B0_input;
 //The configuration bits (if any) are just a long shift register
 //This shift register is padded to an even number of flops/latches
 //switch matrix multiplexer to_EA0 MUX-4
assign to_EA0_input = {Z0_t,from_SA0,from_NA0,from_EA0};
cus_mux41_buf inst_cus_mux41_buf_to_EA0 (
    .A0(to_EA0_input[0]),
    .A1(to_EA0_input[1]),
    .A2(to_EA0_input[2]),
    .A3(to_EA0_input[3]),
    .S0(ConfigBits[0+0]),
    .S0N(ConfigBits_N[0+0]),
    .S1(ConfigBits[0+1]),
    .S1N(ConfigBits_N[0+1]),
    .X(to_EA0)
);

 //switch matrix multiplexer to_EB0 MUX-4
assign to_EB0_input = {Z0_t,from_SB0,from_NB0,from_EB0};
cus_mux41_buf inst_cus_mux41_buf_to_EB0 (
    .A0(to_EB0_input[0]),
    .A1(to_EB0_input[1]),
    .A2(to_EB0_input[2]),
    .A3(to_EB0_input[3]),
    .S0(ConfigBits[2+0]),
    .S0N(ConfigBits_N[2+0]),
    .S1(ConfigBits[2+1]),
    .S1N(ConfigBits_N[2+1]),
    .X(to_EB0)
);

 //switch matrix multiplexer to_EC0 MUX-4
assign to_EC0_input = {Z0_t,from_SC0,from_NC0,from_EC0};
cus_mux41_buf inst_cus_mux41_buf_to_EC0 (
    .A0(to_EC0_input[0]),
    .A1(to_EC0_input[1]),
    .A2(to_EC0_input[2]),
    .A3(to_EC0_input[3]),
    .S0(ConfigBits[4+0]),
    .S0N(ConfigBits_N[4+0]),
    .S1(ConfigBits[4+1]),
    .S1N(ConfigBits_N[4+1]),
    .X(to_EC0)
);

 //switch matrix multiplexer to_ED0 MUX-4
assign to_ED0_input = {Z0_t,from_SD0,from_ND0,from_ED0};
cus_mux41_buf inst_cus_mux41_buf_to_ED0 (
    .A0(to_ED0_input[0]),
    .A1(to_ED0_input[1]),
    .A2(to_ED0_input[2]),
    .A3(to_ED0_input[3]),
    .S0(ConfigBits[6+0]),
    .S0N(ConfigBits_N[6+0]),
    .S1(ConfigBits[6+1]),
    .S1N(ConfigBits_N[6+1]),
    .X(to_ED0)
);

 //switch matrix multiplexer to_EF0 MUX-4
assign to_EF0_input = {Z0_t,from_SF0,from_NF0,from_EF0};
cus_mux41_buf inst_cus_mux41_buf_to_EF0 (
    .A0(to_EF0_input[0]),
    .A1(to_EF0_input[1]),
    .A2(to_EF0_input[2]),
    .A3(to_EF0_input[3]),
    .S0(ConfigBits[8+0]),
    .S0N(ConfigBits_N[8+0]),
    .S1(ConfigBits[8+1]),
    .S1N(ConfigBits_N[8+1]),
    .X(to_EF0)
);

 //switch matrix multiplexer to_EG0 MUX-4
assign to_EG0_input = {Z0_t,from_SG0,from_NG0,from_EG0};
cus_mux41_buf inst_cus_mux41_buf_to_EG0 (
    .A0(to_EG0_input[0]),
    .A1(to_EG0_input[1]),
    .A2(to_EG0_input[2]),
    .A3(to_EG0_input[3]),
    .S0(ConfigBits[10+0]),
    .S0N(ConfigBits_N[10+0]),
    .S1(ConfigBits[10+1]),
    .S1N(ConfigBits_N[10+1]),
    .X(to_EG0)
);

 //switch matrix multiplexer to_EH0 MUX-4
assign to_EH0_input = {Z0_t,from_SH0,from_NH0,from_EH0};
cus_mux41_buf inst_cus_mux41_buf_to_EH0 (
    .A0(to_EH0_input[0]),
    .A1(to_EH0_input[1]),
    .A2(to_EH0_input[2]),
    .A3(to_EH0_input[3]),
    .S0(ConfigBits[12+0]),
    .S0N(ConfigBits_N[12+0]),
    .S1(ConfigBits[12+1]),
    .S1N(ConfigBits_N[12+1]),
    .X(to_EH0)
);

 //switch matrix multiplexer to_EI0 MUX-4
assign to_EI0_input = {Z0_t,from_SI0,from_NI0,from_EI0};
cus_mux41_buf inst_cus_mux41_buf_to_EI0 (
    .A0(to_EI0_input[0]),
    .A1(to_EI0_input[1]),
    .A2(to_EI0_input[2]),
    .A3(to_EI0_input[3]),
    .S0(ConfigBits[14+0]),
    .S0N(ConfigBits_N[14+0]),
    .S1(ConfigBits[14+1]),
    .S1N(ConfigBits_N[14+1]),
    .X(to_EI0)
);

 //switch matrix multiplexer to_WA0 MUX-4
assign to_WA0_input = {Z0_t,from_SA0,from_NA0,from_WA0};
cus_mux41_buf inst_cus_mux41_buf_to_WA0 (
    .A0(to_WA0_input[0]),
    .A1(to_WA0_input[1]),
    .A2(to_WA0_input[2]),
    .A3(to_WA0_input[3]),
    .S0(ConfigBits[16+0]),
    .S0N(ConfigBits_N[16+0]),
    .S1(ConfigBits[16+1]),
    .S1N(ConfigBits_N[16+1]),
    .X(to_WA0)
);

 //switch matrix multiplexer to_WB0 MUX-4
assign to_WB0_input = {Z0_t,from_SB0,from_NB0,from_WB0};
cus_mux41_buf inst_cus_mux41_buf_to_WB0 (
    .A0(to_WB0_input[0]),
    .A1(to_WB0_input[1]),
    .A2(to_WB0_input[2]),
    .A3(to_WB0_input[3]),
    .S0(ConfigBits[18+0]),
    .S0N(ConfigBits_N[18+0]),
    .S1(ConfigBits[18+1]),
    .S1N(ConfigBits_N[18+1]),
    .X(to_WB0)
);

 //switch matrix multiplexer to_WC0 MUX-4
assign to_WC0_input = {Z0_t,from_SC0,from_NC0,from_WC0};
cus_mux41_buf inst_cus_mux41_buf_to_WC0 (
    .A0(to_WC0_input[0]),
    .A1(to_WC0_input[1]),
    .A2(to_WC0_input[2]),
    .A3(to_WC0_input[3]),
    .S0(ConfigBits[20+0]),
    .S0N(ConfigBits_N[20+0]),
    .S1(ConfigBits[20+1]),
    .S1N(ConfigBits_N[20+1]),
    .X(to_WC0)
);

 //switch matrix multiplexer to_WD0 MUX-4
assign to_WD0_input = {Z0_t,from_SD0,from_ND0,from_WD0};
cus_mux41_buf inst_cus_mux41_buf_to_WD0 (
    .A0(to_WD0_input[0]),
    .A1(to_WD0_input[1]),
    .A2(to_WD0_input[2]),
    .A3(to_WD0_input[3]),
    .S0(ConfigBits[22+0]),
    .S0N(ConfigBits_N[22+0]),
    .S1(ConfigBits[22+1]),
    .S1N(ConfigBits_N[22+1]),
    .X(to_WD0)
);

 //switch matrix multiplexer to_WF0 MUX-4
assign to_WF0_input = {Z0_t,from_SF0,from_NF0,from_WF0};
cus_mux41_buf inst_cus_mux41_buf_to_WF0 (
    .A0(to_WF0_input[0]),
    .A1(to_WF0_input[1]),
    .A2(to_WF0_input[2]),
    .A3(to_WF0_input[3]),
    .S0(ConfigBits[24+0]),
    .S0N(ConfigBits_N[24+0]),
    .S1(ConfigBits[24+1]),
    .S1N(ConfigBits_N[24+1]),
    .X(to_WF0)
);

 //switch matrix multiplexer to_WG0 MUX-4
assign to_WG0_input = {Z0_t,from_SG0,from_NG0,from_WG0};
cus_mux41_buf inst_cus_mux41_buf_to_WG0 (
    .A0(to_WG0_input[0]),
    .A1(to_WG0_input[1]),
    .A2(to_WG0_input[2]),
    .A3(to_WG0_input[3]),
    .S0(ConfigBits[26+0]),
    .S0N(ConfigBits_N[26+0]),
    .S1(ConfigBits[26+1]),
    .S1N(ConfigBits_N[26+1]),
    .X(to_WG0)
);

 //switch matrix multiplexer to_WH0 MUX-4
assign to_WH0_input = {Z0_t,from_SH0,from_NH0,from_WH0};
cus_mux41_buf inst_cus_mux41_buf_to_WH0 (
    .A0(to_WH0_input[0]),
    .A1(to_WH0_input[1]),
    .A2(to_WH0_input[2]),
    .A3(to_WH0_input[3]),
    .S0(ConfigBits[28+0]),
    .S0N(ConfigBits_N[28+0]),
    .S1(ConfigBits[28+1]),
    .S1N(ConfigBits_N[28+1]),
    .X(to_WH0)
);

 //switch matrix multiplexer to_WI0 MUX-4
assign to_WI0_input = {Z0_t,from_SI0,from_NI0,from_WI0};
cus_mux41_buf inst_cus_mux41_buf_to_WI0 (
    .A0(to_WI0_input[0]),
    .A1(to_WI0_input[1]),
    .A2(to_WI0_input[2]),
    .A3(to_WI0_input[3]),
    .S0(ConfigBits[30+0]),
    .S0N(ConfigBits_N[30+0]),
    .S1(ConfigBits[30+1]),
    .S1N(ConfigBits_N[30+1]),
    .X(to_WI0)
);

 //switch matrix multiplexer to_NA0 MUX-4
assign to_NA0_input = {Z0_t,from_NA0,from_WA0,from_EA0};
cus_mux41_buf inst_cus_mux41_buf_to_NA0 (
    .A0(to_NA0_input[0]),
    .A1(to_NA0_input[1]),
    .A2(to_NA0_input[2]),
    .A3(to_NA0_input[3]),
    .S0(ConfigBits[32+0]),
    .S0N(ConfigBits_N[32+0]),
    .S1(ConfigBits[32+1]),
    .S1N(ConfigBits_N[32+1]),
    .X(to_NA0)
);

 //switch matrix multiplexer to_NB0 MUX-4
assign to_NB0_input = {Z0_t,from_NB0,from_WB0,from_EB0};
cus_mux41_buf inst_cus_mux41_buf_to_NB0 (
    .A0(to_NB0_input[0]),
    .A1(to_NB0_input[1]),
    .A2(to_NB0_input[2]),
    .A3(to_NB0_input[3]),
    .S0(ConfigBits[34+0]),
    .S0N(ConfigBits_N[34+0]),
    .S1(ConfigBits[34+1]),
    .S1N(ConfigBits_N[34+1]),
    .X(to_NB0)
);

 //switch matrix multiplexer to_NC0 MUX-4
assign to_NC0_input = {Z0_t,from_NC0,from_WC0,from_EC0};
cus_mux41_buf inst_cus_mux41_buf_to_NC0 (
    .A0(to_NC0_input[0]),
    .A1(to_NC0_input[1]),
    .A2(to_NC0_input[2]),
    .A3(to_NC0_input[3]),
    .S0(ConfigBits[36+0]),
    .S0N(ConfigBits_N[36+0]),
    .S1(ConfigBits[36+1]),
    .S1N(ConfigBits_N[36+1]),
    .X(to_NC0)
);

 //switch matrix multiplexer to_ND0 MUX-4
assign to_ND0_input = {Z0_t,from_ND0,from_WD0,from_ED0};
cus_mux41_buf inst_cus_mux41_buf_to_ND0 (
    .A0(to_ND0_input[0]),
    .A1(to_ND0_input[1]),
    .A2(to_ND0_input[2]),
    .A3(to_ND0_input[3]),
    .S0(ConfigBits[38+0]),
    .S0N(ConfigBits_N[38+0]),
    .S1(ConfigBits[38+1]),
    .S1N(ConfigBits_N[38+1]),
    .X(to_ND0)
);

 //switch matrix multiplexer to_NF0 MUX-4
assign to_NF0_input = {Z0_t,from_NF0,from_WF0,from_EF0};
cus_mux41_buf inst_cus_mux41_buf_to_NF0 (
    .A0(to_NF0_input[0]),
    .A1(to_NF0_input[1]),
    .A2(to_NF0_input[2]),
    .A3(to_NF0_input[3]),
    .S0(ConfigBits[40+0]),
    .S0N(ConfigBits_N[40+0]),
    .S1(ConfigBits[40+1]),
    .S1N(ConfigBits_N[40+1]),
    .X(to_NF0)
);

 //switch matrix multiplexer to_NG0 MUX-4
assign to_NG0_input = {Z0_t,from_NG0,from_WG0,from_EG0};
cus_mux41_buf inst_cus_mux41_buf_to_NG0 (
    .A0(to_NG0_input[0]),
    .A1(to_NG0_input[1]),
    .A2(to_NG0_input[2]),
    .A3(to_NG0_input[3]),
    .S0(ConfigBits[42+0]),
    .S0N(ConfigBits_N[42+0]),
    .S1(ConfigBits[42+1]),
    .S1N(ConfigBits_N[42+1]),
    .X(to_NG0)
);

 //switch matrix multiplexer to_NH0 MUX-4
assign to_NH0_input = {Z0_t,from_NH0,from_WH0,from_EH0};
cus_mux41_buf inst_cus_mux41_buf_to_NH0 (
    .A0(to_NH0_input[0]),
    .A1(to_NH0_input[1]),
    .A2(to_NH0_input[2]),
    .A3(to_NH0_input[3]),
    .S0(ConfigBits[44+0]),
    .S0N(ConfigBits_N[44+0]),
    .S1(ConfigBits[44+1]),
    .S1N(ConfigBits_N[44+1]),
    .X(to_NH0)
);

 //switch matrix multiplexer to_NI0 MUX-4
assign to_NI0_input = {Z0_t,from_NI0,from_WI0,from_EI0};
cus_mux41_buf inst_cus_mux41_buf_to_NI0 (
    .A0(to_NI0_input[0]),
    .A1(to_NI0_input[1]),
    .A2(to_NI0_input[2]),
    .A3(to_NI0_input[3]),
    .S0(ConfigBits[46+0]),
    .S0N(ConfigBits_N[46+0]),
    .S1(ConfigBits[46+1]),
    .S1N(ConfigBits_N[46+1]),
    .X(to_NI0)
);

 //switch matrix multiplexer to_SA0 MUX-4
assign to_SA0_input = {Z0_t,from_SA0,from_WA0,from_EA0};
cus_mux41_buf inst_cus_mux41_buf_to_SA0 (
    .A0(to_SA0_input[0]),
    .A1(to_SA0_input[1]),
    .A2(to_SA0_input[2]),
    .A3(to_SA0_input[3]),
    .S0(ConfigBits[48+0]),
    .S0N(ConfigBits_N[48+0]),
    .S1(ConfigBits[48+1]),
    .S1N(ConfigBits_N[48+1]),
    .X(to_SA0)
);

 //switch matrix multiplexer to_SB0 MUX-4
assign to_SB0_input = {Z0_t,from_SB0,from_WB0,from_EB0};
cus_mux41_buf inst_cus_mux41_buf_to_SB0 (
    .A0(to_SB0_input[0]),
    .A1(to_SB0_input[1]),
    .A2(to_SB0_input[2]),
    .A3(to_SB0_input[3]),
    .S0(ConfigBits[50+0]),
    .S0N(ConfigBits_N[50+0]),
    .S1(ConfigBits[50+1]),
    .S1N(ConfigBits_N[50+1]),
    .X(to_SB0)
);

 //switch matrix multiplexer to_SC0 MUX-4
assign to_SC0_input = {Z0_t,from_SC0,from_WC0,from_EC0};
cus_mux41_buf inst_cus_mux41_buf_to_SC0 (
    .A0(to_SC0_input[0]),
    .A1(to_SC0_input[1]),
    .A2(to_SC0_input[2]),
    .A3(to_SC0_input[3]),
    .S0(ConfigBits[52+0]),
    .S0N(ConfigBits_N[52+0]),
    .S1(ConfigBits[52+1]),
    .S1N(ConfigBits_N[52+1]),
    .X(to_SC0)
);

 //switch matrix multiplexer to_SD0 MUX-4
assign to_SD0_input = {Z0_t,from_SD0,from_WD0,from_ED0};
cus_mux41_buf inst_cus_mux41_buf_to_SD0 (
    .A0(to_SD0_input[0]),
    .A1(to_SD0_input[1]),
    .A2(to_SD0_input[2]),
    .A3(to_SD0_input[3]),
    .S0(ConfigBits[54+0]),
    .S0N(ConfigBits_N[54+0]),
    .S1(ConfigBits[54+1]),
    .S1N(ConfigBits_N[54+1]),
    .X(to_SD0)
);

 //switch matrix multiplexer to_SF0 MUX-4
assign to_SF0_input = {Z0_t,from_SF0,from_WF0,from_EF0};
cus_mux41_buf inst_cus_mux41_buf_to_SF0 (
    .A0(to_SF0_input[0]),
    .A1(to_SF0_input[1]),
    .A2(to_SF0_input[2]),
    .A3(to_SF0_input[3]),
    .S0(ConfigBits[56+0]),
    .S0N(ConfigBits_N[56+0]),
    .S1(ConfigBits[56+1]),
    .S1N(ConfigBits_N[56+1]),
    .X(to_SF0)
);

 //switch matrix multiplexer to_SG0 MUX-4
assign to_SG0_input = {Z0_t,from_SG0,from_WG0,from_EG0};
cus_mux41_buf inst_cus_mux41_buf_to_SG0 (
    .A0(to_SG0_input[0]),
    .A1(to_SG0_input[1]),
    .A2(to_SG0_input[2]),
    .A3(to_SG0_input[3]),
    .S0(ConfigBits[58+0]),
    .S0N(ConfigBits_N[58+0]),
    .S1(ConfigBits[58+1]),
    .S1N(ConfigBits_N[58+1]),
    .X(to_SG0)
);

 //switch matrix multiplexer to_SH0 MUX-4
assign to_SH0_input = {Z0_t,from_SH0,from_WH0,from_EH0};
cus_mux41_buf inst_cus_mux41_buf_to_SH0 (
    .A0(to_SH0_input[0]),
    .A1(to_SH0_input[1]),
    .A2(to_SH0_input[2]),
    .A3(to_SH0_input[3]),
    .S0(ConfigBits[60+0]),
    .S0N(ConfigBits_N[60+0]),
    .S1(ConfigBits[60+1]),
    .S1N(ConfigBits_N[60+1]),
    .X(to_SH0)
);

 //switch matrix multiplexer to_SI0 MUX-4
assign to_SI0_input = {Z0_t,from_SI0,from_WI0,from_EI0};
cus_mux41_buf inst_cus_mux41_buf_to_SI0 (
    .A0(to_SI0_input[0]),
    .A1(to_SI0_input[1]),
    .A2(to_SI0_input[2]),
    .A3(to_SI0_input[3]),
    .S0(ConfigBits[62+0]),
    .S0N(ConfigBits_N[62+0]),
    .S1(ConfigBits[62+1]),
    .S1N(ConfigBits_N[62+1]),
    .X(to_SI0)
);

 //switch matrix multiplexer A0_t MUX-4
assign A0_t_input = {VCC0,GND0,from_J_I2A0,from_J_I1A0};
cus_mux41_buf inst_cus_mux41_buf_A0_t (
    .A0(A0_t_input[0]),
    .A1(A0_t_input[1]),
    .A2(A0_t_input[2]),
    .A3(A0_t_input[3]),
    .S0(ConfigBits[64+0]),
    .S0N(ConfigBits_N[64+0]),
    .S1(ConfigBits[64+1]),
    .S1N(ConfigBits_N[64+1]),
    .X(A0_t)
);

 //switch matrix multiplexer B0_t MUX-4
assign B0_t_input = {VCC0,GND0,from_J_I2B0,from_J_I1B0};
cus_mux41_buf inst_cus_mux41_buf_B0_t (
    .A0(B0_t_input[0]),
    .A1(B0_t_input[1]),
    .A2(B0_t_input[2]),
    .A3(B0_t_input[3]),
    .S0(ConfigBits[66+0]),
    .S0N(ConfigBits_N[66+0]),
    .S1(ConfigBits[66+1]),
    .S1N(ConfigBits_N[66+1]),
    .X(B0_t)
);

 //switch matrix multiplexer A0_f MUX-0
 //WARNING unused multiplexer MUX-A0_f
 //switch matrix multiplexer B0_f MUX-0
 //WARNING unused multiplexer MUX-B0_f
 //switch matrix multiplexer A1_t MUX-0
 //WARNING unused multiplexer MUX-A1_t
 //switch matrix multiplexer B1_t MUX-0
 //WARNING unused multiplexer MUX-B1_t
 //switch matrix multiplexer A1_f MUX-0
 //WARNING unused multiplexer MUX-A1_f
 //switch matrix multiplexer B1_f MUX-0
 //WARNING unused multiplexer MUX-B1_f
 //switch matrix multiplexer to_J_I1A0 MUX-16
assign to_J_I1A0_input = {from_NI0,from_NH0,from_NG0,from_NF0,from_ND0,from_NC0,from_NB0,from_NA0,from_EI0,from_EH0,from_EG0,from_EF0,from_ED0,from_EC0,from_EB0,from_EA0};
cus_mux161_buf inst_cus_mux161_buf_to_J_I1A0 (
    .A0(to_J_I1A0_input[0]),
    .A1(to_J_I1A0_input[1]),
    .A2(to_J_I1A0_input[2]),
    .A3(to_J_I1A0_input[3]),
    .A4(to_J_I1A0_input[4]),
    .A5(to_J_I1A0_input[5]),
    .A6(to_J_I1A0_input[6]),
    .A7(to_J_I1A0_input[7]),
    .A8(to_J_I1A0_input[8]),
    .A9(to_J_I1A0_input[9]),
    .A10(to_J_I1A0_input[10]),
    .A11(to_J_I1A0_input[11]),
    .A12(to_J_I1A0_input[12]),
    .A13(to_J_I1A0_input[13]),
    .A14(to_J_I1A0_input[14]),
    .A15(to_J_I1A0_input[15]),
    .S0(ConfigBits[68+0]),
    .S0N(ConfigBits_N[68+0]),
    .S1(ConfigBits[68+1]),
    .S1N(ConfigBits_N[68+1]),
    .S2(ConfigBits[68+2]),
    .S2N(ConfigBits_N[68+2]),
    .S3(ConfigBits[68+3]),
    .S3N(ConfigBits_N[68+3]),
    .X(to_J_I1A0)
);

 //switch matrix multiplexer to_J_I2A0 MUX-16
assign to_J_I2A0_input = {from_SI0,from_SH0,from_SG0,from_SF0,from_SD0,from_SC0,from_SB0,from_SA0,from_WI0,from_WH0,from_WG0,from_WF0,from_WD0,from_WC0,from_WB0,from_WA0};
cus_mux161_buf inst_cus_mux161_buf_to_J_I2A0 (
    .A0(to_J_I2A0_input[0]),
    .A1(to_J_I2A0_input[1]),
    .A2(to_J_I2A0_input[2]),
    .A3(to_J_I2A0_input[3]),
    .A4(to_J_I2A0_input[4]),
    .A5(to_J_I2A0_input[5]),
    .A6(to_J_I2A0_input[6]),
    .A7(to_J_I2A0_input[7]),
    .A8(to_J_I2A0_input[8]),
    .A9(to_J_I2A0_input[9]),
    .A10(to_J_I2A0_input[10]),
    .A11(to_J_I2A0_input[11]),
    .A12(to_J_I2A0_input[12]),
    .A13(to_J_I2A0_input[13]),
    .A14(to_J_I2A0_input[14]),
    .A15(to_J_I2A0_input[15]),
    .S0(ConfigBits[72+0]),
    .S0N(ConfigBits_N[72+0]),
    .S1(ConfigBits[72+1]),
    .S1N(ConfigBits_N[72+1]),
    .S2(ConfigBits[72+2]),
    .S2N(ConfigBits_N[72+2]),
    .S3(ConfigBits[72+3]),
    .S3N(ConfigBits_N[72+3]),
    .X(to_J_I2A0)
);

 //switch matrix multiplexer to_J_I1B0 MUX-16
assign to_J_I1B0_input = {from_NI0,from_NH0,from_NG0,from_NF0,from_ND0,from_NC0,from_NB0,from_NA0,from_EI0,from_EH0,from_EG0,from_EF0,from_ED0,from_EC0,from_EB0,from_EA0};
cus_mux161_buf inst_cus_mux161_buf_to_J_I1B0 (
    .A0(to_J_I1B0_input[0]),
    .A1(to_J_I1B0_input[1]),
    .A2(to_J_I1B0_input[2]),
    .A3(to_J_I1B0_input[3]),
    .A4(to_J_I1B0_input[4]),
    .A5(to_J_I1B0_input[5]),
    .A6(to_J_I1B0_input[6]),
    .A7(to_J_I1B0_input[7]),
    .A8(to_J_I1B0_input[8]),
    .A9(to_J_I1B0_input[9]),
    .A10(to_J_I1B0_input[10]),
    .A11(to_J_I1B0_input[11]),
    .A12(to_J_I1B0_input[12]),
    .A13(to_J_I1B0_input[13]),
    .A14(to_J_I1B0_input[14]),
    .A15(to_J_I1B0_input[15]),
    .S0(ConfigBits[76+0]),
    .S0N(ConfigBits_N[76+0]),
    .S1(ConfigBits[76+1]),
    .S1N(ConfigBits_N[76+1]),
    .S2(ConfigBits[76+2]),
    .S2N(ConfigBits_N[76+2]),
    .S3(ConfigBits[76+3]),
    .S3N(ConfigBits_N[76+3]),
    .X(to_J_I1B0)
);

 //switch matrix multiplexer to_J_I2B0 MUX-16
assign to_J_I2B0_input = {from_SI0,from_SH0,from_SG0,from_SF0,from_SD0,from_SC0,from_SB0,from_SA0,from_WI0,from_WH0,from_WG0,from_WF0,from_WD0,from_WC0,from_WB0,from_WA0};
cus_mux161_buf inst_cus_mux161_buf_to_J_I2B0 (
    .A0(to_J_I2B0_input[0]),
    .A1(to_J_I2B0_input[1]),
    .A2(to_J_I2B0_input[2]),
    .A3(to_J_I2B0_input[3]),
    .A4(to_J_I2B0_input[4]),
    .A5(to_J_I2B0_input[5]),
    .A6(to_J_I2B0_input[6]),
    .A7(to_J_I2B0_input[7]),
    .A8(to_J_I2B0_input[8]),
    .A9(to_J_I2B0_input[9]),
    .A10(to_J_I2B0_input[10]),
    .A11(to_J_I2B0_input[11]),
    .A12(to_J_I2B0_input[12]),
    .A13(to_J_I2B0_input[13]),
    .A14(to_J_I2B0_input[14]),
    .A15(to_J_I2B0_input[15]),
    .S0(ConfigBits[80+0]),
    .S0N(ConfigBits_N[80+0]),
    .S1(ConfigBits[80+1]),
    .S1N(ConfigBits_N[80+1]),
    .S2(ConfigBits[80+2]),
    .S2N(ConfigBits_N[80+2]),
    .S3(ConfigBits[80+3]),
    .S3N(ConfigBits_N[80+3]),
    .X(to_J_I2B0)
);

endmodule