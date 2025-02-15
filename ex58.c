#include<stdio.h>

int lerIntMaiorIgualZero(){
    int n;

    do{
        printf("Informe um numero >= 0: ");
        scanf("%d", &n);
        if (n < 0){
            printf("Valor invalido! Digite novamente.\n");
        }
    }while(n < 0);

    return n;
}

int main(){
    int num;

    num = lerIntMaiorIgualZero();

    printf("\nNumero digitado: %d\n", num);
    return 0;
}
