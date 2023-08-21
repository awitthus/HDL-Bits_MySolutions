module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] out0, out1, out2;
    
    my_dff8 d0(.clk(clk),.d(d   ),.q(out0));
    my_dff8 d1(.clk(clk),.d(out0),.q(out1));
    my_dff8 d2(.clk(clk),.d(out1),.q(out2));
    
    // 4:1 MUX
    always @ (*) begin
        case(sel)
            2'b00 : q <= d;
            2'b01 : q <= out0;
            2'b10 : q <= out1;
            2'b11 : q <= out2;
        endcase
    end 
endmodule