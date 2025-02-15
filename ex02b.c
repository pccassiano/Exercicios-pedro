/*
Crie um programa para calcular e exibir o cubo de um numero inteiro
*/

#include<stdio.h>
#include<math.h>

int main(){

    int numero;
    int resultado;

    numero = 4;
    /*resultado = numero * numero * numero;*/

    resultado = pow(numero, 3);

    printf("O cubo de %d eh igual a %d\n\n", numero, resultado);

    return 0;
}
