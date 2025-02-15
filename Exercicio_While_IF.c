#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "portuguese");
    int inicial, final, conta2=0, conta3=0, conta4=0;
    int soma2=0, soma3=0, soma4=0;
    
    do {
        printf("Digite o valor inicial: "); scanf("%d", &inicial);
        printf("Digite o valor final >= inicial: "); scanf("%d", &final);
    } while (inicial > final);
    
    while(inicial <= final) {
        if(inicial % 2 == 0) {
            conta2++; 
            soma2 += inicial;
        }
        if(inicial % 3 == 0) {
            conta3++; 
            soma3 += inicial;
        }
        if(inicial % 4 == 0) {
            conta4++; 
            soma4 += inicial;
        }
        inicial++;        
    } 
    
    printf("\nResultados-----------------------------------------");
    printf("\nMultiplos de 2: %d", conta2);
    printf("\nMultiplos de 3: %d", conta3);
    printf("\nMultiplos de 4: %d", conta4);
    printf("\n\nSomatoria de 2: %d", soma2);
    printf("\nSomatoria de 3: %d", soma3);
    printf("\nSomatoria de 4: %d", soma4);
    printf("\n---------------------------------------------------")
    ;
    system("pause");
    return 0;
}
