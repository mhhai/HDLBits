//�汾1
module top_module( 
    input [254:0] in,
    output reg [7:0] out );
    //�������û��ʱ����Щ������ô���
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
//�汾2
module top_module( 
    input [254:0] in,
    output reg [7:0] out );
    //�������û��ʱ����Щ������ô���
    integer k;
    always@(*)
        begin
            out = 8'b0000_0000;
            for(k = 0; k < 255; k = k + 1)
                out = out + in[k];  //in[k]��һλ��������ӵ�λ��������������λ��������粻���ȡ������ߵĲ�����λ���Ƿ�����ұ߱��ʽ�����λ��
        end
endmodule
