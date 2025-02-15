algoritmo "Par ou Impar"
// Função :
// Autor :
// Data : 28/02/2015
// Seção de Declarações 
var

   nome:caracter
   P_I:caracter
   numero:inteiro
   numero_pc:inteiro
   soma:inteiro
   novamente:caracter
   placar_j, placar_c:inteiro

inicio
// Seção de Comandos
   Escreval("Bem vindo ao Par ou Impar!")
   Escreva("Qual é seu nome: ")
   leia(nome)
             Repita
   Escreval("Placar:")
   Escreval(nome,":", placar_j, " Computador:" ,placar_c)
   Escreval(nome," agora escolha par ou impar: ")
   leia(P_I)
            Escolha P_I
                    Caso "par"
                         Escreval("Então eu sou impar")
                    Caso "impar"
                         Escreval("Então eu sou par")
            fimescolha
   Escreva("Agora escolha um numero de 0 a 100: ")
   leia(numero)
   numero_pc <- randi(101)
   Escreval("Eu escolhi o numero ",numero_pc)
   soma <- (numero + numero_pc) % 2
        se(soma>0) entao
        Escreval("O resultado é impar")
                    se(P_I = 0) entao
                    Escreval("Voce perdeu!")
                    placar_c <- placar_c + 1
                    senao
                    Escreval("Voce ganhou!")
                    placar_j <- placar_j + 1
                    fimse
        senao
        Escreval("O resultado é par")
                    se(P_I = 0) entao
                    Escreval("Voce ganhou!")
                    placar_j <- placar_j + 1
                    senao
                    Escreval("Voce perdeu!")
                    placar_c <- placar_c + 1
                    fimse
        fimse
   Escreval("Gostaria de jogar de novo? (S/N)")
   leia(novamente)
             Ate(novamente = "N")
   Escreva("Volte sempre!")
   
fimalgoritmo
