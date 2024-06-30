class Conta{
    var saldo = 0.0
    var nome: String
    
    init(nome: String) {
        self.nome = nome
    }
    
    func sacar(_ valor: Double){
        saldo -= valor
    }
    
    func depositar(_ valor: Double){
        saldo += valor
    }
    
}

extension Conta {
    
    func transferir (_ contaDestino: Conta, _ valor: Double){
        sacar(valor)
        contaDestino.depositar(valor)
    }
}

var contaUser = Conta(nome: "User")
contaUser.depositar(200)

var contaAna = Conta(nome: "Ana")
contaUser.transferir(contaAna, 50)

print(contaUser.saldo)
print(contaAna.saldo)


//mais exemplo de extension
func contaCaracteresString(_ texto: String) -> Int {
    return texto.count
}
let texto = "Wellignton"
contaCaracteresString(texto)

extension String{
    func contaCaracteresString() -> Int {
        return self.count
    }
}
print(texto.contaCaracteresString())
