 // NumberOfConfigBits: 0
module S_term_custom_switch_matrix
    #(
        parameter NoConfigBits=0
    )
    (
        input from_SA0,
        input from_SB0,
        input from_SC0,
        input from_SD0,
        input from_SF0,
        input from_SG0,
        input from_SG1,
        input from_SH0,
        input from_SH1,
        input from_SI0,
        input from_SI1,
        input from_SI2,
        output to_NA0,
        output to_NB0,
        output to_NC0,
        output to_ND0,
        output to_NF0,
        output to_NG0,
        output to_NG1,
        output to_NH0,
        output to_NH1,
        output to_NI0,
        output to_NI1,
        output to_NI2
 //global
);
parameter GND0 = 1'b0;
parameter GND = 1'b0;
parameter VCC0 = 1'b1;
parameter VCC = 1'b1;
parameter VDD0 = 1'b1;
parameter VDD = 1'b1;

wire[1-1:0] to_NA0_input;
wire[1-1:0] to_NB0_input;
wire[1-1:0] to_NC0_input;
wire[1-1:0] to_ND0_input;
wire[1-1:0] to_NF0_input;
wire[1-1:0] to_NG0_input;
wire[1-1:0] to_NG1_input;
wire[1-1:0] to_NH0_input;
wire[1-1:0] to_NH1_input;
wire[1-1:0] to_NI0_input;
wire[1-1:0] to_NI1_input;
wire[1-1:0] to_NI2_input;
 //The configuration bits (if any) are just a long shift register
 //This shift register is padded to an even number of flops/latches
 //switch matrix multiplexer to_NA0 MUX-1
assign to_NA0 = from_SA0;

 //switch matrix multiplexer to_NB0 MUX-1
assign to_NB0 = from_SB0;

 //switch matrix multiplexer to_NC0 MUX-1
assign to_NC0 = from_SC0;

 //switch matrix multiplexer to_ND0 MUX-1
assign to_ND0 = from_SD0;

 //switch matrix multiplexer to_NF0 MUX-1
assign to_NF0 = from_SF0;

 //switch matrix multiplexer to_NG0 MUX-1
assign to_NG0 = from_SG0;

 //switch matrix multiplexer to_NG1 MUX-1
assign to_NG1 = from_SG1;

 //switch matrix multiplexer to_NH0 MUX-1
assign to_NH0 = from_SH0;

 //switch matrix multiplexer to_NH1 MUX-1
assign to_NH1 = from_SH1;

 //switch matrix multiplexer to_NI0 MUX-1
assign to_NI0 = from_SI0;

 //switch matrix multiplexer to_NI1 MUX-1
assign to_NI1 = from_SI1;

 //switch matrix multiplexer to_NI2 MUX-1
assign to_NI2 = from_SI2;

endmodule