#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>

int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "portuguese");
    char palavra_1[30+1], palavra_2[30+1];
    char aux[30+1];
    
    printf("Digite uma palavra: ");
    scanf("%30[^\n]", palavra_1);
    fflush(stdin);
    
    printf("Digite outra palavra: ");
    scanf("%30[^\n]", palavra_2);
    fflush(stdin);
    
    //Trocando as palavras
    strcpy(aux, palavra_1);
    strcpy(palavra_1, palavra_2);
    strcpy(palavra_2, aux);
    
    //exibindo
    printf("A primeira palavra foi: %s \n", palavra_1);
    printf("A segunda palavra foi: %s \n", palavra_2);
    
    system("pause");
    return 0;
}
