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
        arq = fopen(nomeArquivo, "r");/*Abre arquivo para leitura*/
        if (arq == NULL){
            printf("Falha ao abrir arquivo... Digite novamente!\n");
        }
    }while(arq == NULL);/*Repete ate conseguir abrir um arquivo valido*/
    return arq;
}

int main(){
    int tam;
    char linha[MAX];
    FILE *arq;

    arq = abrirArquivo();

    fgets(linha, MAX, arq);

    for(tam = 0; linha[tam] != '\0'; tam++);

    printf("\nA linha possui %d caracteres\n", tam);

    fclose(arq);

    return 0;
}










