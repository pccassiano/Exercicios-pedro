#include<stdio.h>

int main(){
    double nota[4], soma, media;

    printf("PROGRAMA PARA CALCULAR A MEDIA\n\n");
    
    printf("Informe a nota 1: ");
    scanf("%lf", &nota[0]);

    printf("Informe a nota 2: ");
    scanf("%lf", &nota[1]);

    printf("Informe a nota 3: ");
    scanf("%lf", &nota[2]);

    printf("Informe a nota 4: ");
    scanf("%lf", &nota[3]);

    soma = nota[0] + nota[1] + nota[2] + nota[3];

    media = soma / 4.0;

    printf("A media do aluno eh %.2f\n", media);

    return 0;
}













