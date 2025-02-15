#include<stdio.h>
#include<stdlib.h>

#define MAX 10000
#define MAX_ARQ 256

FILE *abrirArquivo(){
    int i;
    char nomeArquivo[MAX_ARQ];
    FILE *arq;
    do{
        printf("Informe o nome do arquivo: ");
        fgets(nomeArquivo, MAX_ARQ, stdin);
        for(i = 0; nomeArquivo[i] != '\n'; i++);
        nomeArquivo[i] = '\0';
        arq = fopen(nomeArquivo, "r");
        if (arq == NULL){
            printf("Falha ao abrir arquivo... Digite novamente!\n");
        }
    }while(arq == NULL);
    return arq;
}

int main(){
    int tam, tamTotal = 0;
    char linha[MAX];
    FILE *arq;

    system("clear");

    arq = abrirArquivo();

    while(fgets(linha, MAX, arq) != NULL){
        for(tam = 0; linha[tam] != '\0'; tam++); /*Conta ate o final da linha a quantidade de caracteres*/
        printf("A linha possui %d caracteres\n", tam);
        tamTotal += tam; /*computa o tamanho total*/
    }

    printf("\nTAMANHO TOTAL: %d caracteres\n", tamTotal);

    fclose(arq);

    return 0;
}










