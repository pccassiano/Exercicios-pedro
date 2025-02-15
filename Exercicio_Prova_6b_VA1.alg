algoritmo "ExercicioProva 6b"
var
   A, B, cont, maior, menor, qtdEntre, numero : inteiro
inicio
   repita
      escreva("Digite A:")
      leia(A)
      escreva("Digite B:")
      leia(B)
   ate (A <= B)
   para cont de 1 ate 50 faca
      escreva("Digite um Numero: ")
      leia(numero)
      se (cont=1) entao
         maior <- numero
         menor <- numero
      fimse
      se (numero >= A) e (numero <= B) entao
         qtdEntre <- qtdEntre + 1
      fimse
      se (numero < menor) entao
         menor <- numero
      fimse
      se (numero > maior) entao
         maior <- numero
      fimse
   fimpara
   escreval("Qtd entre A e B:", qtdEntre)
   escreval("Maior numero:", maior)
   escreval("Menor numero:", menor)
fimalgoritmo
