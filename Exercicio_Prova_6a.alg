algoritmo "ExercicioProva 6a"
var
   n1, n2, n3, media : real
   codigo : inteiro
inicio
   escreva("Digite o Codigo Aluno: ")
   leia(codigo)
   escreva("Digite N1:")
   leia(n1)
   escreva("Digite N2:")
   leia(n2)
   escreva("Digite N3:")
   leia(n3)
   //Achar a maior nota
   se (n1 >= n2) e (n1 >= n3) entao
      media <- ((n1 * 4) + (n2 * 3) + (n3 * 3)) / 10
   senao
      se (n2 >= n1) e (n2 >= n3) entao
         media <- ((n1 * 3) + (n2 * 4) + (n3 * 3)) / 10
      senao
         media <- ((n1 * 3) + (n2 * 3) + (n3 * 4)) /10
      fimse
   fimse
   escreval("Aluno: ", codigo)
   escreval("N1:", n1, " - N2:", n2, " - N3:", n3)
   escreval("Media:", media)
   se (media >= 5) entao
      escreval("Aprovado")
   senao
      escreval("Reprovado")
   fimse
fimalgoritmo
