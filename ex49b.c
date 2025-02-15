#include<stdio.h>

#define N_PRECO 10

int main(){
    double preco[N_PRECO];
    int i;

    for(i = 0; i < N_PRECO; i++){
        printf("Informe o %dº preco: ", i + 1);
        scanf("%lf", &preco[i]);
    }

    printf("\n\nPRECOS DIGITADOS:\n");
    for(i = N_PRECO - 1; i >= 0 ; i--){
        printf("%dº preco %.2f\n", i + 1, preco[i]);
    }

    
    return 0;
}








