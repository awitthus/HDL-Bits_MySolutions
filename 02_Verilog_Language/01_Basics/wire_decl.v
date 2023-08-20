`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
    wire a_b_out, c_d_out;
    
    assign a_b_out = a & b;
    assign c_d_out = c & d;
    
    assign out = a_b_out | c_d_out;
    assign out_n = ~out;

endmodule

