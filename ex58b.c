#include<stdio.h>

void lerIntMaiorIgualZero(int *pont){
    do{
        printf("Informe um numero >= 0: ");
        scanf("%d", pont);/*compara o valor da variavel apontada*/
        if (*pont < 0){
            printf("Valor invalido! Digite novamente.\n");
        }
    }while(*pont < 0);
}

int main(){
    int num;

    lerIntMaiorIgualZero(&num);

    printf("\nNumero digitado: %d\n", num);
    return 0;
}
