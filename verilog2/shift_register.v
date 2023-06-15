module shift_register(serial_in, CLK, rst, serial_out);
    input serial_in, CLK, rst;
    output serial_out;

    // Your code goes here.  DO NOT change anything that is already given! Otherwise, you will not be able to pass the tests!
    wire w1;
    wire w2;
    wire w3;
    
    D_ff D1(serial_in, CLK, rst,w1);
    D_ff D2(w1, CLK, rst, w2);
    D_ff D3(w2,CLK, rst, w3);
    D_ff D4(w3,CLK, rst, serial_out);
endmodule