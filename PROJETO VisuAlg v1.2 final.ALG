Algoritmo "Projeto 15-04"

Var
   n1, n2, result, result1, result2: real
   e1, p1, i1, media, x, media1, media2: inteiro
   sexo, letra, bin: caracter
   
Inicio
repita
escreval ("Digite um n�mero correspondente ao que deseja fazer: ")
escreval ("1. Soma")
escreval ("2. Subtra��o")
escreval ("3. Divis�o")
escreval ("4. M�dia de faixa et�ria e m�dia de faixa et�ria por sexo")
escreval ("5. Soma de n�meros primos")
escreval ("6. Mudan�a de Base (Decimal para Bin�rio e vice-versa)")
escreval ("7. Sair")
escreval ("")
leia (e1)

se (e1 = 1) entao
   escreval ("Digite dois n�meros para efetuar a soma: ")
   leia (n1, n2)
   result <- n1+n2
   escreval ("Resultado da soma: ", result)
   escreval ("")
fimse

se (e1 = 2) entao
   escreval ("Digite dois n�meros para efetuar a subtra��o: ")
   leia (n1, n2)
   result <- n1-n2
   escreval ("Resultado da subtra��o: ", result)
   escreval ("")
fimse

se (e1 = 3) entao
   escreval ("Digite primeiro o n�mero dividendo e depois o n�mero divisor: ")
   leia (n1)
   repita  //repita feito para que seja digitado um n�mero diferente de 0
      leia (n2)
      se (n2 <> 0) entao
         result <- n1/n2
         escreval ("Resultado da divis�o: ", result)
         escreval ("")
      senao
         escreval ("N�o � poss�vel dividir por 0, tente novamente com outro n�mero")
      fimse
   ate (n2 <> 0)
fimse

se (e1 = 4) entao
   escreval ("Digite o n�mero de pessoas para o c�lculo: ")
   leia (p1)
   para x de 1 ate p1 passo 1 faca //repetir� at� o n�mero digitado pelo usu�rio
      escreval ("Digite a idade da pessoa", x, ": ")
      repita //repita para caso seja digitado uma idade de valor negativo
         leia (i1)
         se (i1 < 0) entao
            escreval ("A idade n�o pode ser negativa, tente novamente: ")
         fimse
      ate (i1 >= 0)
      escreval ("Digite o sexo da pessoa", x, ", m para masculino e f para feminino: ")
      repita //repita para caso seja digitado uma letra diferente das op��es
         leia (sexo)
         se (sexo <> "m")e(sexo <> "f") entao
            escreval ("Letra n�o correspondente a m ou f, tente novamente: ")
         fimse
      ate (sexo = "m")ou(sexo = "f")
      media <- media+i1
      se (sexo = "m") entao
         n1 <- n1+1 // contador para tirar a m�dia masculina
         media1 <- media1+i1
      fimse
      se (sexo = "f") entao
         n2 <- n2+1 // contador para tirar a m�dia feminina
         media2 <- media2+i1
      fimse
   fimpara
   se (p1 <> 0) entao // Para evitar divis�o por 0
      result <- media/p1
      escreval ("A m�dia de faixa etaria �: ", result)
   senao
      escreval ("Nenhuma pessoa informada!")
   fimse
   se (n1 <> 0) entao // Para evitar divis�o por 0
      result1 <- media1/n1
      escreval ("A m�dia de faixa etaria do sexo masculino �: ", result1)
   senao
      escreval ("Nenhuma pessoa do sexo masculino encontrada!")
   fimse
   se (n2 <> 0) entao // Para evitar divis�o por 0
      result2 <- media2/n2
      escreval ("A m�dia de faixa etaria do sexo feminino �: ", result2)
   senao
      escreval ("Nenhuma pessoa do sexo feminino encontrada!")
   fimse
   escreval ("")
fimse

se (e1 = 5) entao
   escreval ("Digite um n�mero para calcular a soma de todos os n�meros primos entre 1 e o n�mero digitado: ")
   escreval ("")
   leia (p1)
   escreval ("N�meros primos de 1 at� o n�mero digitado: ")
   para x de 1 ate p1 passo 1 faca
      n1 <- 0 //reseta o contador do n�mero primo
      para i1 de 1 ate x passo 1 faca
         se (x mod i1 = 0) entao //as variaveis x e i1 alternam entre 1 e o valor de p1
            n1 <- n1+1 //contador para identificar o n�mero primo
         fimse
      fimpara
      se (n1 = 2) entao
         escreval (x)
         result <- result+x
      fimse
   fimpara
   escreval ("a soma de todos os n�meros primos deu: ", result)
   escreval ("")
fimse

se (e1 = 6) entao
   escreval ("Digite d para transformar decimal em binario e b para transformar binario em decimal")
   escreval ("")
   leia (letra)
   se (letra = "d") entao
      escreval ("Entre com um n�mero inteiro:")
      leia (p1)
      i1 <- p1
      repita
         se (p1 mod 2 = 0) entao // incremento de 0 ou 1 no valor bin�rio
            bin <- "0" + bin
         senao
            bin <- "1" + bin
         fimse
         p1 <- p1 div 2 // resultado da divis�o por 2
      ate (p1 <= 0)
      escreval ("A representa��o bin�ria de", i1, " �: ", bin)
   fimse
   se (letra = "b") entao
      escreval ("Entre com um n�mero igual a quantia de n�meros bin�rios:")
      escreval ("")
      leia (p1)
      escreval ("Agora digite o n�mero bin�rio:")
      para x de 0 ate (p1-1) passo 1 faca
         leia (i1)
         se (i1 = 1) entao
            result <- result+(2^x)
         senao
            result <- result+0
         fimse
      fimpara
      escreval ("A representa��o decimal �:", result)
   fimse
fimse

ate (e1 = 7)
Fimalgoritmo