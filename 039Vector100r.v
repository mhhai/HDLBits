//这个for循环可以生成RTL视图，但是不能实例化
module top_module( 
    input [99:0] in,
    output reg [99:0] out //这里数据类型是reg，否则会报错
);
//reg [99:0] out;
//使用for循环\
    always@(*)
        begin
	integer k;
    for(k = 0; k < 100; k = k + 1)
        out[k] = in[99 - k];
        end
endmodule
