module serial_adder(
    input serial_input_A,
    input serial_input_B,
    input clock,
    input shift_control,
    input reset,
    output serial_sum_out,
    output carry_out
);
    
    // Your code goes here.  DO NOT change anything that is already given! Otherwise, you will not be able to pass the tests!
    wire clk;
    wire x;
    wire y;
    
    wire z;
    wire m;
    wire n;

    assign clk = shift_control & clock;
    assign z = x & y;
    assign m = ~(x | y);
    assign n = (x ^ y) ^ carry_out;
    shift_register A(serial_input_A,clk,reset,x);
    shift_register B(serial_input_B,clk,reset,y);
    JK_ff j1(z,m,clk,reset,carry_out);
    shift_register Sum(n,clk,reset,serial_sum_out);
endmodule