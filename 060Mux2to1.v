module top_module( 
    input a, b, sel,
    output out ); 
assign out = sel == 0 ? a : b;
endmodule