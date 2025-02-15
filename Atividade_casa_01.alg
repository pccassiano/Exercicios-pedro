algoritmo "semnome"
// Função :
// Autor :
// Data : 19/03/2015
// Seção de Declarações 
var
   sexo, denovo : caracter
   idade, idade_m, idade_f, masculino, feminino, contador : inteiro
   m_idade_m, m_idade_f : real
inicio
// Seção de Comandos
   contador <- 1
   Repita

         Limpatela
         Escreval("Ficha Nº: ",contador)

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
      Escreval("Não há dados de homens")
   Senao
      Escreval("A quantidade de homens é:",masculino," e a média da idade é:", (idade_m / masculino))
   Fimse

   Se (feminino = 0) Entao
      Escreval("Não há dados de mulheres")
   Senao
      Escreval("A quantidade de mulheres é:",feminino," e a média da idade é:", (idade_f / feminino))
   Fimse
fimalgoritmo

