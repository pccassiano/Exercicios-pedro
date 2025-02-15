#include<stdio.h>

int main(){
    double nota[4], soma, media;
    int i;

    printf("PROGRAMA PARA CALCULAR A MEDIA\n\n");
    
    for(i = 0; i < 4; i++){
        printf("Informe a nota %d: ", i + 1);
        scanf("%lf", &nota[i]);
    }

    for(soma = 0, i = 0; i < 4; i++){
        soma += nota[i];
    }

    media = soma / 4;

    printf("\nNOTAS DO ALUNO:");
    for(i = 0; i < 4; i++){
        printf("\t%.2f", nota[i]);
    }

    printf("\n\nA media do aluno eh %.2f\n\n", media);

    return 0;
}













