module top_module ( input clk, input d, output q );
    
    wire out0, out1;
    
    my_dff d0 (.clk(clk), .d(d),    .q(out0));
    my_dff d1 (.clk(clk), .d(out0), .q(out1));
    my_dff d2 (.clk(clk), .d(out1), .q(q   ));

endmodule