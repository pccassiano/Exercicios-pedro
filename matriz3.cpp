#include <stdio.h>
#include <stdlib.h>


int main()
{
  int n,i,j, aux = 1;
  
  printf("Digite o tamanho: ");
  scanf ("%d", &n);
  
  for(i=1; i<=n;i++){
  	for(j=1; j<=n;j++){
  	if( i != j){
  		printf("%03d\t",aux);
  	   	aux= aux+1;
	}else {
	  		printf("--\t");
	  		aux= aux+1;
			}
  	}
	printf("\n");
	 
  }
  system("pause");
  return 0;
}

