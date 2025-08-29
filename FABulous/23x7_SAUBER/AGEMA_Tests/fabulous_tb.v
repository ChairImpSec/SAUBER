`timescale 1ps/1ps
module fab_tb;
    parameter input_w = 22;

    wire [91:0] A_cfg, B_cfg;

    wire [input_w:0] I_top_0_t, I_top_0_f, I_top_1_t, I_top_1_f, ctrl_I_top_0_t, ctrl_I_top_0_f, O_top_0_f, O_top_1_f, ctrl_O_top_0_f, T_top, ctrl_T_top;
    reg  [input_w:0] O_top_0_t, O_top_1_t, ctrl_O_top_0_t;

    assign O_top_0_f = ~O_top_0_t;
    assign O_top_1_f = ~O_top_1_t;
    assign ctrl_O_top_0_f = ~ctrl_O_top_0_t;

    wire [input_w:0] unmasked_out;
    assign unmasked_out = I_top_0_t ^ I_top_1_t;
    
    reg rst = 1'b1;
    wire f_detected, prech1, prech2;

    reg prng_rst = 1'b1;

    reg  [79:0] key_t, iv_t;
    wire [79:0] key_f, iv_f;
    assign key_f = ~key_t;
    assign iv_f  = ~iv_t;


    reg CLK = 1'b0;
    reg resetn = 1'b1;
    reg SelfWriteStrobe = 1'b0;
    reg [31:0] SelfWriteData = 1'b0;
    reg Rx = 1'b1;
    wire ComActive;
    wire ReceiveLED;
    reg s_clk = 1'b0;
    reg s_data = 1'b0;

    // Instantiate both the fabric and the reference DUT
    eFPGA_top top_i (
        .I_top_0_t(I_top_0_t),
        .I_top_0_f(I_top_0_f),
        .I_top_1_t(I_top_1_t),
        .I_top_1_f(I_top_1_f),
        .T_top(T_top),
        .O_top_0_t(O_top_0_t),
        .O_top_0_f(O_top_0_f),
        .O_top_1_t(O_top_1_t),
        .O_top_1_f(O_top_1_f),
        .ctrl_I_top_0_t(ctrl_I_top_0_t),
        .ctrl_I_top_0_f(ctrl_I_top_0_f),
        .ctrl_T_top(ctrl_T_top),
        .ctrl_O_top_0_t(ctrl_O_top_0_t),
        .ctrl_O_top_0_f(ctrl_O_top_0_f),


        .A_config_C(A_cfg), .B_config_C(B_cfg),
        .CLK(CLK), .resetn(resetn),
        .SelfWriteStrobe(SelfWriteStrobe), .SelfWriteData(SelfWriteData),
        .Rx(Rx),
        .ComActive(ComActive),
        .ReceiveLED(ReceiveLED),
        .s_clk(s_clk),
        .s_data(s_data),

        .f_detected(f_detected),
        .rst(rst),
        .prech1(prech1),
        .prech2(prech2),
        .key_t(key_t),
        .key_f(key_f),
        .iv_t(iv_t),
        .iv_f(iv_f),
        .prng_rst(prng_rst)
    );

    integer idx;

    localparam MAX_BITBYTES = 21140;
    reg [7:0] bitstream[0:MAX_BITBYTES-1];

    always #5000 CLK = (CLK === 1'b0);

    integer i;
    reg have_errors = 1'b0;


/////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////

initial begin

     

`ifndef EMULATION
        $display("writing bitstream ...");   
        $readmemh("bitstream.hex", bitstream);
        #100;
        resetn = 1'b0;
        #10000;
        resetn = 1'b1;
        #10000;
        repeat (20) @(posedge CLK);
        #2500;
        for (i = 0; i < MAX_BITBYTES; i = i + 4) begin
            SelfWriteData <= {bitstream[i], bitstream[i+1], bitstream[i+2], bitstream[i+3]};
            repeat (2) @(posedge CLK);
            SelfWriteStrobe <= 1'b1;
            @(posedge CLK);
            SelfWriteStrobe <= 1'b0;
            repeat (2) @(posedge CLK);
        end
        $display("writing bitstream done"); 
`endif

    

    repeat (10) @(posedge CLK); 

    $dumpfile("fab_tb.fst");
    $dumpvars(0, fab_tb);


    O_top_0_t       <= 0;
    O_top_1_t       <= 0;
    ctrl_O_top_0_t  <= 0;
    key_t <= 80'h20a66cfb0a4516cf5e25;
    iv_t  <= 80'hf25dec3fd703b7213f16;


    rst <= 1'b1;
    prng_rst <= 1'b1;
    repeat (10) @(posedge CLK);
    $display("start sim"); 

/////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////
rst <= 1'b0;
prng_rst <= 1'b0;
repeat (1) @(posedge CLK);
repeat (1) @(posedge CLK);
/////////////////////////////////////////////////////////////////////////////////////////////////////

key_t <= 80'hd78b1bbaa4fd57b52a7f;
iv_t <= 80'h9dc951fcd39c6136184a;
ctrl_O_top_0_t[4:0] <= 5'b11111;
O_top_0_t[7:0]  <= 8'h2b;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0xf1  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'h7e;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0xf3  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'h15;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0x59  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'h16;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0x47  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'h28;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0x34  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'hae;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0xe4  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'hd2;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0xb5  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'ha6;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0x24  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'hab;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0x62  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'hf7;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0x68  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'h15;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0x59  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'h88;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0xc4  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'h09;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0x1  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'hcf;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0x8a  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'h4f;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0x84  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'h3c;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0xeb  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'h32;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0x23  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'h43;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0x1a  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'hf6;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0x42  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'ha8;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0xc2  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'h88;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0xc4  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'h5a;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0xbe  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'h30;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0x4  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'h8d;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0x5d  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'h31;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0xc7  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'h31;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0xc7  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'h98;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0x46  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'ha2;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0x3a  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'he0;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0xe1  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'h37;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0x9a  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'h07;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0xc5  ", $time, unmasked_out[19:12]);
O_top_0_t[7:0]  <= 8'h34;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0x18  ", $time, unmasked_out[19:12]);
ctrl_O_top_0_t[1] <= 1'b0;
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h, expected_next= 0x18  ", $time, unmasked_out[19:12]);




/////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////

$display("sim complete");

        if (have_errors)
            $fatal;
        else
            $finish;
    end

endmodule


/*
module clk_buf(input A, output X);
assign X = A;
endmodule

module break_comb_loop(input A, output X);
assign X = A;
endmodule*/
