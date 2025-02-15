#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main(int argc, char *argv[])
{
  setlocale(LC_ALL, "portuguese");
    char estadoCivil;
    
    printf("Digite uma letra do Estado Civil (C/S/V/D):");
    fflush(stdin); //Limpa o buffer
    scanf("%c", &estadoCivil);
  
    if(estadoCivil == 'C' || estadoCivil == 'c' ) {
        printf("Casado\n");
    } else {
        if(estadoCivil == 'S' || estadoCivil == 's') {
            printf("Solteiro\n");
        } else {
            if(estadoCivil == 'V' || estadoCivil == 'v') {
                printf("Viuvo\n");
            } else {
                if(estadoCivil == 'D' || estadoCivil == 'd') {
                    printf("Divorciado\n");
                } else {
                    printf("Opção Inválida\n");
                }
            }
        }
    }
    system("pause");
    return 0;
}
