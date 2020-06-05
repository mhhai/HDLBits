//版本1
module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] sum1, sum2;
    wire cout1, cout2;
    wire sel;
    add16 uut1(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1'b0),
        .sum(sum1),
        .cout(cout1)
    );
    add16 uut2(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1'b1),
        .sum(sum2),
        .cout(cout2)
    );
    add16 uut3(
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(1'b0),
        .sum(sum[15:0]),
        .cout(sel)
    );
    always@(*)
        case(sel)
            0 : sum[31:16] = sum1;
            1 : sum[31:16] = sum2;
        endcase
endmodule
//版本2
module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] sum1, sum2;
    //wire cout1, cout2;
    wire sel;
    //cout端口可以不用连
    add16 uut1(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1'b0),
        .sum(sum1),
        .cout()
    );
    add16 uut2(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1'b1),
        .sum(sum2),
        .cout()
    );
    add16 uut3(
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(1'b0),
        .sum(sum[15:0]),
        .cout(sel)
    );
   //使用数据流建模
    assign sum[31:16] = sel == 1 ? sum2 :sum1;
endmodule
