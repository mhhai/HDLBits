module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    wire [99:0] con;
    bcd_fadd uut1(a[3:0], b[3:0], cin, con[0], sum[3:0]);
   
    genvar i;
    generate
        for(i = 1; i <= 99; i = i + 1)
            begin: bcd_add
                bcd_fadd uut(a[(i + 1) * 4 - 1 : i * 4], b[(i + 1) * 4 - 1 : i * 4], con[i - 1], con[i] , sum[(i + 1) * 4 - 1 : i * 4]);
            end
    endgenerate
    assign cout = con[99];
endmodule
