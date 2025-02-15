#include<stdio.h>

#define N_PRECO 3

int main(){
    double preco[N_PRECO];
    int i;

    for(i = 0; i < N_PRECO; i++){
        printf("Informe o %dº preco: ", i + 1);
        scanf("%lf", &preco[i]);
    }

    printf("\n\nPRECOS DIGITADOS:\n");
    for(i = 0; i < N_PRECO; i++){
        printf("%.2f\n", preco[i]);
    }
    
    return 0;
}








