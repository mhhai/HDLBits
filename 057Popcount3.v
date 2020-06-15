module top_module( 
    input [2:0] in,
    output reg [1:0] out );
    //使用一个for循环，时间复杂度0(n)
    integer i;
    always@(*)
        begin
            out = 0;  //这个可以是0  该语句一定要放到begin后面
            for(i = 0; i < 3; i = i + 1)
                begin
                    if(in[i] == 1'b1)
                        out = out + 1'b1;
                    else
                        out = out;
                end
        end
 
endmodule