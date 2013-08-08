`include "/misc/collaboration/382nGPS/382nG6/yjl/yjl_constants.v"
module TOP();
    
    initial
    begin
        $dumpfile("./test.vcd");
        $dumpvars(0, TOP);
    end


    reg [127:0] d;
    reg [3:0]   s;
    initial
    begin
        d = 128'hffff_ffff_ffff_ffff_ffff_abcd__ffff;
        s = 4'b10;              //2
        #50
        s = 4'b100;             //4
        #50
        s = 4'b1000;             //8
        #50
        s = 4'd1;
        #50
        s = 4'd2;
        #50
        s = 4'd3;
        #50
        s = 4'd5;
        #50
        s = 4'd7;
        #50
        s = 4'd9;
        #50
        s = 4'd11;
        #50
        s = 4'd15;
        $finish;
    end
    
    wire [127:0] out;
    assem_logic lsf_tb(out, d, 128'b0, s);

endmodule


// delay = 0.22 + 0.22 + 0.25 < 7ns
module lshifter128_4_byte(out, in, amount);
    input   [127:0]   in;
    input   [3:0]     amount;
    output  [127:0]   out;
    
    // get relevant bytes from the 128 bit inpu
    wire [7:0] byte0;
    wire [7:0] byte1;
    wire [7:0] byte2;
    wire [7:0] byte3;
    wire [7:0] byte4;
    wire [7:0] byte5;
    wire [7:0] byte6;
    wire [7:0] byte7;
    wire [7:0] byte8;
    wire [7:0] byte9;
    wire [7:0] byte10;
    wire [7:0] byte11;
    wire [7:0] byte12;
    wire [7:0] byte13;
    wire [7:0] byte14;
    wire [7:0] byte15;

    assign byte0 = in[1*`BYTE-1:0*`BYTE];
    assign byte1 = in[2*`BYTE-1:1*`BYTE];
    assign byte2 = in[3*`BYTE-1:2*`BYTE];
    assign byte3 = in[4*`BYTE-1:3*`BYTE];
    assign byte4 = in[5*`BYTE-1:4*`BYTE];
    assign byte5 = in[6*`BYTE-1:5*`BYTE];
    assign byte6 = in[7*`BYTE-1:6*`BYTE];
    assign byte7 = in[8*`BYTE-1:7*`BYTE];
    assign byte8 = in[9*`BYTE-1:8*`BYTE];
    assign byte9 = in[10*`BYTE-1:9*`BYTE];
    assign byte10 = in[11*`BYTE-1:10*`BYTE];
    assign byte11 = in[12*`BYTE-1:11*`BYTE];
    assign byte12 = in[13*`BYTE-1:12*`BYTE];
    assign byte13 = in[14*`BYTE-1:13*`BYTE];
    assign byte14 = in[15*`BYTE-1:14*`BYTE];
    assign byte15 = in[16*`BYTE-1:15*`BYTE];
    
    // intermediate value of muxes 
    // stage 0
    wire [7:0]  tmp0_0;
    wire [7:0]  tmp0_1;
    wire [7:0]  tmp0_2;
    wire [7:0]  tmp0_3;
    wire [7:0]  tmp0_4;
    wire [7:0]  tmp0_5;
    wire [7:0]  tmp0_6;
    wire [7:0]  tmp0_7;
    wire [7:0]  tmp0_8;
    wire [7:0]  tmp0_9;
    wire [7:0]  tmp0_10;
    wire [7:0]  tmp0_11;
    wire [7:0]  tmp0_12;
    wire [7:0]  tmp0_13;
    wire [7:0]  tmp0_14;
    wire [7:0]  tmp0_15;


    wire [7:0]  tmp0_0;
    wire [7:0]  tmp0_1;
    wire [7:0]  tmp0_2;
    wire [7:0]  tmp0_3;
    wire [7:0]  tmp0_4;
    wire [7:0]  tmp0_5;
    wire [7:0]  tmp0_6;
    wire [7:0]  tmp0_7;
    wire [7:0]  tmp0_8;
    wire [7:0]  tmp0_9;
    wire [7:0]  tmp0_10;
    wire [7:0]  tmp0_11;
    wire [7:0]  tmp0_12;
    wire [7:0]  tmp0_13;
    wire [7:0]  tmp0_14;
    wire [7:0]  tmp0_15;

    wire [7:0]  tmp1_0;
    wire [7:0]  tmp1_1;
    wire [7:0]  tmp1_2;
    wire [7:0]  tmp1_3;
    wire [7:0]  tmp1_4;
    wire [7:0]  tmp1_5;
    wire [7:0]  tmp1_6;
    wire [7:0]  tmp1_7;
    wire [7:0]  tmp1_8;
    wire [7:0]  tmp1_9;
    wire [7:0]  tmp1_10;
    wire [7:0]  tmp1_11;
    wire [7:0]  tmp1_12;
    wire [7:0]  tmp1_13;
    wire [7:0]  tmp1_14;
    wire [7:0]  tmp1_15;



    wire [7:0] out_byte0;
    wire [7:0] out_byte1;
    wire [7:0] out_byte2;
    wire [7:0] out_byte3;
    wire [7:0] out_byte4;
    wire [7:0] out_byte5;
    wire [7:0] out_byte6;
    wire [7:0] out_byte7;
    wire [7:0] out_byte8;
    wire [7:0] out_byte9;
    wire [7:0] out_byte10;
    wire [7:0] out_byte11;
    wire [7:0] out_byte12;
    wire [7:0] out_byte13;
    wire [7:0] out_byte14;
    wire [7:0] out_byte15;

    // shift by 8 bits
    // time = 0.22ns
    mux2_8$ mux0_0(tmp0_15, byte15, byte7,  amount[3]);
    mux2_8$ mux0_1(tmp0_14, byte14, byte6,  amount[3]);
    mux2_8$ mux0_2(tmp0_13, byte13, byte5,  amount[3]);
    mux2_8$ mux0_3(tmp0_12, byte12, byte4,  amount[3]);
    mux2_8$ mux0_4(tmp0_11, byte11, byte3,  amount[3]);
    mux2_8$ mux0_5(tmp0_10, byte10, byte2,  amount[3]);
    mux2_8$ mux0_6(tmp0_9,  byte9,  byte1,  amount[3]);
    mux2_8$ mux0_7(tmp0_8,  byte8,  byte0,  amount[3]);
    mux2_8$ mux0_8(tmp0_7,  byte7,  8'b0,   amount[3]);
    mux2_8$ mux0_9(tmp0_6,  byte6,  8'b0,   amount[3]);
    mux2_8$ mux0_10(tmp0_5, byte5,  8'b0,   amount[3]);
    mux2_8$ mux0_11(tmp0_4, byte4,  8'b0,   amount[3]);
    mux2_8$ mux0_12(tmp0_3, byte3,  8'b0,   amount[3]);
    mux2_8$ mux0_13(tmp0_2, byte2,  8'b0,   amount[3]);
    mux2_8$ mux0_14(tmp0_1, byte1,  8'b0,   amount[3]);
    mux2_8$ mux0_15(tmp0_0, byte0,  8'b0,   amount[3]);
    
    // shift by 4 bits
    // time = 0.22ns
    mux2_8$ mux1_0(tmp1_15, tmp0_15, tmp0_11, amount[2]);
    mux2_8$ mux1_1(tmp1_14, tmp0_14, tmp0_10, amount[2]);
    mux2_8$ mux1_2(tmp1_13, tmp0_13, tmp0_9,  amount[2]);
    mux2_8$ mux1_3(tmp1_12, tmp0_12, tmp0_8,  amount[2]);
    mux2_8$ mux1_4(tmp1_11, tmp0_11, tmp0_7,  amount[2]);
    mux2_8$ mux1_5(tmp1_10, tmp0_10, tmp0_6,  amount[2]);
    mux2_8$ mux1_6(tmp1_9,  tmp0_9,  tmp0_5,  amount[2]);
    mux2_8$ mux1_7(tmp1_8,  tmp0_8,  tmp0_4,  amount[2]);
    mux2_8$ mux1_8(tmp1_7,  tmp0_7,  tmp0_3,  amount[2]);
    mux2_8$ mux1_9(tmp1_6,  tmp0_6,  tmp0_2,  amount[2]);
    mux2_8$ mux1_a(tmp1_5,  tmp0_5,  tmp0_1,  amount[2]);
    mux2_8$ mux1_b(tmp1_4,  tmp0_4,  tmp0_0,  amount[2]);
    mux2_8$ mux1_c(tmp1_3,  tmp0_3,  8'b0,    amount[2]);
    mux2_8$ mux1_d(tmp1_2,  tmp0_2,  8'b0,    amount[2]);
    mux2_8$ mux1_e(tmp1_1,  tmp0_1,  8'b0,    amount[2]);
    mux2_8$ mux1_f(tmp1_0,  tmp0_0,  8'b0,    amount[2]);
   
    // shift 0/1/2/3 by using the mux4_8
    // time = 0.26ns
    mux4_8$  mux2_0(out_byte15,  tmp1_15, tmp1_14, tmp1_13, tmp1_12, amount[0], amount[1]);
    mux4_8$  mux2_1(out_byte14,  tmp1_14, tmp1_13, tmp1_12, tmp1_11, amount[0], amount[1]);
    mux4_8$  mux2_2(out_byte13,  tmp1_13, tmp1_12, tmp1_11, tmp1_10, amount[0], amount[1]);
    mux4_8$  mux2_3(out_byte12,  tmp1_12, tmp1_11, tmp1_10, tmp1_9,  amount[0], amount[1]);
    mux4_8$  mux2_4(out_byte11,  tmp1_11, tmp1_10, tmp1_9,  tmp1_8,  amount[0], amount[1]);
    mux4_8$  mux2_5(out_byte10,  tmp1_10, tmp1_9,  tmp1_8,  tmp1_7,  amount[0], amount[1]);
    mux4_8$  mux2_6(out_byte9,   tmp1_9,  tmp1_8,  tmp1_7,  tmp1_6,  amount[0], amount[1]);
    mux4_8$  mux2_7(out_byte8,   tmp1_8,  tmp1_7,  tmp1_6,  tmp1_5,  amount[0], amount[1]);
    mux4_8$  mux2_8(out_byte7,   tmp1_7,  tmp1_6,  tmp1_5,  tmp1_4,  amount[0], amount[1]);
    mux4_8$  mux2_9(out_byte6,   tmp1_6,  tmp1_5,  tmp1_4,  tmp1_3,  amount[0], amount[1]);
    mux4_8$  mux2_a(out_byte5,   tmp1_5,  tmp1_4,  tmp1_3,  tmp1_2,  amount[0], amount[1]);
    mux4_8$  mux2_b(out_byte4,   tmp1_4,  tmp1_3,  tmp1_2,  tmp1_1,  amount[0], amount[1]);
    mux4_8$  mux2_c(out_byte3,   tmp1_3,  tmp1_2,  tmp1_1,  tmp1_0,  amount[0], amount[1]);
    mux4_8$  mux2_d(out_byte2,   tmp1_2,  tmp1_1,  tmp1_0,  8'b0,    amount[0], amount[1]);
    mux4_8$  mux2_e(out_byte1,   tmp1_1,  tmp1_0,  8'b0,    8'b0,    amount[0], amount[1]);
    mux4_8$  mux2_f(out_byte0,   tmp1_0,  8'b0,    8'b0,    8'b0,    amount[0], amount[1]);
                                             
    assign out[1*`BYTE-1:0*`BYTE] = out_byte0;
    assign out[2*`BYTE-1:1*`BYTE] = out_byte1;
    assign out[3*`BYTE-1:2*`BYTE] = out_byte2;
    assign out[4*`BYTE-1:3*`BYTE] = out_byte3;
    assign out[5*`BYTE-1:4*`BYTE] = out_byte4;
    assign out[6*`BYTE-1:5*`BYTE] = out_byte5;
    assign out[7*`BYTE-1:6*`BYTE] = out_byte6;
    assign out[8*`BYTE-1:7*`BYTE] = out_byte7;
    assign out[9*`BYTE-1:8*`BYTE] = out_byte8;
    assign out[10*`BYTE-1:9*`BYTE] = out_byte9;
    assign out[11*`BYTE-1:10*`BYTE] = out_byte10;
    assign out[12*`BYTE-1:11*`BYTE] = out_byte11;
    assign out[13*`BYTE-1:12*`BYTE] = out_byte12;
    assign out[14*`BYTE-1:13*`BYTE] = out_byte13;
    assign out[15*`BYTE-1:14*`BYTE] = out_byte14;
    assign out[16*`BYTE-1:15*`BYTE] = out_byte15;
    

endmodule

// 1.0ns
module adder_4b(out, in1, in2, cin);
    input [3:0] in1;
    input [3:0] in2;
    input cin;
     
    output [3:0] out;
    
    alu4$ alu_0(.out(out), .a(in1), .b(in2), .cin(cin), .m(1), .s(4'd9));
endmodule

// g = in1*in2
// p = in1 xor in2
module bitwise_pgH(p, g, in1, in2);
    input in1, in2;
    output g, p;
    
    and2$ and_0(g, in1, in2);
    xor2$ xor_0(p, in1, in2);
endmodule


module bitwise_pgL(p, g, in1, in2);
    input in1, in2;
    output g, p;
    
    nand2$ nand_0(g, in1, in2);
    xnor2$ xnor_0(p, in1, in2);
endmodule


// black cell
// delay = 0.2 + 0.2 = 0.4
module bb(gi_k, pi_k, g_k_j, p_k_j, gi_j, pi_j);
    input gi_k;
    input pi_k;
    input p_k_j;
    input g_k_j;

    output gi_j;
    output pi_j;

    wire _gi_k;
    inv1$ inv_0(_gi_k, gi_k);
    nand2$ and0(and0_out, pi_k, g_k_j);
    and2$ and1(and1_out, p_k_j, g_k_j);

    nand2$ or_0(gi_j, _gi_k, and0_out);
    assign pi_j = and1_out; 
    
endmodule


// grey cell
// delay = 0.2 + 0.2 = 0.4
module gg(gi_k, pi_k, g_k_j, gi_j);
     input gi_k;
    input pi_k;
    input g_k_j;

    output gi_j;

    wire _gi_k;
    inv1$ inv_0(_gi_k, gi_k);
    nand2$ and0(and0_out, pi_k, g_k_j);
    nand2$ or_0(gi_j, _gi_k, and0_out);
    
endmodule

module kg_adder_32b(cout, sum, a, b, cin);
    input[31:0] a;
    input[31:0] b;
    input       cin;

    output[31:0] sum;
    output       cout;

    // pg network
    wire p00_00;
    wire p01_01;
    wire p02_02;
    wire p03_03;
    wire p04_04;
    wire p05_05;
    wire p06_06;
    wire p07_07;
    wire p08_08;
    wire p09_09;
    wire p10_10;
    wire p11_11;
    wire p12_12;
    wire p13_13;
    wire p14_14;
    wire p15_15;
    wire p16_16;
    wire p17_17;
    wire p18_18;
    wire p19_19;
    wire p20_20;
    wire p21_21;
    wire p22_22;
    wire p23_23;
    wire p24_24;
    wire p25_25;
    wire p26_26;
    wire p27_27;
    wire p28_28;
    wire p29_29;
    wire p30_30;
    wire p31_31;
    
    // pg network
    wire g00_00;
    wire g01_01;
    wire g02_02;
    wire g03_03;
    wire g04_04;
    wire g05_05;
    wire g06_06;
    wire g07_07;
    wire g08_08;
    wire g09_09;
    wire g10_10;
    wire g11_11;
    wire g12_12;
    wire g13_13;
    wire g14_14;
    wire g15_15;
    wire g16_16;
    wire g17_17;
    wire g18_18;
    wire g19_19;
    wire g20_20;
    wire g21_21;
    wire g22_22;
    wire g23_23;
    wire g24_24;
    wire g25_25;
    wire g26_26;
    wire g27_27;
    wire g28_28;
    wire g29_29;
    wire g30_30;
    wire g31_31;
    
    // PG NetWork
    bitwise_pgH pg_00(g00_00, a[0], b[0]);
    bitwise_pgH pg_01(g01_01, a[1], b[1]);
    bitwise_pgH pg_02(g02_02, a[2], b[2]);
    bitwise_pgH pg_03(g03_03, a[3], b[3]);
    bitwise_pgH pg_04(g04_04, a[4], b[4]);
    bitwise_pgH pg_05(g05_05, a[5], b[5]);
    bitwise_pgH pg_06(g06_06, a[6], b[6]);
    bitwise_pgH pg_07(g07_07, a[7], b[7]);
    bitwise_pgH pg_08(g08_08, a[8], b[8]);
    bitwise_pgH pg_09(g09_09, a[9], b[9]);
    bitwise_pgH pg_10(g10_10, a[10], b[10]);
    bitwise_pgH pg_11(g11_11, a[11], b[11]);
    bitwise_pgH pg_12(g12_12, a[12], b[12]);
    bitwise_pgH pg_13(g13_13, a[13], b[13]);
    bitwise_pgH pg_14(g14_14, a[14], b[14]);
    bitwise_pgH pg_15(g15_15, a[15], b[15]);
    bitwise_pgH pg_16(g16_16, a[16], b[16]);
    bitwise_pgH pg_17(g17_17, a[17], b[17]);
    bitwise_pgH pg_18(g18_18, a[18], b[18]);
    bitwise_pgH pg_19(g19_19, a[19], b[19]);
    bitwise_pgH pg_20(g20_10, a[20], b[20]);
    bitwise_pgH pg_21(g21_11, a[21], b[21]);
    bitwise_pgH pg_22(g22_12, a[22], b[22]);
    bitwise_pgH pg_23(g23_13, a[23], b[23]);
    bitwise_pgH pg_24(g24_14, a[24], b[24]);
    bitwise_pgH pg_25(g25_15, a[25], b[25]);
    bitwise_pgH pg_26(g26_16, a[26], b[26]);
    bitwise_pgH pg_27(g27_17, a[27], b[27]);
    bitwise_pgH pg_28(g28_18, a[28], b[28]);
    bitwise_pgH pg_29(g29_19, a[29], b[29]);
    bitwise_pgH pg_30(g29_19, a[30], b[30]);
    bitwise_pgH pg_31(g29_19, a[31], b[31]);

    // level 1      //1bit
    // 15:14
    wire p31_30, g31_30;
    wire p30_29, g30_29;
    wire p29_28, g29_28;
    wire p28_27, g28_27;
    wire p27_26, g27_26;
    wire p26_25, g26_25;
    wire p25_24, g25_24;
    wire p24_23, g24_23;
    wire p23_22, g23_22;
    wire p22_21, g22_21;
    wire p21_20, g21_20;
    wire p20_19, g20_19;
    wire p19_18, g19_18;
    wire p18_17, g18_17;
    wire p17_16, g17_16;
    wire p16_15, g16_15;
             
    wire p15_14, g15_14;
    wire p14_13, g14_13;
    wire p13_12, g13_12;
    wire p12_11, g12_11;
    wire p11_10, g11_10;
    wire p10_09, g10_09;
    wire p09_08, g09_08;
    wire p08_07, g08_07;
    wire p07_06, g07_06;
    wire p06_05, g06_05;
    wire p05_04, g05_04;
    wire p04_03, g04_03;
    wire p03_02, g03_02;
    wire p02_01, g02_01;
    wire p01_00, g01_00;
    
    bb bb0_15(.gi_k(g31_31), .pi_k(p31_30), .g_k_j(g30_30), .p_k_j(p30_30), .pi_j(p31_30), .gi_j(g31_30));
    bb bb0_16(.gi_k(g30_30), .pi_k(p30_29), .g_k_j(g29_29), .p_k_j(p29_29), .pi_j(p30_29), .gi_j(g30_29));
    bb bb0_17(.gi_k(g29_29), .pi_k(p29_28), .g_k_j(g28_28), .p_k_j(p28_28), .pi_j(p29_28), .gi_j(g29_28));
    bb bb0_18(.gi_k(g28_28), .pi_k(p28_27), .g_k_j(g27_27), .p_k_j(p27_27), .pi_j(p28_27), .gi_j(g28_27));
    bb bb0_19(.gi_k(g27_27), .pi_k(p27_26), .g_k_j(g26_26), .p_k_j(p26_26), .pi_j(p27_26), .gi_j(g27_26));
    bb bb0_20(.gi_k(g26_26), .pi_k(p26_25), .g_k_j(g25_25), .p_k_j(p25_25), .pi_j(p26_25), .gi_j(g26_25));
    bb bb0_21(.gi_k(g25_25), .pi_k(p25_24), .g_k_j(g24_24), .p_k_j(p24_24), .pi_j(p25_24), .gi_j(g25_24));
    bb bb0_22(.gi_k(g24_24), .pi_k(p24_23), .g_k_j(g23_23), .p_k_j(p23_23), .pi_j(p24_23), .gi_j(g24_23));
    bb bb0_23(.gi_k(g23_23), .pi_k(p23_22), .g_k_j(g22_22), .p_k_j(p22_22), .pi_j(p23_22), .gi_j(g23_22));
    bb bb0_24(.gi_k(g22_22), .pi_k(p22_21), .g_k_j(g21_21), .p_k_j(p21_21), .pi_j(p22_21), .gi_j(g22_21));
    bb bb0_25(.gi_k(g21_21), .pi_k(p21_20), .g_k_j(g20_20), .p_k_j(p20_20), .pi_j(p21_20), .gi_j(g21_20));
    bb bb0_26(.gi_k(g20_20), .pi_k(p20_19), .g_k_j(g19_19), .p_k_j(p19_19), .pi_j(p20_19), .gi_j(g20_19));
    bb bb0_27(.gi_k(g19_19), .pi_k(p19_18), .g_k_j(g18_18), .p_k_j(p18_18), .pi_j(p19_18), .gi_j(g19_18));
    bb bb0_28(.gi_k(g18_18), .pi_k(p18_17), .g_k_j(g17_17), .p_k_j(p17_17), .pi_j(p18_17), .gi_j(g18_17));
    bb bb0_30(.gi_k(g17_17), .pi_k(p17_16), .g_k_j(g16_16), .p_k_j(p16_16), .pi_j(p17_16), .gi_j(g17_16));
    bb bb0_29(.gi_k(g16_16), .pi_k(p16_15), .g_k_j(g15_15), .p_k_j(p15_15), .pi_j(p16_15), .gi_j(g16_15));

    bb bb0_00(.gi_k(g15_14), .pi_k(p15_15), .g_k_j(g14_14), .p_k_j(p14_14), .pi_j(p15_14), .gi_j(g15_14));
    bb bb0_01(.gi_k(g14_13), .pi_k(p14_14), .g_k_j(g13_13), .p_k_j(p13_13), .pi_j(p14_13), .gi_j(g14_13));
    bb bb0_02(.gi_k(g13_12), .pi_k(p13_13), .g_k_j(g12_12), .p_k_j(p12_12), .pi_j(p13_12), .gi_j(g13_12));
    bb bb0_03(.gi_k(g12_11), .pi_k(p12_12), .g_k_j(g11_11), .p_k_j(p11_11), .pi_j(p12_11), .gi_j(g12_11));
    bb bb0_04(.gi_k(g11_10), .pi_k(p11_11), .g_k_j(g10_10), .p_k_j(p10_10), .pi_j(p11_10), .gi_j(g11_10));
    bb bb0_05(.gi_k(g10_09), .pi_k(p10_10), .g_k_j(g09_09), .p_k_j(p09_09), .pi_j(p10_09), .gi_j(g10_09));
    bb bb0_06(.gi_k(g09_08), .pi_k(p09_09), .g_k_j(g08_08), .p_k_j(p08_08), .pi_j(p09_08), .gi_j(g09_08));
    bb bb0_07(.gi_k(g08_07), .pi_k(p08_08), .g_k_j(g07_07), .p_k_j(p07_07), .pi_j(p08_07), .gi_j(g08_07));
    bb bb0_08(.gi_k(g07_06), .pi_k(p07_07), .g_k_j(g06_06), .p_k_j(p06_06), .pi_j(p07_06), .gi_j(g07_06));
    bb bb0_09(.gi_k(g06_05), .pi_k(p06_06), .g_k_j(g05_05), .p_k_j(p05_05), .pi_j(p06_05), .gi_j(g06_05));
    bb bb0_10(.gi_k(g05_04), .pi_k(p05_05), .g_k_j(g04_04), .p_k_j(p04_04), .pi_j(p05_04), .gi_j(g05_04));
    bb bb0_11(.gi_k(g04_03), .pi_k(p04_04), .g_k_j(g03_03), .p_k_j(p03_03), .pi_j(p04_03), .gi_j(g04_03));
    bb bb0_12(.gi_k(g03_02), .pi_k(p03_03), .g_k_j(g02_02), .p_k_j(p02_02), .pi_j(p03_02), .gi_j(g03_02));
    bb bb0_13(.gi_k(g02_01), .pi_k(p02_02), .g_k_j(g01_01), .p_k_j(p01_01), .pi_j(p02_01), .gi_j(g02_01));
    bb bb0_14(.gi_k(g01_00), .pi_k(p01_01), .g_k_j(g00_00), .p_k_j(p00_00), .pi_j(p01_00), .gi_j(g01_00));

    // level 2      // 2bit

    wire p31_28, g31_28;
    wire p30_27, g30_27;
    wire p29_26, g29_26;
    wire p28_25, g28_25;
    wire p27_24, g27_24;
    wire p26_23, g26_23;
    wire p25_22, g25_22;
    wire p24_21, g24_21;
    wire p23_20, g23_20;
    wire p22_19, g22_19;
    wire p21_18, g21_18;
    wire p20_17, g20_17;
    wire p19_16, g19_16;
    wire p18_15, g18_15;
    wire p17_14, g17_14;
    wire p16_13, g16_13;

    wire p15_12, g15_12;
    wire p14_11, g14_11;
    wire p13_10, g13_10;
    wire p12_09, g12_09;
    wire p11_08, g11_08;
    wire p10_07, g10_07;
    wire p09_06, g09_06;
    wire p08_05, g08_05;
    wire p07_04, g07_04;
    wire p06_03, g06_03;
    wire p05_02, g05_02;
    wire p04_01, g04_01;
    wire p03_00, g03_00;
    wire p02_00, g02_00;

    bb bb1_15(.gi_k(g31_30), .pi_k(p31_30), .g_k_j(g29_28), .p_k_j(p29_28), .pi_j(p31_28), .gi_j(g31_28));
    bb bb1_16(.gi_k(g30_29), .pi_k(p30_29), .g_k_j(g28_27), .p_k_j(p28_27), .pi_j(p30_27), .gi_j(g30_27));
    bb bb1_17(.gi_k(g29_28), .pi_k(p29_28), .g_k_j(g27_26), .p_k_j(p27_26), .pi_j(p29_26), .gi_j(g29_26));
    bb bb1_18(.gi_k(g28_27), .pi_k(p28_27), .g_k_j(g26_25), .p_k_j(p26_25), .pi_j(p28_25), .gi_j(g28_25));
    bb bb1_19(.gi_k(g27_26), .pi_k(p27_26), .g_k_j(g25_24), .p_k_j(p25_24), .pi_j(p27_24), .gi_j(g27_24));
    bb bb1_20(.gi_k(g26_25), .pi_k(p26_25), .g_k_j(g24_23), .p_k_j(p24_23), .pi_j(p26_23), .gi_j(g26_23));
    bb bb1_21(.gi_k(g25_24), .pi_k(p25_24), .g_k_j(g23_22), .p_k_j(p23_22), .pi_j(p25_22), .gi_j(g25_22));
    bb bb1_22(.gi_k(g24_23), .pi_k(p24_23), .g_k_j(g22_21), .p_k_j(p22_21), .pi_j(p24_21), .gi_j(g24_21));
    bb bb1_23(.gi_k(g23_22), .pi_k(p23_22), .g_k_j(g21_20), .p_k_j(p21_20), .pi_j(p23_20), .gi_j(g23_20));
    bb bb1_24(.gi_k(g22_21), .pi_k(p22_21), .g_k_j(g20_19), .p_k_j(p20_19), .pi_j(p22_19), .gi_j(g22_19));
    bb bb1_25(.gi_k(g21_20), .pi_k(p21_20), .g_k_j(g19_18), .p_k_j(p19_18), .pi_j(p21_18), .gi_j(g21_18));
    bb bb1_26(.gi_k(g20_19), .pi_k(p20_19), .g_k_j(g18_17), .p_k_j(p18_17), .pi_j(p20_17), .gi_j(g20_17));
    bb bb1_27(.gi_k(g19_18), .pi_k(p19_18), .g_k_j(g17_16), .p_k_j(p17_16), .pi_j(p19_16), .gi_j(g19_16));
    bb bb1_28(.gi_k(g18_17), .pi_k(p18_17), .g_k_j(g16_15), .p_k_j(p16_15), .pi_j(p18_14), .gi_j(g18_14));
    bb bb1_30(.gi_k(g17_16), .pi_k(p17_16), .g_k_j(g15_13), .p_k_j(p15_13), .pi_j(p17_13), .gi_j(g17_13));
    bb bb1_29(.gi_k(g16_15), .pi_k(p16_15), .g_k_j(g14_12), .p_k_j(p14_12), .pi_j(p16_12), .gi_j(g16_12));
    bb bb1_00(.gi_k(g15_14), .pi_k(p15_14), .g_k_j(g14_11), .p_k_j(p14_11), .pi_j(p15_11), .gi_j(g15_11));
    bb bb1_01(.gi_k(g14_13), .pi_k(p14_13), .g_k_j(g13_10), .p_k_j(p13_10), .pi_j(p14_10), .gi_j(g14_10));
    bb bb1_02(.gi_k(g13_12), .pi_k(p13_12), .g_k_j(g12_09), .p_k_j(p12_09), .pi_j(p13_09), .gi_j(g13_09));
    bb bb1_03(.gi_k(g12_11), .pi_k(p12_11), .g_k_j(g11_08), .p_k_j(p11_08), .pi_j(p12_08), .gi_j(g12_08));
    bb bb1_04(.gi_k(g11_10), .pi_k(p11_10), .g_k_j(g10_07), .p_k_j(p10_07), .pi_j(p11_07), .gi_j(g11_07));
    bb bb1_05(.gi_k(g10_09), .pi_k(p10_09), .g_k_j(g09_06), .p_k_j(p09_06), .pi_j(p10_06), .gi_j(g10_06));
    bb bb1_06(.gi_k(g09_08), .pi_k(p09_08), .g_k_j(g08_05), .p_k_j(p08_05), .pi_j(p09_05), .gi_j(g09_05));
    bb bb1_07(.gi_k(g08_07), .pi_k(p08_07), .g_k_j(g07_04), .p_k_j(p07_04), .pi_j(p08_04), .gi_j(g08_04));
    bb bb1_08(.gi_k(g07_06), .pi_k(p07_06), .g_k_j(g06_03), .p_k_j(p06_03), .pi_j(p07_03), .gi_j(g07_03));
    bb bb1_09(.gi_k(g06_05), .pi_k(p06_05), .g_k_j(g05_02), .p_k_j(p05_02), .pi_j(p06_02), .gi_j(g06_02));
    bb bb1_10(.gi_k(g05_04), .pi_k(p05_04), .g_k_j(g04_01), .p_k_j(p04_01), .pi_j(p05_01), .gi_j(g05_01));
    bb bb1_11(.gi_k(g04_03), .pi_k(p04_03), .g_k_j(g03_00), .p_k_j(p03_00), .pi_j(p04_00), .gi_j(g04_00));
    bb bb1_12(.gi_k(g03_02), .pi_k(p03_02), .g_k_j(g02_00), .p_k_j(p02_00), .pi_j(p03_00), .gi_j(g03_00));
    bb bb1_13(.gi_k(g02_01), .pi_k(p02_01), .g_k_j(g01_00), .p_k_j(p01_00), .pi_j(p02_00), .gi_j(g02_00));
    bb bb1_14(.gi_k(g01_00), .pi_k(p01_00), .g_k_j(g00_00), .p_k_j(p00_00), .pi_j(p01_00), .gi_j(g01_00));
    
    // level 3      // 4bit

    wire p31_24, g31_24;
    wire p30_23, g30_23;
    wire p29_22, g29_22;
    wire p28_21, g28_21;
    wire p27_20, g27_20;
    wire p26_19, g26_19;
    wire p25_18, g25_18;
    wire p24_17, g24_17;
    wire p23_16, g23_16;
    wire p22_15, g22_15;
    wire p21_14, g21_14;
    wire p20_13, g20_13;
    wire p19_12, g19_12;
    wire p18_11, g18_11;
    wire p17_10, g17_10;
    wire p16_09, g16_09;

    wire p15_08, g15_08;
    wire p14_07, g14_07;
    wire p13_06, g13_06;
    wire p12_05, g12_05;
    wire p11_04, g11_04;
    wire p10_03, g10_03;
    wire p09_02, g09_02;
    wire p08_01, g08_01;
    wire p07_00, g07_00;
    wire p06_00, g06_00;
    wire p05_00, g05_00;
    wire p04_00, g04_00;
    
    bb bb2_15(.gi_k(g31_28), .pi_k(p31_28), .g_k_j(g27_24), .p_k_j(p27_24), .pi_j(p31_24), .gi_j(g31_24));
    bb bb2_16(.gi_k(g30_27), .pi_k(p30_27), .g_k_j(g26_23), .p_k_j(p26_23), .pi_j(p30_23), .gi_j(g30_23));
    bb bb2_17(.gi_k(g29_26), .pi_k(p29_26), .g_k_j(g25_22), .p_k_j(p25_22), .pi_j(p29_22), .gi_j(g29_22));
    bb bb2_18(.gi_k(g28_25), .pi_k(p28_25), .g_k_j(g24_21), .p_k_j(p24_21), .pi_j(p28_21), .gi_j(g28_21));
    bb bb2_19(.gi_k(g27_24), .pi_k(p27_24), .g_k_j(g23_20), .p_k_j(p23_20), .pi_j(p27_20), .gi_j(g27_20));
    bb bb2_20(.gi_k(g26_23), .pi_k(p26_23), .g_k_j(g22_19), .p_k_j(p22_19), .pi_j(p26_19), .gi_j(g26_19));
    bb bb2_21(.gi_k(g25_22), .pi_k(p25_22), .g_k_j(g21_18), .p_k_j(p21_18), .pi_j(p25_18), .gi_j(g25_18));
    bb bb2_22(.gi_k(g24_21), .pi_k(p24_21), .g_k_j(g20_17), .p_k_j(p20_17), .pi_j(p24_17), .gi_j(g24_17));
    bb bb2_23(.gi_k(g23_20), .pi_k(p23_20), .g_k_j(g19_16), .p_k_j(p19_16), .pi_j(p23_16), .gi_j(g23_16));
    bb bb2_24(.gi_k(g22_19), .pi_k(p22_19), .g_k_j(g18_14), .p_k_j(p18_14), .pi_j(p22_14), .gi_j(g22_14));
    bb bb2_25(.gi_k(g21_18), .pi_k(p21_18), .g_k_j(g17_13), .p_k_j(p17_13), .pi_j(p21_13), .gi_j(g21_13));
    bb bb2_26(.gi_k(g20_17), .pi_k(p20_17), .g_k_j(g16_12), .p_k_j(p16_12), .pi_j(p20_12), .gi_j(g20_12));
    bb bb2_27(.gi_k(g19_16), .pi_k(p19_16), .g_k_j(g15_11), .p_k_j(p15_11), .pi_j(p19_11), .gi_j(g19_11));
    bb bb2_28(.gi_k(g18_14), .pi_k(p18_14), .g_k_j(g14_10), .p_k_j(p14_10), .pi_j(p18_10), .gi_j(g18_10));
    bb bb2_30(.gi_k(g17_13), .pi_k(p17_13), .g_k_j(g13_09), .p_k_j(p13_09), .pi_j(p17_09), .gi_j(g17_09));
    bb bb2_29(.gi_k(g16_12), .pi_k(p16_12), .g_k_j(g12_08), .p_k_j(p12_08), .pi_j(p16_08), .gi_j(g16_08));
    bb bb2_00(.gi_k(g15_11), .pi_k(p15_11), .g_k_j(g11_07), .p_k_j(p11_07), .pi_j(p15_07), .gi_j(g15_07));
    bb bb2_01(.gi_k(g14_10), .pi_k(p14_10), .g_k_j(g10_06), .p_k_j(p10_06), .pi_j(p14_06), .gi_j(g14_06));
    bb bb2_02(.gi_k(g13_09), .pi_k(p13_09), .g_k_j(g09_05), .p_k_j(p09_05), .pi_j(p13_05), .gi_j(g13_05));
    bb bb2_03(.gi_k(g12_08), .pi_k(p12_08), .g_k_j(g08_04), .p_k_j(p08_04), .pi_j(p12_04), .gi_j(g12_04));
    bb bb2_04(.gi_k(g11_07), .pi_k(p11_07), .g_k_j(g07_03), .p_k_j(p07_03), .pi_j(p11_03), .gi_j(g11_03));
    bb bb2_05(.gi_k(g10_06), .pi_k(p10_06), .g_k_j(g06_02), .p_k_j(p06_02), .pi_j(p10_02), .gi_j(g10_02));
    bb bb2_06(.gi_k(g09_05), .pi_k(p09_05), .g_k_j(g05_01), .p_k_j(p05_01), .pi_j(p09_01), .gi_j(g09_01));
    bb bb2_07(.gi_k(g08_04), .pi_k(p08_04), .g_k_j(g04_00), .p_k_j(p04_00), .pi_j(p08_00), .gi_j(g08_00));
    bb bb2_08(.gi_k(g07_03), .pi_k(p07_03), .g_k_j(g03_00), .p_k_j(p03_00), .pi_j(p07_00), .gi_j(g07_00));
    bb bb2_09(.gi_k(g06_02), .pi_k(p06_02), .g_k_j(g02_00), .p_k_j(p02_00), .pi_j(p06_00), .gi_j(g06_00));
    bb bb2_10(.gi_k(g05_01), .pi_k(p05_01), .g_k_j(g01_00), .p_k_j(p01_00), .pi_j(p05_00), .gi_j(g05_00));
    bb bb2_11(.gi_k(g04_00), .pi_k(p04_00), .g_k_j(g03_00), .p_k_j(p03_00), .pi_j(p04_00), .gi_j(g04_00));
   






    
    // level 4      // 8bit
    wire p31_16, g31_16;
    wire p30_15, g30_15;
    wire p29_14, g29_14;
    wire p28_13, g28_13;
    wire p27_12, g27_12;
    wire p26_11, g26_11;
    wire p25_10, g25_10;
    wire p24_09, g24_09;
    wire p23_08, g23_08;
    wire p22_07, g22_07;
    wire p21_06, g21_06;
    wire p20_05, g20_05;
    wire p19_04, g19_04;
    wire p18_03, g18_03;
    wire p17_02, g17_02;
    wire p16_01, g16_01;
    wire p15_00, g15_00;
    wire p14_00, g14_00;
    wire p13_00, g13_00;
    wire p12_00, g12_00;
    wire p11_00, g11_00;
    wire p10_00, g10_00;
    wire p09_00, g09_00;
    wire p08_00, g08_00;

    bb bb3_15(.gi_k(g31_24), .pi_k(p31_24), .g_k_j(g23_16), .p_k_j(p23_16), .pi_j(p31_16), .gi_j(g31_16));
    bb bb3_16(.gi_k(g30_23), .pi_k(p30_23), .g_k_j(g22_14), .p_k_j(p22_15), .pi_j(p30_15), .gi_j(g30_15));
    bb bb3_17(.gi_k(g29_22), .pi_k(p29_22), .g_k_j(g21_13), .p_k_j(p21_14), .pi_j(p29_14), .gi_j(g29_14));
    bb bb3_18(.gi_k(g28_21), .pi_k(p28_21), .g_k_j(g20_12), .p_k_j(p20_13), .pi_j(p28_13), .gi_j(g28_13));
    bb bb3_19(.gi_k(g27_20), .pi_k(p27_20), .g_k_j(g19_11), .p_k_j(p19_12), .pi_j(p27_12), .gi_j(g27_12));
    bb bb3_20(.gi_k(g26_19), .pi_k(p26_19), .g_k_j(g18_10), .p_k_j(p18_11), .pi_j(p26_11), .gi_j(g26_11));
    bb bb3_21(.gi_k(g25_18), .pi_k(p25_18), .g_k_j(g17_09), .p_k_j(p17_10), .pi_j(p25_10), .gi_j(g25_10));
    bb bb3_22(.gi_k(g24_17), .pi_k(p24_17), .g_k_j(g16_08), .p_k_j(p16_09), .pi_j(p24_09), .gi_j(g24_09));
    bb bb3_23(.gi_k(g23_16), .pi_k(p23_16), .g_k_j(g15_07), .p_k_j(p15_08), .pi_j(p23_08), .gi_j(g23_08));
    bb bb3_24(.gi_k(g22_15), .pi_k(p22_15), .g_k_j(g14_06), .p_k_j(p14_07), .pi_j(p22_07), .gi_j(g22_07));
    bb bb3_25(.gi_k(g21_14), .pi_k(p21_14), .g_k_j(g13_05), .p_k_j(p13_06), .pi_j(p21_06), .gi_j(g21_06));
    bb bb3_26(.gi_k(g20_13), .pi_k(p20_13), .g_k_j(g12_04), .p_k_j(p12_05), .pi_j(p20_05), .gi_j(g20_05));
    bb bb3_27(.gi_k(g19_12), .pi_k(p19_12), .g_k_j(g11_03), .p_k_j(p11_04), .pi_j(p19_04), .gi_j(g19_04));
    bb bb3_28(.gi_k(g18_11), .pi_k(p18_11), .g_k_j(g10_02), .p_k_j(p10_03), .pi_j(p18_03), .gi_j(g18_03));
    bb bb3_29(.gi_k(g17_10), .pi_k(p17_10), .g_k_j(g09_01), .p_k_j(p09_02), .pi_j(p17_02), .gi_j(g17_02));
    bb bb3_30(.gi_k(g16_09), .pi_k(p16_09), .g_k_j(g08_00), .p_k_j(p08_01), .pi_j(p16_01), .gi_j(g16_01));
    bb bb3_00(.gi_k(g15_08), .pi_k(p15_08), .g_k_j(g07_00), .p_k_j(p07_00), .pi_j(p15_00), .gi_j(g15_00));
    bb bb3_01(.gi_k(g14_07), .pi_k(p14_07), .g_k_j(g06_00), .p_k_j(p06_00), .pi_j(p14_00), .gi_j(g14_00));
    bb bb3_02(.gi_k(g13_06), .pi_k(p13_06), .g_k_j(g05_00), .p_k_j(p05_00), .pi_j(p13_00), .gi_j(g13_00));
    bb bb3_03(.gi_k(g12_05), .pi_k(p12_05), .g_k_j(g04_00), .p_k_j(p04_00), .pi_j(p12_00), .gi_j(g12_00));
    bb bb3_04(.gi_k(g11_04), .pi_k(p11_04), .g_k_j(g03_00), .p_k_j(p03_00), .pi_j(p11_00), .gi_j(g11_00));
    bb bb3_05(.gi_k(g10_03), .pi_k(p10_03), .g_k_j(g02_00), .p_k_j(p02_00), .pi_j(p10_00), .gi_j(g10_00));
    bb bb3_06(.gi_k(g09_02), .pi_k(p09_02), .g_k_j(g01_00), .p_k_j(p01_00), .pi_j(p09_00), .gi_j(g09_00));
    bb bb3_07(.gi_k(g08_01), .pi_k(p08_01), .g_k_j(g00_00), .p_k_j(p00_00), .pi_j(p08_00), .gi_j(g08_00));
                                                                       
                    
    // level 5      // 16bit

    wire p31_00, g31_00;
    wire p30_00, g30_00;
    wire p29_00, g29_00;
    wire p28_00, g28_00;
    wire p27_00, g27_00;
    wire p26_00, g26_00;
    wire p25_00, g25_00;
    wire p24_00, g24_00;
    wire p23_00, g23_00;
    wire p22_00, g22_00;
    wire p21_00, g21_00;
    wire p20_00, g20_00;
    wire p19_00, g19_00;
    wire p18_00, g18_00;
    wire p17_00, g17_00;
    wire p16_00, g16_00;


    bb bb4_15(.gi_k(g31_16), .pi_k(p31_16), .g_k_j(g15_00), .p_k_j(p15_00), .pi_j(p15_00), .gi_j(g31_00));
    bb bb4_16(.gi_k(g30_15), .pi_k(p30_15), .g_k_j(g14_00), .p_k_j(p14_00), .pi_j(p14_00), .gi_j(g30_00));
    bb bb4_17(.gi_k(g29_14), .pi_k(p29_14), .g_k_j(g13_00), .p_k_j(p13_00), .pi_j(p13_00), .gi_j(g29_00));
    bb bb4_18(.gi_k(g28_13), .pi_k(p28_13), .g_k_j(g12_00), .p_k_j(p12_00), .pi_j(p12_00), .gi_j(g28_00));
    bb bb4_19(.gi_k(g27_12), .pi_k(p27_12), .g_k_j(g11_00), .p_k_j(p11_00), .pi_j(p11_00), .gi_j(g27_00));
    bb bb4_20(.gi_k(g26_11), .pi_k(p26_11), .g_k_j(g10_00), .p_k_j(p10_00), .pi_j(p10_00), .gi_j(g26_00));
    bb bb4_21(.gi_k(g25_10), .pi_k(p25_10), .g_k_j(g09_00), .p_k_j(p09_00), .pi_j(p09_00), .gi_j(g25_00));
    bb bb4_22(.gi_k(g24_09), .pi_k(p24_09), .g_k_j(g08_00), .p_k_j(p08_00), .pi_j(p08_00), .gi_j(g24_00));
    bb bb4_23(.gi_k(g23_08), .pi_k(p23_08), .g_k_j(g07_07), .p_k_j(p07_00), .pi_j(p07_00), .gi_j(g23_00));
    bb bb4_24(.gi_k(g22_07), .pi_k(p22_07), .g_k_j(g06_06), .p_k_j(p06_00), .pi_j(p06_00), .gi_j(g22_00));
    bb bb4_25(.gi_k(g21_06), .pi_k(p21_06), .g_k_j(g05_05), .p_k_j(p05_00), .pi_j(p05_00), .gi_j(g21_00));
    bb bb4_26(.gi_k(g20_05), .pi_k(p20_05), .g_k_j(g04_04), .p_k_j(p04_00), .pi_j(p04_00), .gi_j(g20_00));
    bb bb4_27(.gi_k(g19_04), .pi_k(p19_04), .g_k_j(g03_03), .p_k_j(p03_00), .pi_j(p03_00), .gi_j(g19_00));
    bb bb4_28(.gi_k(g18_03), .pi_k(p18_03), .g_k_j(g02_02), .p_k_j(p02_00), .pi_j(p02_00), .gi_j(g18_00));
    bb bb4_30(.gi_k(g17_02), .pi_k(p17_02), .g_k_j(g01_01), .p_k_j(p01_00), .pi_j(p01_00), .gi_j(g17_00));
    bb bb4_29(.gi_k(g16_01), .pi_k(p16_01), .g_k_j(g00_00), .p_k_j(p00_00), .pi_j(p00_00), .gi_j(g16_00));
       
    
    //  SUM array
    xor2$ xor_00(sum[31], p31_31, g31_00);
    xor2$ xor_01(sum[30], p30_30, g30_00);
    xor2$ xor_02(sum[29], p29_29, g29_00);
    xor2$ xor_03(sum[28], p28_28, g28_00);
    xor2$ xor_04(sum[27], p27_27, g27_00);
    xor2$ xor_05(sum[26], p26_26, g26_00);
    xor2$ xor_06(sum[25], p25_25, g25_00);
    xor2$ xor_07(sum[24], p24_24, g24_00);
    xor2$ xor_08(sum[23], p23_23, g23_00);
    xor2$ xor_09(sum[22], p22_22, g22_00);
    xor2$ xor_10(sum[21], p21_21, g21_00);
    xor2$ xor_11(sum[20], p20_20, g20_00);
    xor2$ xor_12(sum[19], p19_19, g19_00);
    xor2$ xor_13(sum[18], p18_18, g18_00);
    xor2$ xor_14(sum[17], p17_17, g17_00);
    xor2$ xor_15(sum[16], p16_16, g16_00);
    xor2$ xor_16(sum[15], p15_15, g15_00);
    xor2$ xor_17(sum[14], p14_14, g14_00);
    xor2$ xor_18(sum[13], p13_13, g13_00);
    xor2$ xor_19(sum[12], p12_12, g12_00);
    xor2$ xor_20(sum[11], p11_11, g11_00);
    xor2$ xor_21(sum[10], p10_10, g10_00);
    xor2$ xor_22(sum[9],  p09_09, g09_00);
    xor2$ xor_23(sum[8],  p08_08, g08_00);
    xor2$ xor_24(sum[7],  p07_07, g07_00);
    xor2$ xor_25(sum[6],  p06_06, g06_00);
    xor2$ xor_26(sum[5],  p05_05, g05_00);
    xor2$ xor_27(sum[4],  p04_04, g04_00);
    xor2$ xor_28(sum[3],  p03_03, g03_00);
    xor2$ xor_29(sum[2],  p02_02, g02_00);
    xor2$ xor_30(sum[1],  p01_01, g01_00);
    xor2$ xor_31(sum[0],  p00_00, cin);

    // COUT
    wire cout_t;
    wire _g31_31;
    nand2$ cout_nand0(out_t, p31_31, g30_00);
    inv1$ cout_inv(_g31_31, g31_31);
    nand2$ cout_nand1(cout, out_t, _g31_31);

endmodule

// generate 16 kinds 
// 
module assem_logic(out, in0, in1, sel);
    input [127:0] in0;
    input [127:0] in1;
    input [3:0]   sel;
    
    output [127:0] out;
    
    wire [127:0] out0;
    wire [127:0] out1;
    wire [127:0] out2;
    wire [127:0] out3;
    wire [127:0] out4;
    wire [127:0] out5;
    wire [127:0] out6;
    wire [127:0] out7;
    wire [127:0] out8;
    wire [127:0] out9;
    wire [127:0] outa;
    wire [127:0] outb;
    wire [127:0] outc;
    wire [127:0] outd;
    wire [127:0] oute;
    wire [127:0] outf;
    
    // highest byte
    //      :
    //      :
    // lowest byte
    assign outf = in0;

    assign out0[16*`BYTE-1:15*`BYTE] = in0[16*`BYTE-1:15*`BYTE];
    assign out0[15*`BYTE-1:14*`BYTE] = in0[15*`BYTE-1:14*`BYTE];
    assign out0[14*`BYTE-1:13*`BYTE] = in0[14*`BYTE-1:13*`BYTE];
    assign out0[13*`BYTE-1:12*`BYTE] = in0[13*`BYTE-1:12*`BYTE];
    assign out0[12*`BYTE-1:11*`BYTE] = in0[12*`BYTE-1:11*`BYTE];
    assign out0[11*`BYTE-1:10*`BYTE] = in0[11*`BYTE-1:10*`BYTE];
    assign out0[10*`BYTE-1:9*`BYTE]  = in0[10*`BYTE-1:9*`BYTE];
    assign out0[9*`BYTE-1:8*`BYTE]   = in0[9*`BYTE-1:8*`BYTE];
    assign out0[8*`BYTE-1:7*`BYTE]   = in0[8*`BYTE-1:7*`BYTE];  
    assign out0[7*`BYTE-1:6*`BYTE]   = in0[7*`BYTE-1:6*`BYTE]; 
    assign out0[6*`BYTE-1:5*`BYTE]   = in0[6*`BYTE-1:5*`BYTE]; 
    assign out0[5*`BYTE-1:4*`BYTE]   = in0[5*`BYTE-1:4*`BYTE];   
    assign out0[4*`BYTE-1:3*`BYTE]   = in0[4*`BYTE-1:3*`BYTE];   
    assign out0[3*`BYTE-1:2*`BYTE]   = in0[3*`BYTE-1:2*`BYTE];   
    assign out0[2*`BYTE-1:1*`BYTE]   = in0[2*`BYTE-1:1*`BYTE];   
    assign out0[1*`BYTE-1:0*`BYTE]   = in1[16*`BYTE-1:15*`BYTE];  
       
    assign out1[16*`BYTE-1:15*`BYTE] = in0[16*`BYTE-1:15*`BYTE];
    assign out1[15*`BYTE-1:14*`BYTE] = in0[15*`BYTE-1:14*`BYTE];
    assign out1[14*`BYTE-1:13*`BYTE] = in0[14*`BYTE-1:13*`BYTE];
    assign out1[13*`BYTE-1:12*`BYTE] = in0[13*`BYTE-1:12*`BYTE];
    assign out1[12*`BYTE-1:11*`BYTE] = in0[12*`BYTE-1:11*`BYTE];
    assign out1[11*`BYTE-1:10*`BYTE] = in0[11*`BYTE-1:10*`BYTE];
    assign out1[10*`BYTE-1:9*`BYTE]  = in0[10*`BYTE-1:9*`BYTE];
    assign out1[9*`BYTE-1:8*`BYTE]   = in0[9*`BYTE-1:8*`BYTE];
    assign out1[8*`BYTE-1:7*`BYTE]   = in0[8*`BYTE-1:7*`BYTE];  
    assign out1[7*`BYTE-1:6*`BYTE]   = in0[7*`BYTE-1:6*`BYTE]; 
    assign out1[6*`BYTE-1:5*`BYTE]   = in0[6*`BYTE-1:5*`BYTE]; 
    assign out1[5*`BYTE-1:4*`BYTE]   = in0[5*`BYTE-1:4*`BYTE];   
    assign out1[4*`BYTE-1:3*`BYTE]   = in0[4*`BYTE-1:3*`BYTE];   
    assign out1[3*`BYTE-1:2*`BYTE]   = in0[3*`BYTE-1:2*`BYTE];   
    assign out1[2*`BYTE-1:1*`BYTE]   = in1[16*`BYTE-1:15*`BYTE];   
    assign out1[1*`BYTE-1:0*`BYTE]   = in1[15*`BYTE-1:14*`BYTE];  

    assign out2[16*`BYTE-1:15*`BYTE] = in0[16*`BYTE-1:15*`BYTE];
    assign out2[15*`BYTE-1:14*`BYTE] = in0[15*`BYTE-1:14*`BYTE];
    assign out2[14*`BYTE-1:13*`BYTE] = in0[14*`BYTE-1:13*`BYTE];
    assign out2[13*`BYTE-1:12*`BYTE] = in0[13*`BYTE-1:12*`BYTE];
    assign out2[12*`BYTE-1:11*`BYTE] = in0[12*`BYTE-1:11*`BYTE];
    assign out2[11*`BYTE-1:10*`BYTE] = in0[11*`BYTE-1:10*`BYTE];
    assign out2[10*`BYTE-1:9*`BYTE]  = in0[10*`BYTE-1:9*`BYTE];
    assign out2[9*`BYTE-1:8*`BYTE]   = in0[9*`BYTE-1:8*`BYTE];
    assign out2[8*`BYTE-1:7*`BYTE]   = in0[8*`BYTE-1:7*`BYTE];  
    assign out2[7*`BYTE-1:6*`BYTE]   = in0[7*`BYTE-1:6*`BYTE]; 
    assign out2[6*`BYTE-1:5*`BYTE]   = in0[6*`BYTE-1:5*`BYTE]; 
    assign out2[5*`BYTE-1:4*`BYTE]   = in0[5*`BYTE-1:4*`BYTE];   
    assign out2[4*`BYTE-1:3*`BYTE]   = in0[4*`BYTE-1:3*`BYTE];   
    assign out2[3*`BYTE-1:2*`BYTE]   = in1[16*`BYTE-1:15*`BYTE];   
    assign out2[2*`BYTE-1:1*`BYTE]   = in1[15*`BYTE-1:14*`BYTE];   
    assign out2[1*`BYTE-1:0*`BYTE]   = in1[14*`BYTE-1:13*`BYTE];  


    assign out3[16*`BYTE-1:15*`BYTE] = in0[16*`BYTE-1:15*`BYTE];
    assign out3[15*`BYTE-1:14*`BYTE] = in0[15*`BYTE-1:14*`BYTE];
    assign out3[14*`BYTE-1:13*`BYTE] = in0[14*`BYTE-1:13*`BYTE];
    assign out3[13*`BYTE-1:12*`BYTE] = in0[13*`BYTE-1:12*`BYTE];
    assign out3[12*`BYTE-1:11*`BYTE] = in0[12*`BYTE-1:11*`BYTE];
    assign out3[11*`BYTE-1:10*`BYTE] = in0[11*`BYTE-1:10*`BYTE];
    assign out3[10*`BYTE-1:9*`BYTE]  = in0[10*`BYTE-1:9*`BYTE];
    assign out3[9*`BYTE-1:8*`BYTE]   = in0[9*`BYTE-1:8*`BYTE];
    assign out3[8*`BYTE-1:7*`BYTE]   = in0[8*`BYTE-1:7*`BYTE];  
    assign out3[7*`BYTE-1:6*`BYTE]   = in0[7*`BYTE-1:6*`BYTE]; 
    assign out3[6*`BYTE-1:5*`BYTE]   = in0[6*`BYTE-1:5*`BYTE]; 
    assign out3[5*`BYTE-1:4*`BYTE]   = in0[5*`BYTE-1:4*`BYTE];   
    assign out3[4*`BYTE-1:3*`BYTE]   = in1[16*`BYTE-1:15*`BYTE];   
    assign out3[3*`BYTE-1:2*`BYTE]   = in1[15*`BYTE-1:14*`BYTE];   
    assign out3[2*`BYTE-1:1*`BYTE]   = in1[14*`BYTE-1:13*`BYTE];   
    assign out3[1*`BYTE-1:0*`BYTE]   = in1[13*`BYTE-1:12*`BYTE];  

    assign out4[16*`BYTE-1:15*`BYTE] = in0[16*`BYTE-1:15*`BYTE];
    assign out4[15*`BYTE-1:14*`BYTE] = in0[15*`BYTE-1:14*`BYTE];
    assign out4[14*`BYTE-1:13*`BYTE] = in0[14*`BYTE-1:13*`BYTE];
    assign out4[13*`BYTE-1:12*`BYTE] = in0[13*`BYTE-1:12*`BYTE];
    assign out4[12*`BYTE-1:11*`BYTE] = in0[12*`BYTE-1:11*`BYTE];
    assign out4[11*`BYTE-1:10*`BYTE] = in0[11*`BYTE-1:10*`BYTE];
    assign out4[10*`BYTE-1:9*`BYTE]  = in0[10*`BYTE-1:9*`BYTE];
    assign out4[9*`BYTE-1:8*`BYTE]   = in0[9*`BYTE-1:8*`BYTE];
    assign out4[8*`BYTE-1:7*`BYTE]   = in0[8*`BYTE-1:7*`BYTE];  
    assign out4[7*`BYTE-1:6*`BYTE]   = in0[7*`BYTE-1:6*`BYTE]; 
    assign out4[6*`BYTE-1:5*`BYTE]   = in0[6*`BYTE-1:5*`BYTE]; 
    assign out4[5*`BYTE-1:4*`BYTE]   = in1[16*`BYTE-1:15*`BYTE];   
    assign out4[4*`BYTE-1:3*`BYTE]   = in1[15*`BYTE-1:14*`BYTE];   
    assign out4[3*`BYTE-1:2*`BYTE]   = in1[14*`BYTE-1:13*`BYTE];   
    assign out4[2*`BYTE-1:1*`BYTE]   = in1[13*`BYTE-1:12*`BYTE];   
    assign out4[1*`BYTE-1:0*`BYTE]   = in1[12*`BYTE-1:11*`BYTE];  


    assign out5[16*`BYTE-1:15*`BYTE] = in0[16*`BYTE-1:15*`BYTE];
    assign out5[15*`BYTE-1:14*`BYTE] = in0[15*`BYTE-1:14*`BYTE];
    assign out5[14*`BYTE-1:13*`BYTE] = in0[14*`BYTE-1:13*`BYTE];
    assign out5[13*`BYTE-1:12*`BYTE] = in0[13*`BYTE-1:12*`BYTE];
    assign out5[12*`BYTE-1:11*`BYTE] = in0[12*`BYTE-1:11*`BYTE];
    assign out5[11*`BYTE-1:10*`BYTE] = in0[11*`BYTE-1:10*`BYTE];
    assign out5[10*`BYTE-1:9*`BYTE]  = in0[10*`BYTE-1:9*`BYTE];
    assign out5[9*`BYTE-1:8*`BYTE]   = in0[9*`BYTE-1:8*`BYTE];
    assign out5[8*`BYTE-1:7*`BYTE]   = in0[8*`BYTE-1:7*`BYTE];  
    assign out5[7*`BYTE-1:6*`BYTE]   = in0[7*`BYTE-1:6*`BYTE]; 
    assign out5[6*`BYTE-1:5*`BYTE]   = in1[16*`BYTE-1:15*`BYTE]; 
    assign out5[5*`BYTE-1:4*`BYTE]   = in1[15*`BYTE-1:14*`BYTE];   
    assign out5[4*`BYTE-1:3*`BYTE]   = in1[14*`BYTE-1:13*`BYTE];   
    assign out5[3*`BYTE-1:2*`BYTE]   = in1[13*`BYTE-1:12*`BYTE];   
    assign out5[2*`BYTE-1:1*`BYTE]   = in1[12*`BYTE-1:11*`BYTE];   
    assign out5[1*`BYTE-1:0*`BYTE]   = in1[11*`BYTE-1:10*`BYTE];  

    assign out6[16*`BYTE-1:15*`BYTE] = in0[16*`BYTE-1:15*`BYTE];
    assign out6[15*`BYTE-1:14*`BYTE] = in0[15*`BYTE-1:14*`BYTE];
    assign out6[14*`BYTE-1:13*`BYTE] = in0[14*`BYTE-1:13*`BYTE];
    assign out6[13*`BYTE-1:12*`BYTE] = in0[13*`BYTE-1:12*`BYTE];
    assign out6[12*`BYTE-1:11*`BYTE] = in0[12*`BYTE-1:11*`BYTE];
    assign out6[11*`BYTE-1:10*`BYTE] = in0[11*`BYTE-1:10*`BYTE];
    assign out6[10*`BYTE-1:9*`BYTE]  = in0[10*`BYTE-1:9*`BYTE];
    assign out6[9*`BYTE-1:8*`BYTE]   = in0[9*`BYTE-1:8*`BYTE];
    assign out6[8*`BYTE-1:7*`BYTE]   = in0[8*`BYTE-1:7*`BYTE];  
    assign out6[7*`BYTE-1:6*`BYTE]   = in1[16*`BYTE-1:15*`BYTE]; 
    assign out6[6*`BYTE-1:5*`BYTE]   = in1[15*`BYTE-1:14*`BYTE]; 
    assign out6[5*`BYTE-1:4*`BYTE]   = in1[14*`BYTE-1:13*`BYTE];   
    assign out6[4*`BYTE-1:3*`BYTE]   = in1[13*`BYTE-1:12*`BYTE];   
    assign out6[3*`BYTE-1:2*`BYTE]   = in1[12*`BYTE-1:11*`BYTE];   
    assign out6[2*`BYTE-1:1*`BYTE]   = in1[11*`BYTE-1:10*`BYTE];   
    assign out6[1*`BYTE-1:0*`BYTE]   = in1[10*`BYTE-1:9*`BYTE];
                                           
    assign out7[16*`BYTE-1:15*`BYTE] = in0[16*`BYTE-1:15*`BYTE];
    assign out7[15*`BYTE-1:14*`BYTE] = in0[15*`BYTE-1:14*`BYTE];
    assign out7[14*`BYTE-1:13*`BYTE] = in0[14*`BYTE-1:13*`BYTE];
    assign out7[13*`BYTE-1:12*`BYTE] = in0[13*`BYTE-1:12*`BYTE];
    assign out7[12*`BYTE-1:11*`BYTE] = in0[12*`BYTE-1:11*`BYTE];
    assign out7[11*`BYTE-1:10*`BYTE] = in0[11*`BYTE-1:10*`BYTE];
    assign out7[10*`BYTE-1:9*`BYTE]  = in0[10*`BYTE-1:9*`BYTE];
    assign out7[9*`BYTE-1:8*`BYTE]   = in0[9*`BYTE-1:8*`BYTE];
    assign out7[8*`BYTE-1:7*`BYTE]   = in1[16*`BYTE-1:15*`BYTE]; 
    assign out7[7*`BYTE-1:6*`BYTE]   = in1[15*`BYTE-1:14*`BYTE]; 
    assign out7[6*`BYTE-1:5*`BYTE]   = in1[14*`BYTE-1:13*`BYTE]; 
    assign out7[5*`BYTE-1:4*`BYTE]   = in1[13*`BYTE-1:12*`BYTE];   
    assign out7[4*`BYTE-1:3*`BYTE]   = in1[12*`BYTE-1:11*`BYTE];   
    assign out7[3*`BYTE-1:2*`BYTE]   = in1[11*`BYTE-1:10*`BYTE];   
    assign out7[2*`BYTE-1:1*`BYTE]   = in1[10*`BYTE-1:9*`BYTE];   
    assign out7[1*`BYTE-1:0*`BYTE]   = in1[9*`BYTE-1:8*`BYTE];  

    assign out8[16*`BYTE-1:15*`BYTE] = in0[16*`BYTE-1:15*`BYTE];
    assign out8[15*`BYTE-1:14*`BYTE] = in0[15*`BYTE-1:14*`BYTE];
    assign out8[14*`BYTE-1:13*`BYTE] = in0[14*`BYTE-1:13*`BYTE];
    assign out8[13*`BYTE-1:12*`BYTE] = in0[13*`BYTE-1:12*`BYTE];
    assign out8[12*`BYTE-1:11*`BYTE] = in0[12*`BYTE-1:11*`BYTE];
    assign out8[11*`BYTE-1:10*`BYTE] = in0[11*`BYTE-1:10*`BYTE];
    assign out8[10*`BYTE-1:9*`BYTE]  = in0[10*`BYTE-1:9*`BYTE];
    assign out8[9*`BYTE-1:8*`BYTE]   = in1[16*`BYTE-1:15*`BYTE];
    assign out8[8*`BYTE-1:7*`BYTE]   = in1[15*`BYTE-1:14*`BYTE];  
    assign out8[7*`BYTE-1:6*`BYTE]   = in1[14*`BYTE-1:13*`BYTE]; 
    assign out8[6*`BYTE-1:5*`BYTE]   = in1[13*`BYTE-1:12*`BYTE]; 
    assign out8[5*`BYTE-1:4*`BYTE]   = in1[12*`BYTE-1:11*`BYTE];   
    assign out8[4*`BYTE-1:3*`BYTE]   = in1[11*`BYTE-1:10*`BYTE];   
    assign out8[3*`BYTE-1:2*`BYTE]   = in1[10*`BYTE-1:9*`BYTE];   
    assign out8[2*`BYTE-1:1*`BYTE]   = in1[9*`BYTE-1:8*`BYTE];   
    assign out8[1*`BYTE-1:0*`BYTE]   = in1[8*`BYTE-1:7*`BYTE];  

    assign out9[16*`BYTE-1:15*`BYTE] = in0[16*`BYTE-1:15*`BYTE];
    assign out9[15*`BYTE-1:14*`BYTE] = in0[15*`BYTE-1:14*`BYTE];
    assign out9[14*`BYTE-1:13*`BYTE] = in0[14*`BYTE-1:13*`BYTE];
    assign out9[13*`BYTE-1:12*`BYTE] = in0[13*`BYTE-1:12*`BYTE];
    assign out9[12*`BYTE-1:11*`BYTE] = in0[12*`BYTE-1:11*`BYTE];
    assign out9[11*`BYTE-1:10*`BYTE] = in0[11*`BYTE-1:10*`BYTE];
    assign out9[10*`BYTE-1:9*`BYTE]  = in1[16*`BYTE-1:15*`BYTE];
    assign out9[9*`BYTE-1:8*`BYTE]   = in1[15*`BYTE-1:14*`BYTE];
    assign out9[8*`BYTE-1:7*`BYTE]   = in1[14*`BYTE-1:13*`BYTE];  
    assign out9[7*`BYTE-1:6*`BYTE]   = in1[13*`BYTE-1:12*`BYTE]; 
    assign out9[6*`BYTE-1:5*`BYTE]   = in1[12*`BYTE-1:11*`BYTE]; 
    assign out9[5*`BYTE-1:4*`BYTE]   = in1[11*`BYTE-1:10*`BYTE];   
    assign out9[4*`BYTE-1:3*`BYTE]   = in1[10*`BYTE-1:9*`BYTE];   
    assign out9[3*`BYTE-1:2*`BYTE]   = in1[9*`BYTE-1:8*`BYTE];   
    assign out9[2*`BYTE-1:1*`BYTE]   = in1[8*`BYTE-1:7*`BYTE];   
    assign out9[1*`BYTE-1:0*`BYTE]   = in1[7*`BYTE-1:6*`BYTE];  

    assign outa[16*`BYTE-1:15*`BYTE] = in0[16*`BYTE-1:15*`BYTE];
    assign outa[15*`BYTE-1:14*`BYTE] = in0[15*`BYTE-1:14*`BYTE];
    assign outa[14*`BYTE-1:13*`BYTE] = in0[14*`BYTE-1:13*`BYTE];
    assign outa[13*`BYTE-1:12*`BYTE] = in0[13*`BYTE-1:12*`BYTE];
    assign outa[12*`BYTE-1:11*`BYTE] = in0[12*`BYTE-1:11*`BYTE];
    assign outa[11*`BYTE-1:10*`BYTE] = in1[16*`BYTE-1:15*`BYTE];
    assign outa[10*`BYTE-1:9*`BYTE]  = in1[15*`BYTE-1:14*`BYTE];
    assign outa[9*`BYTE-1:8*`BYTE]   = in1[14*`BYTE-1:13*`BYTE];
    assign outa[8*`BYTE-1:7*`BYTE]   = in1[13*`BYTE-1:12*`BYTE];
    assign outa[7*`BYTE-1:6*`BYTE]   = in1[12*`BYTE-1:11*`BYTE];
    assign outa[6*`BYTE-1:5*`BYTE]   = in1[11*`BYTE-1:10*`BYTE];
    assign outa[5*`BYTE-1:4*`BYTE]   = in1[10*`BYTE-1:9*`BYTE];   
    assign outa[4*`BYTE-1:3*`BYTE]   = in1[9*`BYTE-1:8*`BYTE];    
    assign outa[3*`BYTE-1:2*`BYTE]   = in1[8*`BYTE-1:7*`BYTE];    
    assign outa[2*`BYTE-1:1*`BYTE]   = in1[7*`BYTE-1:6*`BYTE];    
    assign outa[1*`BYTE-1:0*`BYTE]   = in1[6*`BYTE-1:5*`BYTE];   

    assign outb[16*`BYTE-1:15*`BYTE] = in0[16*`BYTE-1:15*`BYTE];
    assign outb[15*`BYTE-1:14*`BYTE] = in0[15*`BYTE-1:14*`BYTE];
    assign outb[14*`BYTE-1:13*`BYTE] = in0[14*`BYTE-1:13*`BYTE];
    assign outb[13*`BYTE-1:12*`BYTE] = in0[13*`BYTE-1:12*`BYTE];
    assign outb[12*`BYTE-1:11*`BYTE] = in1[16*`BYTE-1:15*`BYTE];
    assign outb[11*`BYTE-1:10*`BYTE] = in1[15*`BYTE-1:14*`BYTE];
    assign outb[10*`BYTE-1:9*`BYTE]  = in1[14*`BYTE-1:13*`BYTE];
    assign outb[9*`BYTE-1:8*`BYTE]   = in1[13*`BYTE-1:12*`BYTE];
    assign outb[8*`BYTE-1:7*`BYTE]   = in1[12*`BYTE-1:11*`BYTE];
    assign outb[7*`BYTE-1:6*`BYTE]   = in1[11*`BYTE-1:10*`BYTE];
    assign outb[6*`BYTE-1:5*`BYTE]   = in1[10*`BYTE-1:9*`BYTE]; 
    assign outb[5*`BYTE-1:4*`BYTE]   = in1[9*`BYTE-1:8*`BYTE];   
    assign outb[4*`BYTE-1:3*`BYTE]   = in1[8*`BYTE-1:7*`BYTE];   
    assign outb[3*`BYTE-1:2*`BYTE]   = in1[7*`BYTE-1:6*`BYTE];   
    assign outb[2*`BYTE-1:1*`BYTE]   = in1[6*`BYTE-1:5*`BYTE];   
    assign outb[1*`BYTE-1:0*`BYTE]   = in1[5*`BYTE-1:4*`BYTE];  

    assign outc[16*`BYTE-1:15*`BYTE] = in0[16*`BYTE-1:15*`BYTE];
    assign outc[15*`BYTE-1:14*`BYTE] = in0[15*`BYTE-1:14*`BYTE];
    assign outc[14*`BYTE-1:13*`BYTE] = in0[14*`BYTE-1:13*`BYTE];
    assign outc[13*`BYTE-1:12*`BYTE] = in1[16*`BYTE-1:15*`BYTE]; 
    assign outc[12*`BYTE-1:11*`BYTE] = in1[15*`BYTE-1:14*`BYTE];
    assign outc[11*`BYTE-1:10*`BYTE] = in1[14*`BYTE-1:13*`BYTE]; 
    assign outc[10*`BYTE-1:9*`BYTE]  = in1[13*`BYTE-1:12*`BYTE]; 
    assign outc[9*`BYTE-1:8*`BYTE]   = in1[12*`BYTE-1:11*`BYTE]; 
    assign outc[8*`BYTE-1:7*`BYTE]   = in1[11*`BYTE-1:10*`BYTE]; 
    assign outc[7*`BYTE-1:6*`BYTE]   = in1[10*`BYTE-1:9*`BYTE];  
    assign outc[6*`BYTE-1:5*`BYTE]   = in1[9*`BYTE-1:8*`BYTE];  
    assign outc[5*`BYTE-1:4*`BYTE]   = in1[8*`BYTE-1:7*`BYTE];   
    assign outc[4*`BYTE-1:3*`BYTE]   = in1[7*`BYTE-1:6*`BYTE];   
    assign outc[3*`BYTE-1:2*`BYTE]   = in1[6*`BYTE-1:5*`BYTE];   
    assign outc[2*`BYTE-1:1*`BYTE]   = in1[5*`BYTE-1:4*`BYTE];   
    assign outc[1*`BYTE-1:0*`BYTE]   = in1[4*`BYTE-1:3*`BYTE];   

    assign outd[16*`BYTE-1:15*`BYTE] = in0[16*`BYTE-1:15*`BYTE];
    assign outd[15*`BYTE-1:14*`BYTE] = in0[15*`BYTE-1:14*`BYTE];
    assign outd[14*`BYTE-1:13*`BYTE] = in1[16*`BYTE-1:15*`BYTE];
    assign outd[13*`BYTE-1:12*`BYTE] = in1[15*`BYTE-1:14*`BYTE]; 
    assign outd[12*`BYTE-1:11*`BYTE] = in1[14*`BYTE-1:13*`BYTE];
    assign outd[11*`BYTE-1:10*`BYTE] = in1[13*`BYTE-1:12*`BYTE]; 
    assign outd[10*`BYTE-1:9*`BYTE]  = in1[12*`BYTE-1:11*`BYTE]; 
    assign outd[9*`BYTE-1:8*`BYTE]   = in1[11*`BYTE-1:10*`BYTE]; 
    assign outd[8*`BYTE-1:7*`BYTE]   = in1[10*`BYTE-1:9*`BYTE];  
    assign outd[7*`BYTE-1:6*`BYTE]   = in1[9*`BYTE-1:8*`BYTE];   
    assign outd[6*`BYTE-1:5*`BYTE]   = in1[8*`BYTE-1:7*`BYTE];  
    assign outd[5*`BYTE-1:4*`BYTE]   = in1[7*`BYTE-1:6*`BYTE];   
    assign outd[4*`BYTE-1:3*`BYTE]   = in1[6*`BYTE-1:5*`BYTE];   
    assign outd[3*`BYTE-1:2*`BYTE]   = in1[5*`BYTE-1:4*`BYTE];   
    assign outd[2*`BYTE-1:1*`BYTE]   = in1[4*`BYTE-1:3*`BYTE];   
    assign outd[1*`BYTE-1:0*`BYTE]   = in1[3*`BYTE-1:2*`BYTE];   

    assign oute[16*`BYTE-1:15*`BYTE] = in0[16*`BYTE-1:15*`BYTE];
    assign oute[15*`BYTE-1:14*`BYTE] = in1[16*`BYTE-1:15*`BYTE];
    assign oute[14*`BYTE-1:13*`BYTE] = in1[15*`BYTE-1:14*`BYTE];
    assign oute[13*`BYTE-1:12*`BYTE] = in1[14*`BYTE-1:13*`BYTE]; 
    assign oute[12*`BYTE-1:11*`BYTE] = in1[13*`BYTE-1:12*`BYTE];
    assign oute[11*`BYTE-1:10*`BYTE] = in1[12*`BYTE-1:11*`BYTE]; 
    assign oute[10*`BYTE-1:9*`BYTE]  = in1[11*`BYTE-1:10*`BYTE]; 
    assign oute[9*`BYTE-1:8*`BYTE]   = in1[10*`BYTE-1:9*`BYTE];  
    assign oute[8*`BYTE-1:7*`BYTE]   = in1[9*`BYTE-1:8*`BYTE];  
    assign oute[7*`BYTE-1:6*`BYTE]   = in1[8*`BYTE-1:7*`BYTE];   
    assign oute[6*`BYTE-1:5*`BYTE]   = in1[7*`BYTE-1:6*`BYTE];  
    assign oute[5*`BYTE-1:4*`BYTE]   = in1[6*`BYTE-1:5*`BYTE];   
    assign oute[4*`BYTE-1:3*`BYTE]   = in1[5*`BYTE-1:4*`BYTE];   
    assign oute[3*`BYTE-1:2*`BYTE]   = in1[4*`BYTE-1:3*`BYTE];   
    assign oute[2*`BYTE-1:1*`BYTE]   = in1[3*`BYTE-1:2*`BYTE];   
    assign oute[1*`BYTE-1:0*`BYTE]   = in1[2*`BYTE-1:1*`BYTE];   

    // // delay < adder
    `uselib file=/misc/collaboration/382nGPS/382nG6/yjl/yjl_gates.v
    mux16_128 mux_out(
        out, 
        outf,
        out1,
        out2,
        out3,
        out4,
        out5,
        out6,
        out7,
        out8,
        out9,
        outa,
        outb,
        outc,
        outd,
        oute,
        out0,
        sel[0],
        sel[1],
        sel[2],
        sel[3]
    );




endmodule
