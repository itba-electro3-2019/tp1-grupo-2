/*Módulo principal: 
    Recibe: 2 números BCD de un dígito en forma de arreglo(4bits)
        *[0:3]BCDNumi indica que BCDNumi[0] es el MSBit
    Devuelve: Un número BCD de dos dígitos (8bits). En caso de que uno de los números recibidos no 
                sea un número BCD válido, devuelve 0xF0 si el error estuvo en BCDNum1, 0x0F si estuvo
                en BCDNum2 y 0xFF si estuvo en ambos números. 
    Función: Multiplica los números que recibe. BCDRes=BCDNum1*BCDNum2 */
module BCDMultiplier(BCDNum1, BCDNum2, BCDRes);
    
    input [0:3]BCDNum1, BCDNum2;
    output [0:7]BCDRes;
    reg unsigned [0:7]binRes;    //aqui se guardara el resultado en binario de la multiplicacion
    //reg digit1, digit2;
    wire [0:11]bcdAux;  
    always @(BCDNum1,BCDNum2)
        begin
            binRes = BCDNum1*BCDNum2;
        end
    //assign binRes = BCDNum1*BCDNum2;   //el resultado será de máximo 7 bits
    Binary2BCD converter(binRes,bcdAux);
    assign BCDRes = bcdAux[3:11];

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