algoritmo "Exemplo IF 1"
// Fun��o :
// Autor :
// Data : 27/02/2015
// Se��o de Declara��es 
var
   nota1 : real
   nota2, media : real
inicio
// Se��o de Comandos 
   //entrada de dados
   escreva("Digite a primeira nota: ")
   leia(nota1)
   escreva("Digite a segunda nota: ")
   leia(nota2)
   
   //processamento
   media <- (nota1 + nota2) / 2
   
   //Saida de dados
   se (media >= 6) entao
      escreva("Parabens!!!, voce passou")
   senao
      escreva("Tem que estudar um pouco mais!!!")
   fimse
   
fimalgoritmo
