/* BCDMultiplier: 
    Recibe: 2 números BCD de un dígito en forma de arreglo(4bits)
        *[0:3]BCDNumi indica que BCDNumi[0] es el MSBit
    Devuelve: Un número BCD de dos dígitos (8bits). En caso de que uno de los números recibidos no 
                sea un número BCD válido, devuelve 0xF0 si el error estuvo en BCDNum1, 0x0F si estuvo
                en BCDNum2 y 0xFF si estuvo en ambos números. 
    Función: Multiplica los números que recibe. BCDRes=BCDNum1*BCDNum2 */
module BCDMultiplier(BCDNum1, BCDNum2, BCDRes);
    
    input [0:3]BCDNum1, BCDNum2;
    output [0:7]BCDRes;
    reg unsigned [0:6]binRes;    //aqui se guardara el resultado en binario de la multiplicacion
    reg [0:3] digit1, digit2;
    assign BCDRes = {digit1, digit2} ;    //se toma como primer digito las decenas y segundo digito las unidades
    wire [0:1]validation;
    BCDValidator val1(BCDNum1, validation[0]);  //validación de la entrada, validation == [0,0] si la entrada es valida
    BCDValidator val2(BCDNum2, validation[1]);
    always @(BCDNum1,BCDNum2)      
        begin
            #1;
            digit1 = 0;
            digit2 = 0;
            if(validation[0])       //si el primer número es invalido
                digit1 = 'hf;   
            if(validation[1])       //si el segundo número es invalido
                digit2 = 'hf;
            if ( validation == 'b00 )  //si ambos números son válidos
            begin    
                binRes = BCDNum1*BCDNum2;
                digit1 = (binRes - binRes%10) / 10;
                digit2 = binRes % 10;    
            end 
        end
endmodule


/*
    Decisiones tomadas:
        1. Se podría haber hecho la entrada para números BCD de n dígitos, pero hubiera implicado complicar
            demasiado las cosas ya que haría falta antes del multiplicador, un conversor de BCD a binario
            que para el caso de 1 dígito no es necesario.
        2. Los módulos armados no son ni muy complicados ni básicos en exceso. Por ejemplo, se podría haber
            hecho todo en un sólo módulo o para sumar(...)    
        3. El módulo de binary2BCD devuelve 3 dígitos porque era lo mismo hacerlo para 2 o 3, mejor tener mas generalidad
        4. Los nombres de los parametros de los modulos tienen explicitamente su codificacion (BCD, 
            binario) para mayor claridad.

*/