algoritmo "Exemplo PARA 01"
// Função :
// Autor :
// Data : 06/03/2015
// Seção de Declarações 
var
   contador : inteiro
   ini, final, razao : inteiro
inicio
   escreva("Digite o inicioi:")
   leia(ini)
   escreva("Digite o final: ")
   leia(final)
   se (ini < final) entao
      razao <- 1
   senao
      razao <- -1
   fimse
   para contador de ini ate final passo razao faca
      se (contador % 2 = 0) entao
         escreval (contador, " É par")
      senao
         escreval(contador, " É impar")
      fimse
   fimpara
fimalgoritmo
