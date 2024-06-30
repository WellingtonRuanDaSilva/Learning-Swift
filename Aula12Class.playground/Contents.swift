class ContaCorrente{
    var saldo: Double
    var nome: String
    
    func sacar (_ valor: Double){
        saldo -= valor
    }
    
    func depositar (_ valor: Double){
        saldo += valor
    }
    
    init(nome: String){
        saldo = 0.0
        self.nome = nome
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
