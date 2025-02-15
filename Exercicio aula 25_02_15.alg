algoritmo "semnome"
// Função :
// Autor :
// Data : 26/02/2015
// Seção de Declarações 
var
   ladoa:real
   ladob:real
   area:real
   //simplificando
   //soma_hipotenusa:real
   hipotenusa:real
inicio
// Seção de Comandos
   escreva("Digite o lado A:")
   leia(ladoa)
   escreva("Digite o lado B:")
   leia(ladob)
   area <- (ladob*ladoa)/2
   //simplificando
   //soma_hipotenusa <- ladoa^2 + ladob^2
   hipotenusa <- raizq(ladoa^2 + ladob^2)
   escreva("A area do triangulo é",area ," e a hipotenusa é",hipotenusa)
fimalgoritmo
