#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "portuguese");
    float peso[10];
    int indice;
    
    //entrada de dados
    for(indice=0; indice < 10; indice++) {
        printf("Digite o Peso[%d]: ", indice+1);
        scanf("%f", &peso[indice]);
    }
    
    //exibir os dados5
    for(indice=0; indice < 10; indice++) {
        printf("Peso[%d]: %.2f\n", indice+1, peso[indice]);
    }
  
    system("pause");
    return 0;
}
