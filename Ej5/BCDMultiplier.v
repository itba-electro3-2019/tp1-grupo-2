/* BCDMultiplier: 
    Recibe: 2 números BCD de un dígito en forma de arreglo(4bits)
        *[0:3]BCDNumi indica que BCDNumi[0] es el MSBit
    Devuelve: En BCDRes un número BCD de dos dígitos (8bits), que será valido si validation = [0,0]. 
                Si el primer número no es valido, validation[0] = 1
                Si el segundo número no es válido, validation[1] = 1
    Función: Si son válidos, multiplica los números que recibe. BCDRes=BCDNum1*BCDNum2 */
module BCDMultiplier(BCDNum1, BCDNum2, BCDRes, validation);
    
    input [0:3]BCDNum1, BCDNum2;
    output [0:7]BCDRes;
    output [0:1] validation;
    reg unsigned [0:6]binRes;    //aqui se guardara el resultado en binario de la multiplicacion
    reg [0:3] digit1, digit2;
    assign BCDRes = {digit1, digit2} ;    //se toma como primer digito las decenas y segundo digito las unidades
    BCDValidator val1(BCDNum1, validation[0]);  //validación de la entrada, validation == [0,0] si la entrada es valida
    BCDValidator val2(BCDNum2, validation[1]);    
    always @(BCDNum1,BCDNum2)      
        begin
            binRes = BCDNum1*BCDNum2;
            digit1 = (binRes - binRes%10) / 10;
            digit2 = binRes % 10;    
        end
endmodule