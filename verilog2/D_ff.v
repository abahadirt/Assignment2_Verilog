module D_ff(D, clk, reset, Q);
    input D;
    input clk;
    input reset;
    output reg Q;

    // Your code goes here.  DO NOT change anything that is already given! Otherwise, you will not be able to pass the tests!
    always @(posedge clk) 
    begin
        if(reset==1'b1)
            Q <= 1'b0; 
        else 
            Q <= D; 
    end 
endmodule 