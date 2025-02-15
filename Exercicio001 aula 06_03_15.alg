algoritmo "contagem_de_1_a_10"
// Função :
// Autor :
// Data : 05/03/2015
// Seção de Declarações 
var

   contador : inteiro
   num1, num2, num3 : inteiro

inicio
// Seção de Comandos
//teste de mesa
        // A seria o "num1", B seria "num2" e C seria "num3"
// QUANDO C > 0
   // A é acrescido de C até chegar em B (A < B)
// quando C < 0
   // A é decrescido de C ate chegar em B (A > B)
        escreval("Digite o valor inicial")
        leia(num1)
        escreval("Digite o valor final")
        leia(num2)
        escreval("Digite o valor de intervalo entre eles")
        leia(num3)
        
   para contador de num1 ate num2 passo num3 faca
        se (contador % 2 = 0) entao
           escreval(contador," Par")
        senao
           escreval(contador," Impar")
        fimse
   fimpara

fimalgoritmo
