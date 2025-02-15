algoritmo "Exercicio_Enquanto_4"
var
   num, par, impar : inteiro
   resp : caractere
inicio
   resp <- "S"
   enquanto (resp = "S") ou (resp = "s") faca
      escreva("Digite um Numero:")
      leia(num)
      se (num mod 2 = 0) entao
         par <- par + 1
      senao
         impar <- impar + 1
      fimse
      escreva("Deseja digitar outro numero (S/N): ")
      leia(resp)
   fimenquanto
   escreva("Voce digitou um total de ")
   escreva(par, " numeros pares e ", impar, " numeros impares")
fimalgoritmo
