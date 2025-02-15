#include<stdio.h>

void insersaoOrd(char txt[]) {
    int i, j;
    char atual;
    for(i = 1; txt[i] != '\0'; i++) {
        atual = txt[i];
        for(j = i - 1; (j >= 0) && (atual < txt[j]); j--){
            txt[j + 1] = txt[j];
        }
        txt[j + 1] = atual;
    }
}

int main(){
    char texto[] = "EDAC1982823xaP7b";
    
    printf("Texto original: %s\n", texto);
    insersaoOrd(texto);
    printf("Texto ordenado: %s\n", texto);
    
    return 0;
}
