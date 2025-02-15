algoritmo "ExercicioProva 6b"
var
   A, B, cont, maior, menor, qtdMaior, qtdMenor, numero : inteiro
inicio
   escreva("Digite A:")
   leia(A)
   escreva("Digite B:")
   leia(B)
   para cont de 1 ate 50 faca
      escreva("Digite um Numero: ")
      leia(numero)
      se (cont=1) entao
         maior <- numero
         menor <- numero
      fimse
      se (numero < A) entao
         qtdMenor < qtdMenor + 1
      fimse
      se (numero > B) entao
         qtdMaior < qtdMaior + 1
      fimse
      se (numero < menor) entao
         menor <- numero
      fimse
      se (numero > maior) entao
         maior <- numero
      fimse
   fimpara
   escreval("Qtd menor que A:", qtdMenor)
   escreval("Qtd maior que B:", qtdMaior)
   escreval("Maior numero:", maior)
   escreval("Menor numero:", menor)
fimalgoritmo
