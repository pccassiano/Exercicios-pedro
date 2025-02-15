#include<stdio.h>

#define MAX_MAT 100

int main(){
    int matriz[MAX_MAT][MAX_MAT];
    int i, j, nLinhas, nColunas;

    printf("Qual a quantidade de linhas? ");
    scanf("%d", &nLinhas);

    printf("Qual a quantidade de colunas? ");
    scanf("%d", &nColunas);

    for(i = 0; i < nLinhas; i++){
        for(j = 0; j < nColunas; j++){
            printf("Informe o elemento [%d, %d]: ", i + 1, j + 1);
            scanf("%d", &matriz[i][j]);
        }
    }

    printf("\n\nVALORES DA MATRIZ:\n");
    for(i = 0; i < nLinhas; i++){
        for(j = 0; j < nColunas; j++){
            printf("%03d\t", matriz[i][j]);
        }
        printf("\n");
    }
    return 0;
}








