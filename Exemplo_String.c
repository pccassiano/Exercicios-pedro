#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "portuguese");
    char nome[60+1];
    char endereco[100+1];
    
    printf("Digite o nome: ");
    scanf("%60[^\n]", nome);
    fflush(stdin);
    
    printf("Digite o endereço: ");
    scanf("%100[^\n]", endereco);
    
    printf("\nO nome digitado foi: %s\n", nome);
    printf("\nO endereço digitado foi: %s\n", endereco);
  
    system("pause");
    return 0;
}
