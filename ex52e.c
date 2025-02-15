#include<stdio.h>

int main(){
    int n, i, j, aux = 1;

    printf("Qual o tamanho da matriz? ");
    scanf("%d", &n);

    printf("\nMATRIZONA:\n");
    for(i = 1; i <= n; i++){
        for(j = 1; j <= n; j++){
            if(i == j){
                printf("---\t");
            }else{
                printf("%03d\t", aux);
            }
            aux = aux + 1;
        }
        printf("\n");
    }
    return 0;
}
