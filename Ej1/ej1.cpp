#include <iostream>
#include <cstring>
#include <cstdlib>
#include <cmath>

int main(int argc, char *argv[])
{
    signed int i, j; // contadores
        
    // Verifico el input
    if(argc != 4)
    {
        // Not enough input to compute a result
        std::cout << "ERROR\n";
        return 0;
    }
    else
    {
        for(i = 1; i<4; i++)
        {
            for(j = 0; j<strlen(argv[i]); j++)
            {
                if(argv[i][j] < '0' || argv[i][j] > '9')
                {  
                    // Recibi algo que no es un numero
                    std::cout << "ERROR\n";
                    return 0;
                }
            }
        }
    }
    //fin de la validacion
    
    int signo = atoi(argv[1]);
    int entero = atoi(argv[2]);
    int decimal = atoi(argv[3]);
    double res = 0;
    double ran = 0;
    res = pow(2, -decimal);
    for(i = -decimal; i<entero; i++)
    {
        ran += pow(2, i);
    }
    
    std::cout << "Res: " << res << " | Ran: " << ran << std::endl;
    return 0;

}