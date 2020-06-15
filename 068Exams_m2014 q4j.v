module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    wire w1, w2, w3;
    add1 u1(x[0], y[0], 1'b0, w1, sum[0]);
    add1 u2(x[1], y[1], w1, w2, sum[1]);
    add1 u3(x[2], y[2], w2, w3, sum[2]);
    add1 u4(x[3], y[3], w3, sum[4], sum[3]);
endmodule

module add1(input a, input b, input cin, output cout, output sum);
    assign cout = (a & b) | (a & cin) | (b & cin);
    assign sum = a ^ b ^ cin;
    
endmodule