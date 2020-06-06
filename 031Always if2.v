//锁存器：输出端的状态不会随着输入端的状态变化而变化。
//只有在有锁存信号时输入的状态被保存到输出，直到下一个锁存信号。
// synthesis verilog_input_version verilog_2001
module top_module (
    input      cpu_overheated,
    output reg shut_off_computer,  //带有时钟reg会变成触发器，不带时钟reg就是寄存器
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
