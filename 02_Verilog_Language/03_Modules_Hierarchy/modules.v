module top_module ( input a, input b, output out );
    // By position
    // mod_a m1 (a, b, out)


    // By name
    mod_a m1 (.in1(a), .in2(b), .out(out));
endmodule