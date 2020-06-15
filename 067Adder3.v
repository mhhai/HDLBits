module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
	//wire w1, w2;
    add1 u1(a[0], b[0], cin, cout[0], sum[0]);
    add1 u2(a[1], b[1], cout[0], cout[1], sum[1]);
    add1 u3(a[2], b[2], cout[1], cout[2], sum[2]);
endmodule

module add1(input a, input b, input cin, output cout, output sum);
    assign cout = (a & b) | (a & cin) | (b & cin);
    assign sum = a ^ b ^ cin;
    
endmodule