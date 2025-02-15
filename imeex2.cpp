#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
  int num;
  int resultado;
  
  num= 4;
  /*resultado = num*num*num;*/
  resultado = pow(num ,3);
  
  printf("O cubo de %d eh igual a %d \n\n", num , resultado);

  system("pause");
  return 0;
}

