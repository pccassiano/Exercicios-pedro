algoritmo "Exemplo PARA 01"
// Fun��o :
// Autor :
// Data : 06/03/2015
// Se��o de Declara��es 
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
         escreval (contador, " � par")
      senao
         escreval(contador, " � impar")
      fimse
   fimpara
fimalgoritmo
