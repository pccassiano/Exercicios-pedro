#include<stdio.h>

#define MAX_N_PRECO 1000

int main(){
    int i, n;
    double preco[MAX_N_PRECO];

    printf("Quantos precos voce quer informar? ");
    scanf("%d", &n);

    for(i = 0; i < n; i++){
        printf("Informe o %dº preco: ", i + 1);
        scanf("%lf", &preco[i]);
    }

    printf("\n\nPRECOS DIGITADOS:\n");
    for(i = n - 1; i >= 0 ; i--){
        printf("%dº preco %.2f\n", i + 1, preco[i]);
    }

    
    return 0;
}








