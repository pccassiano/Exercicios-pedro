algoritmo "Exercicio 6 aula 2"
// Fun��o :
// Autor :
// Data : 25/02/2015
// Se��o de Declara��es 
var
   cat1, cat2: inteiro
   area, hip  : real
inicio
// Se��o de Comandos
   escreva("Digite o primeiro Cateto: ")
   leia(cat1)
   escreva("Digite o segundo Cateto: ")
   leia(cat2)
   //calcula hipo
   hip <- raizq(cat1^2 + cat2^2)
   //calculo da area
   area <- (cat1 * cat2) / 2
   escreval("Hipotenusa: ", hip)
   escreval("Area: ", area)
fimalgoritmo
