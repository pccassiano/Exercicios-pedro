algoritmo "Exercicio_4_Cap_3_Idade"
// Fun��o :
// Autor :
// Data : 05/03/2015
// Se��o de Declara��es 
var
   idade : inteiro
inicio
// Se��o de Comandos
   escreva("Digite a Idade: ")
   leia(idade)
   //Compara��es de maneira com desempenho ruim
   //se (idade >=5) e (idade <= 10) entao
   //   escreva("Infantil")
   //fimse
   
   //se (idade >=11) e (idade <= 17) entao
   //   escreva("Juvenil")
   //fimse
   
   //se (idade >=18) e (idade <= 30) entao
   //   escreva("Profissional")
   //fimse
   
   //se (idade > 30) entao
   //  escreva("Senior")
   //fimse
   
   //  Compara��es de maneira otimizada
   se (idade >=5) e (idade <= 10) entao
      escreva("Infantil")
   senao
      se (idade >=11) e (idade <= 17) entao
         escreva("Juvenil")
      senao
         se (idade >=18) e (idade <= 30) entao
            escreva("Profissional")
         senao
            se (idade > 30) entao
               escreva("Senior")
            senao
               escreva("Sua idade ainda n�o tem categoria")
            fimse
         fimse
      fimse
   fimse
fimalgoritmo
