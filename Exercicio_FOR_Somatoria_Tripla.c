#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "portuguese");
    int cont, soma, qtd;
    cont = soma = qtd = 0;
    
    for(cont = 0; cont <= 100; cont++) {
        if(qtd == 3) {
            printf(" = %d \n", soma);
            soma = 0;
            qtd = 0;
        }
        qtd++;
        printf("%d + ", cont);
        soma += cont;
    }
    
    system("pause");
    return 0;
}
