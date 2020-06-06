//������������˵�״̬������������˵�״̬�仯���仯��
//ֻ�����������ź�ʱ�����״̬�����浽�����ֱ����һ�������źš�
// synthesis verilog_input_version verilog_2001
module top_module (
    input      cpu_overheated,
    output reg shut_off_computer,  //����ʱ��reg���ɴ�����������ʱ��reg���ǼĴ���
    input      arrived,
    input      gas_tank_empty,
    output reg keep_driving  ); //

    always @(*) begin
        if (cpu_overheated)
           shut_off_computer = 1;
        else
           shut_off_computer = 0;
    end

    always @(*) begin
        if (~arrived)
           keep_driving = ~gas_tank_empty;
        else
           keep_driving = ~arrived;
    end

endmodule
