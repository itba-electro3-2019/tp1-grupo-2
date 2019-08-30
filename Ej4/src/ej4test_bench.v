 module ej4_tb();
 
  reg [3:0] a;
  wire [3:0] out;
 
  ej4circuit dut(a, out);
 
  initial begin



    a = 'b0000;
    $display("Input values are: %b", a);
    #1
    $display("Output value is: %b", out);
    #50

    a = 'b0001;
    $display("Input values are: %b", a);
    #50
    $display("Output value is: %b", out);
    #50

    a = 'b0010;
    $display("Input values are: %b", a);
    #1
    $display("Output value is: %b", out);
    #50

    a = 'b0011;
    $display("Input values are: %b", a);
    #50
    $display("Output value is: %b", out);
    #50

    a = 'b0100;
    $display("Input values are: %b", a);
    #1
    $display("Output value is: %b", out);
    #50

    a = 'b0101;
    $display("Input values are: %b", a);
    #50
    $display("Output value is: %b", out);
    #50

    a = 'b0110;
    $display("Input values are: %b", a);
    #1
    $display("Output value is: %b", out);
    #50

    a = 'b0111;
    $display("Input values are: %b", a);
    #50
    $display("Output value is: %b", out);
    #50

    a = 'b1000;
    $display("Input values are: %b", a);
    #1
    $display("Output value is: %b", out);
    #50

    a = 'b1001;
    $display("Input values are: %b", a);
    #50
    $display("Output value is: %b", out);
    #50

    a = 'b1010;
    $display("Input values are: %b", a);
    #50
    $display("Output value is: %b", out);
    #50

    a = 'b1011;
    $display("Input values are: %b", a);
    #1
    $display("Output value is: %b", out);
    #50

    a = 'b1100;
    $display("Input values are: %b", a);
    #50
    $display("Output value is: %b", out);
    #50

    a = 'b1101;
    $display("Input values are: %b", a);
    #50
    $display("Output value is: %b", out);
    #50

    a = 'b1110;
    $display("Input values are: %b", a);
    #1
    $display("Output value is: %b", out);
    #50

    a = 'b1111;
    $display("Input values are: %b", a);
    #50
    $display("Output value is: %b", out);
    #50

    $finish;
  end
 
endmodule


