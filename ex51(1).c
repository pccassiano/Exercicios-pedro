#include<stdio.h>

int main(){
    int matriz[3][4];
    int i, j;

    for(i = 0; i < 3; i++){
        for(j = 0; j < 4; j++){
            printf("Informe o elemento [%d, %d]: ", i + 1, j + 1);
            scanf("%d", &matriz[i][j]);
        }
    }

    printf("\n\nVALORES DA MATRIZ:\n");
    for(i = 0; i < 3; i++){
        for(j = 0; j < 4; j++){
            printf("%03d\t", matriz[i][j]);
        }
        printf("\n");
    }
    return 0;
}








