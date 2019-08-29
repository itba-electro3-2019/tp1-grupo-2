module main;
    reg [0:3]num1, num2;
    wire [0:7]res;
    BCDMultiplier dut(num1, num2, res);
    integer i,j;
    initial
        begin
            //$monitor("Out has changed! %d * %d = %h", num1,  num2, res);       
            for(i = 0 ; i < 10 ; i = i + 1)
                begin
                   for(j = 0 ; j < 10 ; j = j + 1)
                        begin
                            num1 = i;
                            num2 = j;
                            $display("Out has changed! %d * %d = %h", num1,  num2, res);
                        end     
                end         
            $finish;
        end
    
endmodule    