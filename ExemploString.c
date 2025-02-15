#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>

int main(int argc, char *argv[])
{
    char nome[30+1] = "teste";
    setlocale(LC_ALL, "portuguese");
    printf("%s", strupr(nome));
    if(strcmp(strupr(nome), "TESTE") == 0) {
        printf("funcionou");
    } 
  system("pause");
  return 0;
}
