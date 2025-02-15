algoritmo "verifica_triangulo"
// Função :
// Autor :
// Data : 05/03/2015
// Seção de Declarações 
var

   lado1, lado2, lado3 : real
   r_nova : caracter

inicio
//Comando para loop
   Repita

//Comando para limpar a tela
         limpatela

//Identificação dos lados
         Escreval("Digite os valor dos 3 lados:")
         leia(lado1)
         leia(lado2)
         leia(lado3)

//Identificação do tipo do triangulo
         se (lado1 + lado2 > lado3) e (lado2 + Lado3 > lado1) ou (lado1 + lado3 > lado2) entao
              se (lado1 = lado2) e (lado2 = lado3) entao
                   Escreval("Com essas medidas podemos construir um triangulo equilátero!")
              senao
                   se (lado1 <> lado2) e (lado2 = lado3) ou (lado2 <> lado3) e (lado3 = lado1) ou (lado3 <> lado1) e (lado2 = lado1)  entao
                        Escreval("Com essas medidas podemos construir um triangulo isósceles!")
                   senao
                        se (lado1 <> lado2) e (lado2 <> lado3) entao
                             Escreval("Com essas medidas podemos construir um tringulo escaleno!")
                        fimse
                   fimse
              fimse
         senao
              Escreval("Não podemos construir um triangulo com essas dimensões")
         fimse

//Pergunta para Loop
         Escreval("Gostaria de colocar novas medidas? (S/N)")
         leia(r_nova)

   Ate (r_nova = "N")
         
         Escreval("Obrigado e volte sempre!")
fimalgoritmo
