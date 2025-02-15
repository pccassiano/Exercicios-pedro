/*
estimar +- o custo do combustivel de uma viagem de carro
*/
#include<stdio.h>

int main(){
    float distancia, KmporLitro, preco_combustivel;
    float valor_gasto, totalLitros;

    printf("Informe a Distancia que ira percorrer: ");
    scanf("%f" , &distancia);
    printf("Quantos Km seu carro faz por litro? ");
    scanf("%f" , &KmporLitro);
    printf("Qual o preco medio do combustivel? ");
    scanf("%f" , &preco_combustivel);

    totalLitros = distancia / KmporLitro;
    valor_gasto = totalLitros * preco_combustivel;

    printf(" Voce precisara de %f litros para completar a viagem \n ", totalLitros);
    printf(" Voce gastou %f na viagem \n\n", valor_gasto);


    return 0;

}
