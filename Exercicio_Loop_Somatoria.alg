algoritmo "Exercicio_Loop_Somatoria"
//Crie um programa que solicite do usu�rio quantos n�meros ele quer entrar e qual o
//intervalo v�lido para os valores. Providencie um la�o para essa entrada. A cada itera��o do
//la�o solicite o numero. Ao final do la�o voc� dever� exibir o maior e o menor numero dentre
//todos digitados. Exibir tamb�m a somat�ria dos n�meros pares e somat�ria dos n�meros
//impares.
// Fa�a uma valida��o dos valores digitados conforme o intervalo informado pelo
//usu�rio. Para essa valida��o utilize o �enquanto�
var
   qtd_numero, valorInferior, valorSuperior, numero : inteiro
   cont, maior, menor, somaPar, somaImpar : inteiro
inicio
   //DEscobre quantos numeros ser�o digitados e o intervalo valido
   escreva("Digite quanos numeros quer digitar? ")
   leia(qtd_numero)
   escreva("Qual o intervalo V�lido (inferior): ")
   leia(valorInferior)
   escreva("Qual o intervalo V�lido (superior): ")
   leia(valorSuperior)
   
   //inicializa o maior e menor
   //Solu��o 1
   maior <- valorInferior
   menor <- valorSuperior
   
   //Loop Principal
   para cont de 1 ate qtd_numero passo 1 faca
      //entrada do numero validando o intervalo
      repita
         escreva("Digite um Numero dentro do intervalo de ", valorInferior, " ate ", valorSuperior)
         leia(numero)
      ate (numero >= valorInferior) e (numero <= valorSuperior)
      //inicializa o maior e menor
      //Solu��o 2
      //se (cont = 1) entao
      //   maior <- numero
      //   menor <- numero
      //fimse

      //Descobre o quem � o maior e o menor
      se (numero < menor) entao
         menor <- numero
      fimse
      
      se (numero > maior) entao
         maior <- numero
      fimse
      //Calcula a somatoria dos pares e impares
      se (numero mod 2 = 0) entao //� par
         somaPar <- somaPar + numero
      senao
         somaImpar <- somaImpar + numero
      fimse
      
   fimpara
   //Fase de exibi��o
   escreval("Maior numero: ", maior)
   escreval("Menor numero: ", menor)
   escreval("Soma dos Pares: ", somaPar)
   escreval("Soma dos Impares: ", somaImpar)
   
fimalgoritmo
