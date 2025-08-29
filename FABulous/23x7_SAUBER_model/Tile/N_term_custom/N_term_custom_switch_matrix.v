 // NumberOfConfigBits: 0
module N_term_custom_switch_matrix
    #(
        parameter NoConfigBits=0
    )
    (
        input from_NA0,
        input from_NB0,
        input from_NC0,
        input from_ND0,
        input from_NF0,
        input from_NG0,
        input from_NG1,
        input from_NH0,
        input from_NH1,
        input from_NI0,
        input from_NI1,
        input from_NI2,
        output to_SA0,
        output to_SB0,
        output to_SC0,
        output to_SD0,
        output to_SF0,
        output to_SG0,
        output to_SG1,
        output to_SH0,
        output to_SH1,
        output to_SI0,
        output to_SI1,
        output to_SI2
 //global
);
parameter GND0 = 1'b0;
parameter GND = 1'b0;
parameter VCC0 = 1'b1;
parameter VCC = 1'b1;
parameter VDD0 = 1'b1;
parameter VDD = 1'b1;

wire[1-1:0] to_SA0_input;
wire[1-1:0] to_SB0_input;
wire[1-1:0] to_SC0_input;
wire[1-1:0] to_SD0_input;
wire[1-1:0] to_SF0_input;
wire[1-1:0] to_SG0_input;
wire[1-1:0] to_SG1_input;
wire[1-1:0] to_SH0_input;
wire[1-1:0] to_SH1_input;
wire[1-1:0] to_SI0_input;
wire[1-1:0] to_SI1_input;
wire[1-1:0] to_SI2_input;
 //The configuration bits (if any) are just a long shift register
 //This shift register is padded to an even number of flops/latches
 //switch matrix multiplexer to_SA0 MUX-1
assign to_SA0 = from_NA0;

 //switch matrix multiplexer to_SB0 MUX-1
assign to_SB0 = from_NB0;

 //switch matrix multiplexer to_SC0 MUX-1
assign to_SC0 = from_NC0;

 //switch matrix multiplexer to_SD0 MUX-1
assign to_SD0 = from_ND0;

 //switch matrix multiplexer to_SF0 MUX-1
assign to_SF0 = from_NF0;

 //switch matrix multiplexer to_SG0 MUX-1
assign to_SG0 = from_NG0;

 //switch matrix multiplexer to_SG1 MUX-1
assign to_SG1 = from_NG1;

 //switch matrix multiplexer to_SH0 MUX-1
assign to_SH0 = from_NH0;

 //switch matrix multiplexer to_SH1 MUX-1
assign to_SH1 = from_NH1;

 //switch matrix multiplexer to_SI0 MUX-1
assign to_SI0 = from_NI0;

 //switch matrix multiplexer to_SI1 MUX-1
assign to_SI1 = from_NI1;

 //switch matrix multiplexer to_SI2 MUX-1
assign to_SI2 = from_NI2;

endmodule