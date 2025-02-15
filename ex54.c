#include<stdio.h>

int main(){
    double x, *pt;

    printf("CONVERTER CM PARA POLEGADAS\n");
    printf("Qual o valor em cm? ");
    scanf("%lf", &x);

    printf("%.2f\n", x);

    pt = &x;
    *pt = *pt / 2.54;

    printf("%.2f\n", x);

    return 0;
}

