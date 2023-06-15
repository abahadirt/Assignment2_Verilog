`timescale 1ns/1ps

module serial_adder_tb;
    
    reg serial_input_A;
    reg serial_input_B;
    reg clock;
    reg shift_control;
    reg reset;
    wire serial_sum_out;
    wire carry_out;

    serial_adder UUT(serial_input_A, serial_input_B, clock, shift_control, reset, serial_sum_out, carry_out);

    initial begin
        clock = 1'b0;
        forever begin
            #5;
            clock = ~clock;
        end
    end   
    
    initial begin
        $dumpfile("result.vcd");
        $dumpvars;
        
        // Your code here.
    serial_input_A= 4'b0001;
    serial_input_B=1110;
    #200
    serial_input_A= 4'b0101;
    serial_input_B=4'b0011;
    #200
    serial_input_A= 4'b1111;
    serial_input_B=4'b0001;
    #200
    serial_input_A= 4'b1111;
    serial_input_B=1111;
    #200
        $finish;
    end

endmodule