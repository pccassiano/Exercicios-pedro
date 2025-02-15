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
    
    //Faz os teste
    switch (estadoCivil) {
        case 'S' :
            printf("Voce escolheu Solteiro");
            break;
        case 'C' : 
            printf("Voce escolheu Casado");
            break;
        case 'V' :
            printf("Voce escolheu Viuvo");
            break;
        case 'D' :
            printf("Voce escolheu Divorciado");
            break;
        default :
            printf("Opção Inválida\n");
    }
  
    system("pause");
    return 0;
}
