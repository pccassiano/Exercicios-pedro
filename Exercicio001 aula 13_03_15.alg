algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 13/03/2015
// Se��o de Declara��es 
var
   contador : inteiro
   num : inteiro
   resp : caracter
   par, impar : inteiro
inicio
// Se��o de Comandos
   resp <- "S"
   Enquanto (resp = "S") faca
            Escreval("Digite um n�mero:")
            Leia(num)
                     se (num % 2 = 0) entao
                        par <- par +1
                     senao
                        impar <- impar +1
                     fimse
            contador <- contador + 1
            repita
            Escreval("Gostaria de digitar outro n�mero (S/N): ")
            Leia(resp)
                      se (resp = "S") ou (resp = "N") entao
                         Escreval("Okay")
                      senao
                         ate (resp = "S") ou (resp = "N")
                      fimse
   Fimenquanto
   Escreva("Voc� digitou um total de ")
   Escreva(contador," n�mero(s)",par, " par(es) e", impar, " impar(es)")
fimalgoritmo
