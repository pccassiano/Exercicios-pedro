#include<stdio.h>

#define N_NOTAS 50

int main(){
    double nota[N_NOTAS], soma, media;
    int i;

    printf("PROGRAMA PARA CALCULAR A MEDIA\n\n");
    
    for(i = 0; i < N_NOTAS; i++){
        printf("Informe a nota %d: ", i + 1);
        scanf("%lf", &nota[i]);
    }

    for(soma = 0, i = 0; i < N_NOTAS; i++){
        soma += nota[i];
    }

    media = soma / N_NOTAS;

    printf("\nNOTAS DO ALUNO:");
    for(i = 0; i < N_NOTAS; i++){
        printf("\t%.2f", nota[i]);
    }

    printf("\n\nA media do aluno eh %.2f\n\n", media);

    return 0;
}













