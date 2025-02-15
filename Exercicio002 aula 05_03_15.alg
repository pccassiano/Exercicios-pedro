algoritmo "semnome"
// Função :
// Autor :
// Data : 05/03/2015
// Seção de Declarações 
var
   nome : caracter
   idade : inteiro
inicio
// Seção de Comandos
   Escreva("Olá, digite o seu nome: ")
   leia(nome)
   Escreva(nome, " agora digite sua idade: ")
   leia(idade)

   se (idade >= 5) e (idade <= 10) entao
        Escreva(nome, " você está qualificado na modalidade infantil")
   senao
        se (idade >= 11) e (idade <= 17) entao
             Escreva(nome, " você está qualificado na modalidade juvenil")
        senao
             se (idade >= 18) e (idade <= 30) entao
                  Escreva(nome, " você está qualificado na modalidade profissional")
             senao
                  se (idade >= 30) entao
                       Escreva(nome, " você está qualificado na modalidade sênior")
                  fimse
             fimse
        fimse
   fimse
fimalgoritmo
