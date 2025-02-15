#include<stdio.h>
#include<stdlib.h>

int main(){

    FILE *arq;

    arq = fopen("dados.txt", "r");

    /*Se nao conseguir abrir o arquivo, por qualquer problema que seja, o arq sera NULL*/
    if (arq == NULL){
        printf("Erro ao abrir o arquivo!\n");
        exit(EXIT_FAILURE);
    }

    return 0;
}
