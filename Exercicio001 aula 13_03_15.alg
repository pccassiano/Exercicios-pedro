algoritmo "semnome"
// Função :
// Autor :
// Data : 13/03/2015
// Seção de Declarações 
var
   contador : inteiro
   num : inteiro
   resp : caracter
   par, impar : inteiro
inicio
// Seção de Comandos
   resp <- "S"
   Enquanto (resp = "S") faca
            Escreval("Digite um número:")
            Leia(num)
                     se (num % 2 = 0) entao
                        par <- par +1
                     senao
                        impar <- impar +1
                     fimse
            contador <- contador + 1
            repita
            Escreval("Gostaria de digitar outro número (S/N): ")
            Leia(resp)
                      se (resp = "S") ou (resp = "N") entao
                         Escreval("Okay")
                      senao
                         ate (resp = "S") ou (resp = "N")
                      fimse
   Fimenquanto
   Escreva("Você digitou um total de ")
   Escreva(contador," número(s)",par, " par(es) e", impar, " impar(es)")
fimalgoritmo
