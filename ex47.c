#include<stdio.h>


int main(){
    int num = 5, aux;
    
    
    /*num++;/*Se o comando estiver sozinho na linha tanto faz o ++ na esquerda ou na direita*/
    /*aux = num;*/

    /*aux = num++;*/   /*Primeiro atribui depois soma*/
    aux = ++num;       /*Primeiro soma depois atribui*/ 

    printf("Num: %d\n", num);
    printf("Aux: %d\n", aux);

    return 0;
}
