enum FormaDePagamento {
    case pix
    case boleto
    case saldoEmConta
}

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
    
    func pagamentoCartao(_ tipoPagamento: FormaDePagamento){
        switch tipoPagamento {
        case .pix: print ("O pagamento será efetuado por pix")
        case .boleto: print ("O pagamento será efetuado por boleto")
        case .saldoEmConta: print("O pagamento será efetuado por saldo em conta")
        }
    }
}

var contaUser: Conta = .init(nome: "User")
contaUser.pagamentoCartao(.pix)


enum Mes {
    case janeiro, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}

var janeiro = Mes.janeiro
var fevereiro: Mes = .fevereiro
