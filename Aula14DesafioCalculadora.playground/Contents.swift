struct Calculadora{
    let numero1: Double
    let numero2: Double
    
    func soma() -> Double {
        return numero1 + numero2
    }
    
    func subtracao() -> Double {
        return numero1 - numero2
    }
    
    func divisao() -> Double {
        return numero1 / numero2
    }
    
    func multiplicacao() -> Double {
        return numero1 * numero2
    }
}

let calculadora = Calculadora(numero1: 6, numero2: 4)

print("Soma = \(calculadora.soma())")
print("Subtração = \(calculadora.subtracao())")
print("Divisão = \(calculadora.divisao())")
print("Multiplicação = \(calculadora.multiplicacao())")

