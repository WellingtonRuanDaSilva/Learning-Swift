func soma(_ num1: Int, _ num2: Int) -> Int {
    var resultado = num1 + num2
    return resultado
}

var resultado = soma(5, 3)
print(resultado)

func verificaAdulto(_ idade: Int) -> Bool {
    return idade >= 18
}
verificaAdulto(22)
verificaAdulto(17)

func somaNumero(_ numero: inout Int){
    numero += 1
    print(numero)
}
var valor = 10
somaNumero(&valor)
print(valor)
