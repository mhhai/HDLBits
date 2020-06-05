module top_module ( input clk, input d, output q );
	wire out1, out2;
    my_dff uut1(
        .clk(clk),
        .d(d),
        .q(out1)
    );
    my_dff uut2(
        .clk(clk),
        .d(out1),
        .q(out2)
    );
    my_dff uut3(
        .clk(clk),
        .d(out2),
        .q(q)
    );
    
endmodule