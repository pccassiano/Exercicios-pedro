#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
/*Ler do usuário diversos números. Quando o numero digitado for par armazene no vetor A e quando for impar no vetor B, fique solicitando a entrada até que os dois vetores estejam totalmente preenchidos(cada vetor possui 6 elementos). A entrada das duas deve ser validada pelo programa e nao pelo usuario. Construir uma matriz C de forma que C seja a junção da matriz A e B de modo que C possua 12 elementos. Apresentar a matriz C. 
*/
int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "portuguese");
    int a[6], b[6], c[12], contador, numero, qtdImpar=0, qtdPar=0 ;
    
    contador = 0;
    
    do {
        printf("Digite um numero: ");
        scanf("%d", &numero);
        
        if(numero % 2 == 0 && qtdPar < 6) {
            printf("Numero (PAR) aceito na posição %d\n", qtdPar);
            a[qtdPar++] = numero;            
        } 
        if(numero % 2 == 1 && qtdImpar < 6) {
            printf("Numero (IMPAR) aceito na posição %d\n", qtdImpar);
            b[qtdImpar++] = numero;
        }
        
    } while (qtdPar < 6 || qtdImpar < 6);
    
    for(contador=0; contador<6; contador++) {
        c[contador] = a[contador];
        c[contador+6] = b[contador];
    }
    
    for(contador=0; contador<12; contador++) {
        printf("C[%d]: %d \n", contador+1, c[contador]);
    }  
    
    system("pause");
    return 0;
}
