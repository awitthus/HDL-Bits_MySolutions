module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    
    wire out1, out2, out3, out4;
    
    assign out1 = p2a && p2b;
    assign out2 = p1a && p1b && p1c;
    assign out3 = p2c && p2d;
    assign out4 = p1f && p1e && p1d;
    
    assign p2y = out1 || out3;
    assign p1y = out2 || out4;


endmodule

