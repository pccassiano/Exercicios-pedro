#include<stdio.h>

/*Sem utilizar ponteiro*/
/*Utiliza o return*/
double metade(double valor){
    return valor / 2.0;
}

int main(){
    double num;

    printf("Informe um valor: ");
    scanf("%lf", &num);

    num = metade(num);

    printf("Metade do valor: %.2f\n", num);
    return 0;
}

