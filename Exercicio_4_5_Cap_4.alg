algoritmo "Exercicio_4.5_cap_4"
var
   cont : inteiro
   taxa, habitantes : real
inicio
   escreva("Digite a Taxa de Crescimento: ")
   leia(taxa)
   habitantes <- 20000
   para cont de 2011 ate 2030 passo 1 faca
      habitantes <- habitantes * (1 + taxa/100)
      escreval("No ano de ", cont, " a população será de ", habitantes)
   fimpara
fimalgoritmo
