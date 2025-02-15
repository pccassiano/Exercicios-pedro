algoritmo "Exercicio_4.6_cap_4"
var
   cont, totAP, totRP : inteiro
   nota1, nota2 : real
inicio
   para cont de 1 ate 20 faca
      escreval("Aluno: ", cont)
      escreva("Digite a Nota 1: ")
      leia(nota1)
      escreva("Digite a Nota 2: ")
      leia(nota2)
      se ((nota1 + nota2) / 2 >= 6) entao
         totAP <- totAP + 1
      senao
         totRP <- totrp + 1
      fimse
   fimpara
   escreval("Total Aprovados: ", totAP)
   escreva("Total Reprovados: ", totRP)
fimalgoritmo
