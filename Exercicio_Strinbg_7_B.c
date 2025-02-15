#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>

int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "portuguese");
    char situacao[15+1], nome[30+1], resp[3+1];
    float n1, n2, n3, n4, media;
    
    do {
        printf("\nDigite o nome: ");
        fflush(stdin);
        scanf("%30[^\n]", nome);
        
        
        printf("Nota 1: "); scanf("%f", &n1);
        printf("Nota 2: "); scanf("%f", &n2);
        printf("Nota 3: "); scanf("%f", &n3);
        printf("Nota 4: "); scanf("%f", &n4);
        
        media = (n1+n2+n3+n4) / 4;
        
        if(media >= 5) {
            strcpy(situacao, "Aprovado");
        } else {
            strcpy(situacao, "Reprovado");
        }
    
        printf("\nO aluno %s foi %s", nome, situacao);
        
        printf("\nDeseja digitar outro aluno (SIM/NAO): ");
        fflush(stdin);
        scanf("%3[^\n]", resp);    
    } while(strcmp(strupr(resp), "SIM") == 0);
    
    system("pause");
    return 0;
}
