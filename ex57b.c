#include<stdio.h>

#define MAX 100

void maiusculo(char *txt){
    char *p;
    for(p = txt; *p != '\0'; p++){/*Passeia com o vetor ao inves de com um indice*/
        if (*p >= 'a' && *p <= 'z'){
            *p -= 32;
        }
    }
}

int main(){
    char texto[MAX];

    printf("Informe um texto: ");
    fgets(texto, MAX, stdin);

    printf("\nTexto digitado.....: %s\n", texto);

    maiusculo(texto);

    /*equivalente a maiusculo(&texto[0]);*/

    printf("\nTexto em maiusc....: %s\n", texto);

    return 0;
}







