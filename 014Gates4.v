module top_module( 
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
);
    //使用缩减运算符直接对操作数进行相应的运算
    assign out_and = &in;
    assign out_or = |in;
    assign out_xor = ^in;
endmodule