#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
/*Ler um vetor W de 10 elementos, depois ler um valor V. Contar e escrever quantas vezes o valor V ocorre no vetor W e escrever também em que posições (índices) do vetor W o valor V aparece.
Caso o valor V não ocorra nenhuma vez no vetor W, escrever uma mensagem informando isto.
*/
int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "portuguese");
    int w[10], v, contador, flag=0;
        
    for(contador=0; contador<10; contador++) {
        printf("Digite um numero para W[%d]: ", contador+1);
        scanf("%d", &w[contador]);
    }
    
    printf("Digite um numero para V: ");
    scanf("%d", &v);
    
    for(contador=0; contador<10; contador++) {
        if(w[contador] == v) {
            printf("O numero %d foi encontrador na posicao W[%d]\n", v, contador+1);
                flag = 1; //indica que achou pelo menos 1
        }
    }
    
    if(flag == 0)
        printf("O Numero %d, nao existe em W[]\n", v);
    
    system("pause");
    return 0;
}
