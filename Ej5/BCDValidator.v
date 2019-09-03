/* BCDValidator:
    Recibe: Un numero BCD de un dígito en forma de arreglo
    Devuelve: out = 0 si el número es válido, out = 1 si no lo se
    Función: verifica que el número sea válido para el formato BCD, es decir, BCDNum <= 9

*/
module BCDValidator(BCDNum, out);
    input [0:3]BCDNum;
    output out;
    assign out = (BCDNum[0]&&BCDNum[1]) || (BCDNum[0]&&BCDNum[2]);  //out = 1 si BCDNum > 9. Se podría haber escrito también BCDNum > 9.          
endmodule