algoritmo "Exemplo IF 1"
// Função :
// Autor :
// Data : 27/02/2015
// Seção de Declarações 
var
   nota1 : real
   nota2, media : real
inicio
// Seção de Comandos 
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
