#include<stdio.h>
#include<stdlib.h>

#define MAX 10000
#define MAX_ARQ 256

int main(){
    int i;
    char nomeArquivo[MAX_ARQ];
    char linha[MAX];
    FILE *arq;

    do{
        printf("Informe o nome do arquivo: ");
        fgets(nomeArquivo, MAX_ARQ, stdin);
        for(i = 0; nomeArquivo[i] != '\n'; i++);
        nomeArquivo[i] = '\0';
        arq = fopen(nomeArquivo, "r");/*Abre arquivo para leitura*/
        if (arq == NULL){
            printf("Falha ao abrir arquivo... Digite novamente!\n");
        }
    }while(arq == NULL);

    fclose(arq);

    return 0;
}
