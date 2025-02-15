#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main(int argc, char *argv[])
{
  setlocale(LC_ALL, "portuguese");
  //variaveis
  float salBruto, salLiquido, inss, irrf;
  
  printf("Digite o Salario Bruto: ");
  scanf("%f", &salBruto);
  
  //fazer calculos
  if (salBruto < 1500) {
      irrf = 0;
      inss = salBruto * 0.08;
  } else {
      irrf = salBruto * 0.05;
      inss = salBruto * 0.11;
  }
  
  salLiquido = (salBruto - inss - irrf);
  //Exibir Dados
  printf("\nSalario Bruto: %.2f", salBruto);
  printf("\nINSS: %.2f", inss);
  printf("\nIRRF: %.2f", irrf);
  printf("\nSalario Liquido: %.2f", salLiquido);
  
  system("pause");
  return 0;
}
