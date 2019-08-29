/*Convierte un número binario a BCD
    Recibe: Número binario de 8 bits
    Devuelve: Número de N_BCD_DIG_OUT (3) dígitos BCD
*/
module Binary2BCD(BinNum, BCDNum);

    parameter N_BCD_DIG_OUT = 3, N_BITS_OUT = 12, N_BITS_IN = 8;
    input [0:N_BITS_IN - 1] BinNum;
    output [0:N_BITS_OUT - 1] BCDNum;
    reg [0 : N_BITS_IN + N_BITS_OUT - 1] doubleDabbReg;    //será utilizado el algoritmo doubleDabble https://en.wikipedia.org/wiki/Double_dabble
    integer i, j;
    integer num;
    always @ (BinNum)
        begin
            doubleDabbReg = BinNum;
            //{ N_BITS_OUT{'b0}, BinNum };  //el algoritmo comienza con el número BCD en 0 y el número binario juntos en un registro
            for (i = 0 ; i < N_BITS_IN - 1; i = i + 1)
                begin
                    doubleDabbReg = doubleDabbReg << 1;     //shift a la izquierda
                    for (j = 0 ; j < N_BCD_DIG_OUT ; j = j + 1)
                        begin
                            //num = doubleDabbReg[4*j+:4];     //pasa lugar del dígito j BCD a un número para poder operar
                            num = doubleDabbReg[4*j+:4];     //pasa lugar del dígito j BCD a un número para poder operar
                            if(num >= 5)
                            begin
                                num = num + 3;
                                //doubleDabbReg[4*j+:4] = num;
                                doubleDabbReg[4*j+:4] = num;
                            end
                        end
                    doubleDabbReg = doubleDabbReg << 1;    
                end        
    
        end
    //reg [0 : N_BITS_OUT - 1] aux = 'b0000_0000_0000;
    //assign doubleDabbReg = { 'b0000_0000_0000, BinNum };  //el algoritmo comienza con el número BCD en 0 y el número binario juntos en un registro
    //doubleDabbReg = BinNum;
    
    //VER ALGORITMO DOUBLE DABBLE http://verilogcodes.blogspot.com/2015/10/verilog-code-for-8-bit-binary-to-bcd.html
    assign BCDNum = doubleDabbReg[0:N_BITS_OUT - 1];
endmodule
