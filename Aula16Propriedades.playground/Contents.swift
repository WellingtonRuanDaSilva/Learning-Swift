class Conta {
    //propriedade armazenada
    var saldo = 0.0 {
        //observador de propriedade - willset, didSet
        willSet{
            print("O saldo está sendo alterado! O seu novo valor será \(newValue)")
        }
        /*willSet (novoValor) {
            print("O saldo está sendo alterado! O seu novo valor será \(novoValor)")
        }*/
        didSet{
            print("O saldo está sendo alturado! O seu valor antigo era \(oldValue)")
        }
    }
    var nome: String
    
    //propriedade estatica
    static var taxaTransferencia = 0.1
    
    //propriedade computada
    var negativado: Bool {
        return saldo < 0
    }
    
    func sacar(_ valor: Double){
        saldo -= valor
    }
    
    func depositar(_ valor: Double){
        saldo += valor
    }
    
    init(nome: String) {
        self.nome = nome
    }
}

var contaUser = Conta(nome: "User")
contaUser.sacar(20)
print(contaUser.negativado)
contaUser.depositar(100)
print(contaUser.negativado)
print(Conta.taxaTransferencia)
