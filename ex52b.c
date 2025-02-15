#include<stdio.h>

int main(){
    int n, i, j;

    printf("Qual o tamanho da matriz? ");
    scanf("%d", &n);

    printf("\nMATRIZONA:\n");
    for(i = 1; i <= n; i++){
        for(j = 1; j <= n; j++){
            printf("%03d\t", (i - 1) * n + j);
        }
        printf("\n");
    }
    return 0;
}
