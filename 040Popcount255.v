//版本1
module top_module( 
    input [254:0] in,
    output reg [7:0] out );
    //这里如果没有时序，这些东西怎么相加
    integer k;
    always@(*)
        begin
            out = 8'b0000_0000;
            for(k = 0; k < 255; k = k + 1)
                begin
                    if(in[k] == 1)
                        out = out + 8'd1;
                    else 
                        out = out + 8'd0;
                end
        end
endmodule
//版本2
module top_module( 
    input [254:0] in,
    output reg [7:0] out );
    //这里如果没有时序，这些东西怎么相加
    integer k;
    always@(*)
        begin
            out = 8'b0000_0000;
            for(k = 0; k < 255; k = k + 1)
                out = out + in[k];  //in[k]是一位，两数相加的位宽由最大操作数的位宽决定，溢不溢出取决于左边的操作数位宽是否大于右边表达式计算的位宽
        end
endmodule
