algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 05/03/2015
// Se��o de Declara��es 
var
   nome : caracter
   idade : inteiro
inicio
// Se��o de Comandos
   Escreva("Ol�, digite o seu nome: ")
   leia(nome)
   Escreva(nome, " agora digite sua idade: ")
   leia(idade)

   se (idade >= 5) e (idade <= 10) entao
        Escreva(nome, " voc� est� qualificado na modalidade infantil")
   senao
        se (idade >= 11) e (idade <= 17) entao
             Escreva(nome, " voc� est� qualificado na modalidade juvenil")
        senao
             se (idade >= 18) e (idade <= 30) entao
                  Escreva(nome, " voc� est� qualificado na modalidade profissional")
             senao
                  se (idade >= 30) entao
                       Escreva(nome, " voc� est� qualificado na modalidade s�nior")
                  fimse
             fimse
        fimse
   fimse
fimalgoritmo
