algoritmo "Exemplo_Enquanto_4"
var
   contador : inteiro
   num : inteiro
   resp : caractere
inicio
   resp <- "S"
   enquanto (resp = "S") ou (resp = "s") faca
      escreva("Digite um Numero:")
      leia(num)
      contador <- contador + 1
      escreva("Deseja digitar outro numero (S/N): ")
      leia(resp)
   fimenquanto
   escreva("Voce digitou um total de ")
   escreva(contador, " numeros")
fimalgoritmo
