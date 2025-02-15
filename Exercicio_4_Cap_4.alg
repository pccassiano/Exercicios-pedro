algoritmo "Exercicio_4_Cap_4"

var
   nota1, nota2, media : real
   resp : caractere
   contAP, contRP : inteiro
inicio
   repita
      repita
         escreva("Digite Nota 1: ")
         leia(nota1)
      ate ((nota1 >=0) e (nota1 <=10))

      repita
         escreva("Digite Nota 2: ")
         leia(nota2)
      ate ((nota2 >=0) e (nota2 <=10))
      
      media <- (nota1 + nota2) / 2
      se (media >=6) entao
         contAP <- contAP + 1
      senao
         contRP <- contRP + 1
      fimse
      
      resp <- ""
      enquanto ((resp <> "S") e (resp <> "N"))
         escreva("Cadastrar outro (S/N):")
         leia(resp)
      fimenquanto
      
   ate ((resp = "N") ou (resp = "n"))

   escreval("Alunos analisados: ", contAP + contRP)
   escreval("Alunos Aprovados: ", contAP)
   escreval("Alunos Reprovados: ", contRP)
fimalgoritmo
