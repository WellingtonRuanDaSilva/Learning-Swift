struct ContaCorrenteStruct{
    var saldo = 0.0
    var nome: String
    
    mutating func sacar (_ valor: Double){
        saldo -= valor
    }
    
    mutating func depositar (_ valor: Double){
        saldo += valor
    }
}

var contaCorrenteStruct01 = ContaCorrenteStruct(nome: "Giovanna")
var contaCorrenteStruct02 = contaCorrenteStruct01
contaCorrenteStruct01.depositar(100)
contaCorrenteStruct02.depositar(50)
print("Saldo da conta corrente struct 01 = \(contaCorrenteStruct01.saldo)")
print("Saldo da conta corrente struct 02 = \(contaCorrenteStruct02.saldo)")
// Struct cria uma copia da mesma instacia quando igualada e utiliza uma nova memoria por isso os valores sao diferetes e so da para usar var com var e let com let

class ContaCorrenteClass{
    var saldo = 0.0
    var nome: String
    
    func sacar (_ valor: Double){
        saldo -= valor
    }
    
    func depositar (_ valor: Double){
        saldo += valor
    }
    
    init(nome: String){
        self.nome = nome
    }
}

let contaCorrenteClass01 = ContaCorrenteClass(nome: "Ana")
let contaCorrenteClass02 = contaCorrenteClass01
contaCorrenteClass01.depositar(60)
contaCorrenteClass02.depositar(100)
print("Salda da conta corrente classe 01 = \(contaCorrenteClass01.saldo)")
print("Salda da conta corrente classe 02 = \(contaCorrenteClass02.saldo)")
// Classe quando igualada uma mesma instancia ele entende sendo o mesmo dado ocupando o mesmo espaço de memoria por isso os valore sao iguais nas duas e pode se utilizar var com let, e classe tambem possui herança

