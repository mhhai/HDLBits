//主要练习vector的使用
module top_module( 
    input [3:0] in,
    output [2:0] out_both,
    output [3:1] out_any,
    output [3:0] out_different );
    integer i, j, k;
    always@(*)
        begin
            for(int i = 0; i < 3; i = i + 1)
                out_both[i] = (in[i] == 1 && in[i + 1] == 1) ? 1 : 0;
        end
    always@(*)
        begin
            for(int j = 3; j > 0; j = j - 1)
                out_any[j] = (in[j] == 1 || in[j - 1] == 1) ? 1 : 0;
        end
    always@(*)
        begin
            for(int k = 0; k < 3; k = k + 1)
                out_different[k] = (in[k] != in[k + 1]) ? 1 : 0;
            out_different[3] = in[3] != in[0] ? 1 : 0;
        end
endmodule