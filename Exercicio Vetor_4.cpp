#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
/*Ler n valores do usuario e armazenar em um vetor de 6 posições somente os valores digitados que forem pares. Quando o vetor ficar cheio encerre a entrada de dados e exiba o vetor.
*/
int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "portuguese");
    int a[6], contador, numero;
    
    contador = 0;
    
    do {
        printf("Digite um numero: ");
        scanf("%d", &numero);
        
        if(numero %2 == 0) {
            printf("Numero aceito na posição %d\n", contador);
            a[contador++] = numero;            
        }
    } while (contador < 6);
    
    for(contador=0; contador<6; contador++) {
        printf("A[%d]: %d \n", contador+1, a[contador]);
    } 
    
    system("pause");
    return 0;
}
