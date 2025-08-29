module keccak_sbox (
    input  aa,
    input  bb,
    input  cc,
    input  dd,
    input  ee,
    output ap,
    output bp,
    output cp,
    output dp,
    output ep);

    genvar i, j, k;

    AND_XOR and_xor_inst_a (.x(bb), .y(cc), .z(aa), .q(ap));
    AND_XOR and_xor_inst_b (.x(cc), .y(dd), .z(bb), .q(bp));
    AND_XOR and_xor_inst_c (.x(dd), .y(ee), .z(cc), .q(cp));
    AND_XOR and_xor_inst_d (.x(ee), .y(aa), .z(dd), .q(dp));
    AND_XOR and_xor_inst_e (.x(aa), .y(bb), .z(ee), .q(ep));

endmodule
















































