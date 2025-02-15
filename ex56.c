#include<stdio.h>

/*Efetua o swap entre duas variaveis.
 Troca o conteudo entre as variaveis apontadas por px e py*/
void troca(int *px, int *py){
    int aux;
    aux = *px;
    *px = *py;
    *py = aux;
}

int main(){
    int num1, num2;

    printf("Informe o valor de num1: ");
    scanf("%d", &num1);

    printf("Informe o valor de num2: ");
    scanf("%d", &num2);

    printf("Num1 vale: %d\n", num1);
    printf("Num2 vale: %d\n", num2);

    troca(&num1, &num2);

    printf("Num1 vale: %d\n", num1);
    printf("Num2 vale: %d\n", num2);

    return 0;
}

