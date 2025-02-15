#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
/*Em um bar qualquer duas pessoas disputam varias partidas de vídeo game, é preciso criar um programa que possibilite a gravação de 5 partidas, em cada partida é preciso armazenar a pontuação de cada um dos dois jogadores. Indique o nome de cada jogador
Ao final das partidas você deverá exibir quantas partidas cada um dos jogadores ganhou e qual dos dois foi o verdadeiro vencedor.
*/
int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "portuguese");
    int p1[5], p2[5], contador, ganhou_1=0, ganhou_2=0;
    char jogador1[50], jogador2[50];
    
    printf("Nome do Jogador 1: ");
    fflush(stdin);
    scanf("%50[^\n]", jogador1);
    
    printf("Nome do Jogador 2: ");
    fflush(stdin);
    scanf("%50[^\n]", jogador2);
        
    printf("Placar jogador 1---------------------\n");
    for(contador=0; contador<5; contador++) {
        printf("Placar [%d] do Jogador 1: ", contador+1);
        scanf("%d", &p1[contador]);
    }

    printf("Placar jogador 2---------------------\n");
    for(contador=0; contador<5; contador++) {
        printf("Placar [%d] do Jogador 2: ", contador+1);
        scanf("%d", &p2[contador]);
    }
    
    printf("Verificações----------------------\n");
    for(contador=0; contador<5; contador++) {
        if(p1[contador] > p2[contador])
            ganhou_1++;
        
        if(p1[contador] < p2[contador])
            ganhou_2++;
    }
    
    if(ganhou_1 > ganhou_2)
        printf("O jogador %s obteve %d vitorias a mais\n", jogador1,
            (ganhou_1 - ganhou_2));
    else
        if (ganhou_2 > ganhou_1)
            printf("O jogador %s obteve %d vitorias a mais\n", jogador2,
                (ganhou_2 - ganhou_1));
        else
            printf("Os Jogadores empataram!!!\n");
            
    
    
    system("pause");
    return 0;
}
