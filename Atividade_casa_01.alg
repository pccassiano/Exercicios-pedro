algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 19/03/2015
// Se��o de Declara��es 
var
   sexo, denovo : caracter
   idade, idade_m, idade_f, masculino, feminino, contador : inteiro
   m_idade_m, m_idade_f : real
inicio
// Se��o de Comandos
   contador <- 1
   Repita

         Limpatela
         Escreval("Ficha N�: ",contador)

                   Repita
                      Escreval("Sexo masculino ou feminino? (M/F)")
                      Leia(sexo)
                   Ate(sexo = "M") ou (sexo = "F")

                   Se (sexo = "M") Entao

                      masculino <- masculino + 1
                      Repita
                            Escreval("Digite a idade:")
                            Leia(idade)
                      Ate (idade > 0)
                      idade_m <- idade_m + idade
                      contador <- contador + 1
                      
                   Senao
                   
                      feminino <- feminino + 1
                      Repita
                            Escreval("Digite a idade:")
                            Leia(idade)
                      Ate (idade > 0)
                      idade_f <- idade_f + idade
                      contador <- contador + 1
                      
                   Fimse

                   Repita
                      Escreval("Inserir novos dados? (S/N)")
                      Leia(denovo)
                   Ate(denovo = "S") ou (denovo = "N")
                   
   Ate(denovo = "N")
   
   Se (masculino = 0) Entao
      Escreval("N�o h� dados de homens")
   Senao
      Escreval("A quantidade de homens �:",masculino," e a m�dia da idade �:", (idade_m / masculino))
   Fimse

   Se (feminino = 0) Entao
      Escreval("N�o h� dados de mulheres")
   Senao
      Escreval("A quantidade de mulheres �:",feminino," e a m�dia da idade �:", (idade_f / feminino))
   Fimse
fimalgoritmo

