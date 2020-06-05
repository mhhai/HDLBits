//很有意义的一道题
module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0] c;
    wire car;
    assign c = b ^ {32{sub}};
	add16 uut1
    (
        .a(a[15:0]),
        .b(c[15:0]),
        .cin(sub),
        .sum(sum[15:0]),
        .cout(car)
    );
    add16 uut2
    (
        .a(a[31:16]),
        .b(c[31:16]),
        .cin(car),
        .sum(sum[31:16]),
        .cout()
    );
endmodule