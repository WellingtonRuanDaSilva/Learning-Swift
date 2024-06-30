class Empregado{
    var nome: String
    var salario: Double
    
    init(nome: String, salario: Double) {
        self.nome = nome
        self.salario = salario
    }
}

class Gerente: Empregado {
    var departamento: String
    
    init(nome: String, salario: Double, departamento: String) {
        self.departamento = departamento
        super.init(nome: nome, salario: salario)
    }
}

class Vendedor: Empregado {
    
    func percentualComissao(_ numeroVendas: Int) -> Double {
        return (0.1 * 50.0 * Double(numeroVendas)) + self.salario
    }
}

func verificaTipo(_ empregado: Empregado){
    if let gerente = empregado as? Gerente{
        print("O empregado \(gerente.nome) é um gerente e está no departamento \(gerente.departamento)")
    } else if let vendedor = empregado as? Vendedor {
        print("O empregado \(vendedor.nome) é um vendedor")
    } else {
        print("O empregado \(empregado.nome) é de um outro tipo")
    }
}

let vendedor = Vendedor(nome: "Daniel", salario: 2300)
let gerente = Gerente(nome: "Felipe", salario: 4000, departamento: "RH")
verificaTipo(vendedor)
verificaTipo(gerente)
print(vendedor.percentualComissao(2))
