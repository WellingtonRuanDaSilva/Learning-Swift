let pergunta = "Qual o valor de 8 x 2?"
let respostaCorreta = 16
let mninhaResposta = 10
var pontos = 0

if mninhaResposta == respostaCorreta{
    pontos += 1
} else {
    pontos -= 1
}

print(pontos)

let idade = 21
switch idade {
case 0..<13: print("Criança")
case 13..<18: print("Adolescente")
default: print("Adulto")
}

let idade1 = 22
let possuiRG = true

if idade1 >= 18 && possuiRG{
    print("Pode entrar")
} else {
    print("Não pode entrar")
}
