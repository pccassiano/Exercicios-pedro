#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
/*
Fazer um programa para ler 10 numeros em um vetor e apresentar
a soma de numeros pares e impares.
*/

int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "portuguese");
    int numero[10], qtd_par = 0, qtd_impar = 0;
    int indice;
    
    //faz a leitura
    for(indice=0; indice<10; indice++) {
        printf("Digite numero[%d]: ",indice+1);
        scanf("%d", &numero[indice]);
        
        //verifica se par ou impar
        if(numero[indice] % 2 == 0) 
            qtd_par += numero[indice];
        else
            qtd_impar += numero[indice];
    }
    
    for(indice=9; indice>-1; indice--) {
        printf("\nNumero[%d]: %d ",indice+1, numero[indice]);
    }
    
    printf("Somatoria dos numeros pares: %d\n", qtd_par);
    printf("Somatoria dos numeros impares: %d\n", qtd_impar);
    
    system("pause");
    return 0;
}
