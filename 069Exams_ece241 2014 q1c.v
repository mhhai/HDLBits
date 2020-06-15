module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); //
 
    assign s = a + b;
    //负负相减这里有点没看懂
    //这里的二进制补码是否有一位是符号位
    assign overflow = ( a[7] && b[7] && ~s[7] ) || (~a[7] && ~b[7] && s[7]);
    // assign s = ...
    // assign overflow = ...

endmodule
