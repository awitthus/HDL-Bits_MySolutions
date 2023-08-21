module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] sum_0,sum_1;
    wire sel;
    
    add16 a0 (.a(a[15:0] ),.b(b[15:0] ),.cin(1'b0),.sum(sum[15:0] ),.cout(sel));
    add16 a1 (.a(a[31:16]),.b(b[31:16]),.cin(1'b0),.sum(sum_0));
    add16 a2 (.a(a[31:16]),.b(b[31:16]),.cin(1'b1),.sum(sum_1));
    
    always @ (*) begin
        case(sel)
            1'b0 : sum[31:16] <= sum_0;
            1'b1 : sum[31:16] <= sum_1;
        endcase
    end
endmodule