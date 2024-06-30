func primo (_ number: Int) -> Bool{
    let start = 2
    for i in start..<number {
        if number % i == 0{
            return false
        }
    }
    return true
}
primo(6)
primo(7)

func mostraNome(nome: String?){
    guard let nome = nome else{
        print("Nome não identificado")
        return
    }
    print (nome)
}

mostraNome(nome: "Wellington")
mostraNome(nome: nil)

func divideConta(_ total: Double, _ numPessoas: Int) -> Double {
    let valorComTaxa = total * 1.1
    return valorComTaxa / Double(numPessoas)
}

let totalParaCadaPessoa = divideConta(120,4)
print(totalParaCadaPessoa)
