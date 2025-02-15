#include<stdio.h>

void exibe(int vet[], int tam){
    int i;
    printf("\nVETOR DIGITADO: ");
    for(i = 0; i < tam; i++){
        printf("%d\t", vet[i]);
    }
    printf("\n");
}

void bolha(int vet[], int tam){
    int i, j, aux;
    for(i = 0; i < tam - 1; i++){
        for(j = i + 1; j < tam; j++){
            if (vet[i] > vet[j]){
                aux = vet[j];
                vet[j] = vet[i];
                vet[i] = aux;
                exibe(vet, 7);
            }
        }
    }
}

int main(){
    int vet[] = {10, 8, 15, 22, 92, 5, 8};
    exibe(vet, 7);
    bolha(vet, 7);
    exibe(vet, 7);
    return 0;
}
















