//���forѭ����������RTL��ͼ�����ǲ���ʵ����
module top_module( 
    input [99:0] in,
    output reg [99:0] out //��������������reg������ᱨ��
);
//reg [99:0] out;
//ʹ��forѭ��\
    always@(*)
        begin
	integer k;
    for(k = 0; k < 100; k = k + 1)
        out[k] = in[99 - k];
        end
endmodule
