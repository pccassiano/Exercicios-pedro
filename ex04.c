/*
area do triangulo retangulo
*/
#include<stdio.h>

int main(){
    float alt, base, area;

    base = 5;
    alt = 3;

    area = (base * alt) / 2;

    printf("A area do triangulo de base %f e altura %f eh igual a %f.\n\n", base, alt, area);
    
    return 0;
}
