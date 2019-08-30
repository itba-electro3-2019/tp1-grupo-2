module main;
    reg [0:3]num1, num2;
    wire [0:7]res;
    BCDMultiplier dut(num1, num2, res);
    integer i,j;
    reg [0:3] dig1, dig2;
    initial
        begin
            //$monitor("Out has changed! %d * %d = %h", num1,  num2, res);       
            for(i = 0 ; i < 16 ; i = i + 1)
                begin
                   for(j = 0 ; j < 16 ; j = j + 1)
                        begin
                            num1 = i;
                            num2 = j;
                            //$display("Input: %d * %d", num1,  num2);
                            #1;
                        end     
                end         
            $finish;
        end

    always @(res) begin
        //$monitor("Out: %h", res );
        $monitor("%d * %d = %h", num1, num2, res);
    end    
    
endmodule    