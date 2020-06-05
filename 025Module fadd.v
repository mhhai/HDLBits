//版本1
module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
	wire cout;
	add16 uut1
    (
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(1'b0),
        .sum(sum[15:0]),
        .cout(cout)
    );
    add16 uut2
    (
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(cout),
        .sum(sum[31:16]),
        .cout()
    );
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here
    wire [1:0]  temp;
    assign temp = a + b + cin;
    assign sum = temp[0];
    assign cout = temp[1];
endmodule

//版本2
//这道题其实设计一个全加器
//不考虑进位的一位加法器叫半加器
//考虑进位的一位加法器加全加器
//根据半加器和全加器的真值表可以得到它们的逻辑表达式
//半加器：
//s = a ^ b;
//co = a & b;
//全加器：
//s = a ^ b ^ car
//co = (a & b) | (a & car) | (b & car) 
module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
	wire cout;
	add16 uut1
    (
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(1'b0),
        .sum(sum[15:0]),
        .cout(cout)
    );
    add16 uut2
    (
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(cout),
        .sum(sum[31:16]),
        .cout()
    );
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);
endmodule