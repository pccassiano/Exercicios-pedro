/*
media nota do aluno
gcc -Wall -ansi -pedantic-errors ex08.c -o ex08 
*/
#include<stdio.h>

int main(){
    double nota1, nota2, nota3, nota4, media;
    
     printf("informar as 4 notas do aluno (0..10): ");
     scanf("%lf%lf%lf%lf" , &nota1, &nota2, &nota3, &nota4);

     media = (nota1 + nota2 + nota3 + nota4)/ 4.0;

     printf ("numero vale : \n %.2f\n%2e\n%g\n", media, media, media);
   
    return 0;
}
