struct ContaCorrente{
    var saldo = 0.0
    var nome: String
    
    mutating func sacar (_ valor: Double){
        saldo -= valor
    }
    
    mutating func depositar (_ valor: Double){
        saldo += valor
    }
}

var contaCorrenteUser = ContaCorrente(nome: "Giovanna")
print(contaCorrenteUser.saldo)
contaCorrenteUser.depositar(1500)
print(contaCorrenteUser.saldo)

var contaCorrenteUser2 = ContaCorrente(nome: "Ana")
contaCorrenteUser2.depositar(200)
contaCorrenteUser2.sacar(100)
print(contaCorrenteUser2.saldo)
