#include<stdio.h>
#include<stdlib.h>

int compara(const void * num1, const void * num2){
    if (*(int*)num1 <  *(int*)num2) return -1;
    if (*(int*)num1 ==  *(int*)num2) return 0;
    if (*(int*)num1 >  *(int*)num2) return 1;
}

void exibe(int vet[], int tam){
    int i;
    printf("\nVETOR DIGITADO: ");
    for(i = 0; i < tam; i++){
        printf("%d\t", vet[i]);
    }
    printf("\n");
}

int main(){
    int vet[] = {10, 8, 15, 22, 92, 5, 8};
    exibe(vet, 7);
    qsort(vet, 7, sizeof(int), compara);
    exibe(vet, 7);
    return 0;
}













