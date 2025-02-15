#include<stdio.h>
#include<stdlib.h>

#define MAX 1000

int main(){

    FILE *arq;
    char msg[MAX];

    arq = fopen("dados.txt", "a");

    if (arq == NULL){
        printf("Erro ao abrir o arquivo!\n");
        exit(EXIT_FAILURE);
    }

    printf("Informe mensagens: ");
    do{
        fgets(msg, MAX, stdin);
        printf("Gravando a mensagem no arquivo...\n");
        fputs(msg, arq);
    }while(msg[0] != '\n');

    fclose(arq);

    return 0;
}






