module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
//第一个是一个半加器
    full_adder uut1(a[0], b[0], cin, cout[0], sum[0]);
genvar i;   //只能在generate中使用
    generate        
        for(i = 1; i <=99; i = i + 1)
            begin : add   //这个标签用来表示generate循环的实例名称
                full_adder uut(a[i], b[i], cout[i - 1], cout[i], sum[i]);
            end
    endgenerate
endmodule

module full_adder(input a, input b, input cin, output cout, output sum);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);
    
endmodule