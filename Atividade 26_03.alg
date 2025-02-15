algoritmo "semnome"
// Função :
// Autor :
// Data : 26/03/2015
// Seção de Declarações 
var
   quant_n : inteiro
   inter_i, inter_f : inteiro
   soma_p, soma_i : inteiro
   menor , maior : inteiro
   cont : inteiro
   num : inteiro
inicio
// Seção de Comandos
   Escreval("Digite a quantidade de numeros que deseja digitar: ")
   leia(quant_n)
   Escreval("Digite o intervalo inicial:")
   leia(inter_i)
   Escreval("Digite o intervalo final:")
   leia(inter_f)
   // Loop principal
   para cont de 0 ate quant_n passo 1 faca
   //entrada do numero validando o intervalo
      Repita
         Escreval("Digite o numero:")
         Leia(num)
      Ate (num >= inter_i) e (num <= inter_f)
      //inicializa o maior e menor vitor
      menor <- inter_f
      maior <- inter_f

      // inicializar o maior e menor Viotti
      //se ( cont = 1) entao
      //   maior <- num
      //   menor <- num
      //fimse
      // descobre o valor de quem é o maior e o menor numero
      Se (num < menor) entao
         menor <- num
      fimse

      se (num > maior) entao
      maior <- num
      fimse
      // calcule a somatoria dos pares e dos impares
      Se (num % 2 = 0) entao
         soma_p <- soma_p + num
      Senao
         soma_i <- soma_i + num
      Fimse
   Fimpara
   // Fase de exibição
   escreval ( "numero maior: ", maior ," numero Menor: " , menor)
   Escreval("Soma dos numeros pares: ", soma_p)
   Escreval("Soma dos numeros impares: ", soma_i)
   
fimalgoritmo
