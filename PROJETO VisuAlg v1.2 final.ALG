Algoritmo "Projeto 15-04"

Var
   n1, n2, result, result1, result2: real
   e1, p1, i1, media, x, media1, media2: inteiro
   sexo, letra, bin: caracter
   
Inicio
repita
escreval ("Digite um número correspondente ao que deseja fazer: ")
escreval ("1. Soma")
escreval ("2. Subtração")
escreval ("3. Divisão")
escreval ("4. Média de faixa etária e média de faixa etária por sexo")
escreval ("5. Soma de números primos")
escreval ("6. Mudança de Base (Decimal para Binário e vice-versa)")
escreval ("7. Sair")
escreval ("")
leia (e1)

se (e1 = 1) entao
   escreval ("Digite dois números para efetuar a soma: ")
   leia (n1, n2)
   result <- n1+n2
   escreval ("Resultado da soma: ", result)
   escreval ("")
fimse

se (e1 = 2) entao
   escreval ("Digite dois números para efetuar a subtração: ")
   leia (n1, n2)
   result <- n1-n2
   escreval ("Resultado da subtração: ", result)
   escreval ("")
fimse

se (e1 = 3) entao
   escreval ("Digite primeiro o número dividendo e depois o número divisor: ")
   leia (n1)
   repita  //repita feito para que seja digitado um número diferente de 0
      leia (n2)
      se (n2 <> 0) entao
         result <- n1/n2
         escreval ("Resultado da divisão: ", result)
         escreval ("")
      senao
         escreval ("Não é possível dividir por 0, tente novamente com outro número")
      fimse
   ate (n2 <> 0)
fimse

se (e1 = 4) entao
   escreval ("Digite o número de pessoas para o cálculo: ")
   leia (p1)
   para x de 1 ate p1 passo 1 faca //repetirá até o número digitado pelo usuário
      escreval ("Digite a idade da pessoa", x, ": ")
      repita //repita para caso seja digitado uma idade de valor negativo
         leia (i1)
         se (i1 < 0) entao
            escreval ("A idade não pode ser negativa, tente novamente: ")
         fimse
      ate (i1 >= 0)
      escreval ("Digite o sexo da pessoa", x, ", m para masculino e f para feminino: ")
      repita //repita para caso seja digitado uma letra diferente das opções
         leia (sexo)
         se (sexo <> "m")e(sexo <> "f") entao
            escreval ("Letra não correspondente a m ou f, tente novamente: ")
         fimse
      ate (sexo = "m")ou(sexo = "f")
      media <- media+i1
      se (sexo = "m") entao
         n1 <- n1+1 // contador para tirar a média masculina
         media1 <- media1+i1
      fimse
      se (sexo = "f") entao
         n2 <- n2+1 // contador para tirar a média feminina
         media2 <- media2+i1
      fimse
   fimpara
   se (p1 <> 0) entao // Para evitar divisão por 0
      result <- media/p1
      escreval ("A média de faixa etaria é: ", result)
   senao
      escreval ("Nenhuma pessoa informada!")
   fimse
   se (n1 <> 0) entao // Para evitar divisão por 0
      result1 <- media1/n1
      escreval ("A média de faixa etaria do sexo masculino é: ", result1)
   senao
      escreval ("Nenhuma pessoa do sexo masculino encontrada!")
   fimse
   se (n2 <> 0) entao // Para evitar divisão por 0
      result2 <- media2/n2
      escreval ("A média de faixa etaria do sexo feminino é: ", result2)
   senao
      escreval ("Nenhuma pessoa do sexo feminino encontrada!")
   fimse
   escreval ("")
fimse

se (e1 = 5) entao
   escreval ("Digite um número para calcular a soma de todos os números primos entre 1 e o número digitado: ")
   escreval ("")
   leia (p1)
   escreval ("Números primos de 1 até o número digitado: ")
   para x de 1 ate p1 passo 1 faca
      n1 <- 0 //reseta o contador do número primo
      para i1 de 1 ate x passo 1 faca
         se (x mod i1 = 0) entao //as variaveis x e i1 alternam entre 1 e o valor de p1
            n1 <- n1+1 //contador para identificar o número primo
         fimse
      fimpara
      se (n1 = 2) entao
         escreval (x)
         result <- result+x
      fimse
   fimpara
   escreval ("a soma de todos os números primos deu: ", result)
   escreval ("")
fimse

se (e1 = 6) entao
   escreval ("Digite d para transformar decimal em binario e b para transformar binario em decimal")
   escreval ("")
   leia (letra)
   se (letra = "d") entao
      escreval ("Entre com um número inteiro:")
      leia (p1)
      i1 <- p1
      repita
         se (p1 mod 2 = 0) entao // incremento de 0 ou 1 no valor binário
            bin <- "0" + bin
         senao
            bin <- "1" + bin
         fimse
         p1 <- p1 div 2 // resultado da divisão por 2
      ate (p1 <= 0)
      escreval ("A representação binária de", i1, " é: ", bin)
   fimse
   se (letra = "b") entao
      escreval ("Entre com um número igual a quantia de números binários:")
      escreval ("")
      leia (p1)
      escreval ("Agora digite o número binário:")
      para x de 0 ate (p1-1) passo 1 faca
         leia (i1)
         se (i1 = 1) entao
            result <- result+(2^x)
         senao
            result <- result+0
         fimse
      fimpara
      escreval ("A representação decimal é:", result)
   fimse
fimse

ate (e1 = 7)
Fimalgoritmo