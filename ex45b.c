/*Concatenar strings*/
#include<stdio.h>

#define MAX_STR 30

int main(){
    char nome[MAX_STR], sobrenome[MAX_STR];
    char nomeComp[2*MAX_STR];/*Tem o dobro para caber as duas*/
    int i, j;

    /*Leitura do nome*/
    printf("Informe seu nome: ");
    fgets(nome, MAX_STR, stdin);
    /*Remocao do \n*/
    for(i = 0; nome[i] != '\n'; i += 1);
    nome[i] = '\0';

    /*Leitura do sobrenome*/
    printf("Informe seu sobrenome: ");
    fgets(sobrenome, MAX_STR, stdin);
    /*Remocao do \n*/
    for(i = 0; sobrenome[i] != '\n'; i++);
    sobrenome[i] = '\0';

    /*Copia o nome para a variavel nomeComp*/
    for(i = 0; nome[i] != '\0'; ++i){
        nomeComp[i] = nome[i];
    }

    /*Adiciona um espaco entre as palavras*/
    nomeComp[i] = ' ';
    i += 1;/*avanca para que o espaco nao seja sobreposto*/

    for(j = 0; sobrenome[j] != '\0'; j += 1, i += 1){
        nomeComp[i] = sobrenome[j];
    }
    nomeComp[i] = '\0';/*Para terminar o nomeComp e nao pegar lixo de memoria*/

    printf("Nome completo: %s\n", nomeComp);

    return 0;
}












