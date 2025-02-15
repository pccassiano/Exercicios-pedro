algoritmo "Atividade_2_Cap_4"

var
   idade, qtdM, qtdF, somaIdadeM, somaIdadeF : inteiro
   sexo, resp : caractere
inicio
   resp <- "S"
   enquanto (resp = "S") ou (resp = "s") faca
      escreva("Digite a idade: ")
      leia(idade)

      escreva("Digite o Sexo (M/F): ")
      leia(sexo)
      se (sexo = "M") ou (sexo = "m") entao
         qtdM <- qtdM + 1
         somaIdadeM <- somaIdadeM + idade //Acumula Idade
      senao
         qtdF <- qtdF + 1
         somaIdadeF <- somaIdadeF + idade //Acumula Idade
      fimse
      
      escreva("Deseja Cadastrar outra pessoa (S/N):")
      leia(resp)
   fimenquanto
   
   escreval("Total Masculino:", qtdM)
   escreval("Total Feminino:", qtdF)
   escreval("Media Idade Masculina:", (somaIdadeM / qtdM))
   escreval("Media Idade Feminina:", (somaIdadeF / qtdF))
fimalgoritmo
