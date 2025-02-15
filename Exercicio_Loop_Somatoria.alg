algoritmo "Exercicio_Loop_Somatoria"
//Crie um programa que solicite do usuário quantos números ele quer entrar e qual o
//intervalo válido para os valores. Providencie um laço para essa entrada. A cada iteração do
//laço solicite o numero. Ao final do laço você deverá exibir o maior e o menor numero dentre
//todos digitados. Exibir também a somatória dos números pares e somatória dos números
//impares.
// Faça uma validação dos valores digitados conforme o intervalo informado pelo
//usuário. Para essa validação utilize o “enquanto”
var
   qtd_numero, valorInferior, valorSuperior, numero : inteiro
   cont, maior, menor, somaPar, somaImpar : inteiro
inicio
   //DEscobre quantos numeros serão digitados e o intervalo valido
   escreva("Digite quanos numeros quer digitar? ")
   leia(qtd_numero)
   escreva("Qual o intervalo Válido (inferior): ")
   leia(valorInferior)
   escreva("Qual o intervalo Válido (superior): ")
   leia(valorSuperior)
   
   //inicializa o maior e menor
   //Solução 1
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
      //Solução 2
      //se (cont = 1) entao
      //   maior <- numero
      //   menor <- numero
      //fimse

      //Descobre o quem é o maior e o menor
      se (numero < menor) entao
         menor <- numero
      fimse
      
      se (numero > maior) entao
         maior <- numero
      fimse
      //Calcula a somatoria dos pares e impares
      se (numero mod 2 = 0) entao //é par
         somaPar <- somaPar + numero
      senao
         somaImpar <- somaImpar + numero
      fimse
      
   fimpara
   //Fase de exibição
   escreval("Maior numero: ", maior)
   escreval("Menor numero: ", menor)
   escreval("Soma dos Pares: ", somaPar)
   escreval("Soma dos Impares: ", somaImpar)
   
fimalgoritmo
