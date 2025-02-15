#include<stdio.h>

#define MAX 100

void maiusculo(char txt[]){
    int i;
    for(i = 0; txt[i] != '\0'; i++){
        if (txt[i] >= 'a' && txt[i] <= 'z'){
            txt[i] -= 32;
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







