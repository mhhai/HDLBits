module top_module (
    input clk,
    input resetn,
    input [1:0] byteena,
    input [15:0] d,
    output [15:0] q
);
    always@(posedge clk)
        begin
            if(~resetn)
                q <= 16'd0;
            else if(byteena[0] == 1'b1 || byteena[0] == 1'b1)
                begin
                    if(byteena[1] == 1'b1)
                        q[15:8] <= d[15:8];
                    if(byteena[0] == 1'b1)
                        q[7:0] <= d[7:0];
                end
        end
endmodule