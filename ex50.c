#include<stdio.h>

#define MAX_FACES 30

int main(){
    int qtdeFace[MAX_FACES], nFaces;
    int nLanc, lanc, i;

    printf("Qual a quantidade de faces? ");
    scanf("%d", &nFaces);

    printf("Quantos lancamentos? ");
    scanf("%d", &nLanc);

    for(i = 0; i < nFaces; i++){
        qtdeFace[i] = 0;
    }

    for(i = 0; i < nLanc; i++){
        printf("Qual a face do lancamento %d? ", i + 1);
        scanf("%d", &lanc);
        qtdeFace[lanc - 1]++;
    }

    printf("\n\nQUANTIDADE DAS FACES\n");
    for(i = 0; i < nFaces; i++){
        printf("QTDE FACE %d = %d\n", i + 1, qtdeFace[i]);
    }
    return 0;
}












