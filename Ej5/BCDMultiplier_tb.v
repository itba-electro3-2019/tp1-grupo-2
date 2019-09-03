module main;
    reg [0:3]num1, num2;    //se inicializa con [0:3] en vez de [3:0] para que numi[0] sea el MSBit
    wire [0:7]res;
    BCDMultiplier dut(num1, num2, res);
    initial
        begin
            /*Casos validos*/
            num1 = 0;
            num2 = 3;
            #2;             //linea muy importante! delay le da tiempo al bloque always de detectar los cambios
            num1 = 5;       
            num2 = 0;
            #2;
            num1 = 9;
            num2 = 4;
            #2;
            num1 = 2;
            num2 = 7;
            #2;
            /*Casos invalidos*/
            num1 = 13;
            num2 = 3;
            #2;
            num1 = 3;
            num2 = 14;
            #2;
            num1 = 15;
            num2 = 10;
            #2;
            $finish;
        end

    always @(res) 
        begin
            $display("Trying operation %d * %d...", num1, num2);
            if( (res[0:3] == 'hf) || (res[4:7] == 'hf) ) //invalid case if module puts and F in any digit
            begin
                $display("Error: Invalid input detected");
                if (res[0:3] == 'hf)
                begin
                    $display("First multiplier error: %d is not a valid one digit BCD number", num1);
                end
                if (res[4:7] == 'hf)    //doesn't use 'else if' because there can be an error in both digits
                begin
                    $display("Second multiplier error: %d is not a valid one digit BCD number", num2);
                end    
            end
            else    //valid case
            begin
                $display("Valid input!");
                $display("%d * %d = %h", num1, num2, res);
            end
        end    
    
endmodule    