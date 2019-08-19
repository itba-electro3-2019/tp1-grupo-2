/*Módulo principal: 
    Recibe: 2 números BCD de un dígito en forma de arreglo(4bits)
        *X[0:3] indica que X[0] es el MSBit
    Devuelve: Un número BCD de dos dígitos (8bits)
    Función: Multiplica los números que recibe. Z=X*Y */
module BCDMultiplier(input [0:3]X, [0:3]Y, output [0:7]Z);

endmodule

/*Convierte un número binario entre 0 y 1100011(99) a BCD
  La entrada es de 7 bits debido a que, en caso de tener 8, el octavo nunca se iba a usar por ser
  menor a 99
*/
module BinaryToBCD(input [0:6]X, output [0:7]Y) 

endmodule

/* 
    Recibe: 2 números binarios de un nybble
    Devuelve: 1 número binario de un byte
    Función: Multiplica los números que recibe. Z=X*Y    
*/
module BinaryMultiplier(input [0:3]X, [0:3]Y, output [0:8]Z)


endmodule