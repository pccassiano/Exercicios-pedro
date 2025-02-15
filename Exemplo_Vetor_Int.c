
#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "portuguese");
    float notas[4], media;
    int contador;
    
    for(contador=0; contador < 4; contador++) {
        printf("Digite a Nota[%d]", contador+1);
        scanf("%f",  &notas[contador]);
    }
    
    media = 0;
    for(contador=0; contador < 4; contador++) {
        media += notas[contador];
    }
    
    media /= 4;
    printf("\nSua média é: %.2f \n", media);
    
    system("pause");
    return 0;
}
