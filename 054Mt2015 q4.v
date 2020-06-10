module top_module (input x, input y, output z);
	wire out_A1, out_A2, out_B1, out_B2;  //Ĭ�϶���1λ�����ָ����λ����������е�������������ͬ��λ��
    //�ṹ��ģ  ʵ����
    A uut1(x, y, out_A1);
    A uut2(x, y, out_A2);
    B uut3(x, y, out_B1);
    B uut4(x, y, out_B2);
    
    assign z = (out_A1|out_B1)^(out_A2 & out_B2);
endmodule

module A (input x, input y, output z);
    assign z = (x ^ y) & x;
endmodule

module B ( input x, input y, output z );
    assign z = x ~^ y;
endmodule