struct Pessoa{
    let nome: String
    let idade: Int
    let altura: Double
    let peso: Double
    
    var imc: Double{
        return peso / (altura * altura)
    }
    
    var adulto: Bool {
        return idade >= 18
    }
}

//Desafio 2

class Empregado{
    var nome: String
    var salario: Double {
        willSet{
            if newValue > salario {
                print("Parabéns, você recebeu um aumento no salário")
            } else if newValue == salario {
                print("Parece que não houve uma promoção dessa vez")
            }
        }
        
        didSet{
            if salario < oldValue{
                print ("O novo salário não pode ser menor do que era antes")
                salario = oldValue
            }
        }
    }
    
    init(nome: String, salario: Double) {
        self.nome = nome
        self.salario = salario
    }
}

let empregado = Empregado(nome: "Daniel", salario: 3000)

empregado.salario = 3000
empregado.salario = 4000
empregado.salario = 2000
print(empregado.salario)
