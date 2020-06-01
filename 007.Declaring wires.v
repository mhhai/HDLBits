`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    wire temp1;
    wire temp2;
    assign out = (a & b) | (c & d);
    assign out_n = ~((a & b) | (c & d));
endmodule