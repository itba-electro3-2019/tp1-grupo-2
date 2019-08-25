module main;
    reg [0:3]num1, num2;    //se inicializa con [0:3] en vez de [3:0] para que numi[0] sea el MSBit
    wire [0:7]res;
    wire [0:1]validation;
    
    BCDMultiplier dut(num1, num2, res, validation);
    
    initial
    begin
        /*Casos validos*/
        num1 = 0;       //se podrían haber hecho más casos con un for, pero se consideran suficientes para ver los distintos casos
        num2 = 3;
        #1;             //linea muy importante! delay le da tiempo al bloque always de detectar los cambios
        dispRes();
        num1 = 9;
        num2 = 4;
        #1;
        dispRes();
        num1 = 2;
        num2 = 7;
        #1;
        dispRes();
        /*Casos invalidos*/
        num1 = 13;
        num2 = 3;
        #1;
        dispRes();
        num1 = 3;
        num2 = 14;
        #1;
        dispRes();
        num1 = 15;
        num2 = 10;
        #1;
        dispRes();
        $finish;
    end

    task dispRes;
        begin
            $display("Trying operation %d * %d...", num1, num2);    //se podría haber hecho la validación en un for y escribir esto una sola vez
            if( validation == 'b00 ) //caso valido si validation = [0,0]
            begin
                $display("Valid input!");
                $display("%d * %d = %h", num1, num2, res);
            end
            else    //caso invalido
            begin
                $display("Error: Invalid input detected");
                if (validation[0])
                begin
                    $display("First multiplier error: %d is not a valid one digit BCD number", num1);
                end
                if (validation[1])    //no se usa 'else if' porque puede haber un error en ambos digitos
                begin
                    $display("Second multiplier error: %d is not a valid one digit BCD number", num2);
                end                    
            end
        end        
    endtask

endmodule    