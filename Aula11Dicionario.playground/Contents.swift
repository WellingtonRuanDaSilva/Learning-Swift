var pontuacao = [
    "joaosilva": 20,
    "felipesilva": 10,
    "giovanasilva": 15
]

var pessoas: [String: Int] = [:]
pessoas.reserveCapacity(10)

print(pontuacao["felipesilva"])
pontuacao.isEmpty
pontuacao.count
pontuacao["anaclara"] = 30
pontuacao["giovanasilva"] = 50
print(pontuacao)
pontuacao.updateValue(60, forKey: "giovanasilva")
pontuacao.updateValue(30, forKey: "pedrosantos")
print(pontuacao)
pontuacao["giovanasilva"] = nil
print(pontuacao)
pontuacao.removeValue(forKey: "pedrosantos")
print(pontuacao)


for (nome, pontuacao) in pontuacao {
    print("O usuário \(nome) fez \(pontuacao) pontos.")
}

for nome in pontuacao.keys {
    print(nome)
}

for pontos in pontuacao.values{
    print(pontos)
}



