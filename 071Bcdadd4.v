module top_module( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
    wire w1, w2, w3;
    bcd_fadd u1(a[3:0], b[3:0], cin, w1, sum[3:0]);
    bcd_fadd u2(a[7:4], b[7:4], w1, w2, sum[7:4]);
    bcd_fadd u3(a[11:8], b[11:8], w2, w3, sum[11:8]);
    bcd_fadd u4(a[15:12], b[15:12], w3, cout, sum[15:12]);
endmodule
