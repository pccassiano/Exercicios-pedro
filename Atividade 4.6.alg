algoritmo "semnome"
// Função :
// Autor :
// Data : 11/03/2015
// Seção de Declarações 
var
   nota1, nota2, media : real
   contador, aprovados, reprovados : inteiro
   resp : caracter

inicio
// Seção de Comandos
   contador <- 1

   Repita

        limpatela
        
        Escreval("Aluno nº: ",contador)

           Repita
                 Escreval("Digite a primeira nota do aluno: ")
                 leia(nota1)
           Ate (nota1 <= 10) e (nota1 >= 0)


           Repita
                 Escreval("Digite a segunda nota do aluno: ")
                 leia(nota2)
           Ate (nota2 <= 10) e (nota2 >= 0)
           
        media <- (nota1 + nota2) / 2

           se media >= 6 entao
                aprovados <- aprovados + 1
           senao
                reprovados <- reprovados + 1
           fimse
           
           Repita
                 Escreval("gostaria de inserir uma nova nota? (S/N)")
                 leia(resp)
           Ate (resp = "S") ou (resp = "N")
           
           //Enquanto (resp <> "S") e (resp <> "N") faca
           //      Escreval("Gostaria de inserir uma nova nota? (S/N)")
           //      leia(resp)
           //Fimenquanto
        
        contador <- contador + 1
        
   ate (resp = "N")
        
   Escreval("Alunos aprovados: ", aprovados)
   Escreval("Alunos reprovados: ", reprovados)
fimalgoritmo
