module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//
    wire [7:0] temp1;
    wire [7:0] temp2;
    // assign intermediate_result1 = compare? true: false;
    assign temp1 = a < b ? a : b;
    assign temp2 = temp1 < c ? temp1 : c;
    assign min = temp2 < d ? temp2 : d;

endmodule