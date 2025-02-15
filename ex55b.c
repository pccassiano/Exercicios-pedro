#include<stdio.h>

/*Utilizando ponteiro*/
void metade(double *valor){
    *valor = *valor / 2.0;
}

int main(){
    double num;

    printf("Informe um valor: ");
    scanf("%lf", &num);

    metade(&num);/*Passo a referencia pra variavel num*/

    printf("Metade do valor: %.2f\n", num);
    return 0;
}

