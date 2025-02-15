#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
/*
Ler dois vetores A e B com 5 elementos cada. Após a entrada criar um vetor C de 10 elementos que seja o resultado da junção de A e B. Exiba o conteúdo do vetor C. */
int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "portuguese");
    int a[5], b[5], c[10], contador;
    
    for(contador=0; contador<5; contador++) {
        printf("Digita A[%d]:", contador+1);
        scanf("%d", &a[contador]);
        
        printf("Digita B[%d]:", contador+1);
        scanf("%d", &b[contador]);
        
        c[contador] = a[contador];
        c[contador+5] = b[contador];
    }
    
    for(contador=0; contador<10; contador++) {
        printf("C[%d]: %d \n", contador+1, c[contador]);
    } 
    
    system("pause");
    return 0;
}
