protocol Area {
    var area: Double { get }
}

struct Quadrado: Area {
    var lado: Double
    
    var area: Double {
        return lado * lado
    }
}

struct Triangulo: Area {
    var base: Double
    var altura: Double
    
    var area: Double{
        return (base * altura) / 2
    }
}

let quadrado = Quadrado(lado: 7)
let triangulo = Triangulo(base: 4, altura: 3)
print(quadrado.area)
triangulo.area

// desafio 2

enum Moeda: Int {
    case UmCentavo = 1
    case CincoCentavos = 5
    case DezCentavos = 10
    case VinteCincoCentavos = 25
    case CinquentaCentavos = 50
    

    static func contarMoedas (_ moedas: [Self]) -> Int {
        var soma = 0
        for valor in moedas{
            soma += valor.rawValue
        }
        return soma
}

}

let moedas: [Moeda] = [.CincoCentavos, .UmCentavo, .CincoCentavos, .CincoCentavos, .VinteCincoCentavos, .DezCentavos]
Moeda.contarMoedas(moedas)
