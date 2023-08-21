module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0] b_;
    wire        cout;
    
    assign b_ = b ^ {32{sub}};
    
    add16 a0 (.a(a[15:0] ),.b(b_[15:0] ),.cin(sub),.sum(sum[15:0] ),.cout(cout));
    add16 a1 (.a(a[31:16]),.b(b_[31:16]),.cin(cout),.sum(sum[31:16]));

endmodule