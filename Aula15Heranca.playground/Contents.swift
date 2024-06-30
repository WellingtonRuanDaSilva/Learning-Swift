class Conta{
    var saldo = 0.0
    var nome: String
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func deposita (_ valor: Double) {
        saldo += valor
    }
    
    init (nome: String) {
        self.nome = nome
    }
}

class ContaPoupanca: Conta {
    var possuiCartaoDebito: Bool
    
    func solicitarDebito(){
        possuiCartaoDebito = true
        print("O Cliente está solicitando cartão débito")
    }
    
    override func sacar(_ valor: Double) {
        saldo -= valor + 10
    }
    
    init(nome: String, possuiCartaoDebito: Bool) {
        self.possuiCartaoDebito = possuiCartaoDebito
        super.init(nome: nome)
    }
}

var contaPoupanca = ContaPoupanca(nome: "Wellington", possuiCartaoDebito: false)
contaPoupanca.deposita(50)
contaPoupanca.sacar(20)
print(contaPoupanca.saldo)
contaPoupanca.solicitarDebito()

class ContaCorrente: Conta {
    func solicitarEmprestimo(_ valor: Double) {
        print("O cliente está solicitando um empréstimo no valor de \(valor)")
        //super chama metodo da classe pai
        super.deposita(valor)
    }
    
    // override edita funcao da classe pai
    override func sacar(_ valor: Double) {
        saldo -= valor + 5
    }
}

var contaCorrente = ContaCorrente(nome: "Ana")
contaCorrente.deposita(100)
contaCorrente.sacar(20)
print(contaCorrente.saldo)
contaCorrente.solicitarEmprestimo(1000)
print(contaCorrente.saldo)

func exibeSaldoDaConta(_ conta: Conta) {
    //print(conta.saldo)
    if conta is ContaCorrente{
        print ("Conta é do tipo conta corrente")
    }
    
    if let contaCorrente = conta as? ContaCorrente {
        contaCorrente.solicitarEmprestimo(200)
    }
    
    guard let contaPoupanca = conta as? ContaPoupanca else {return}
    print(contaPoupanca.possuiCartaoDebito)

}

exibeSaldoDaConta(contaCorrente)
exibeSaldoDaConta(contaPoupanca)
