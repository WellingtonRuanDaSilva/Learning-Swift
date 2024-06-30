var nomes: Set<String> = ["Giovana", "Ana", "João", "Caio", "João"]
nomes.contains("Ana")

nomes.insert("Carla")
nomes.remove("Giovana")


//tuplas
typealias Coordenadas = (x: Int, y: Double, z: Double)
var coordenadas: Coordenadas = (x: 5, y: 3.5, z: 8.0)
coordenadas.0
coordenadas.1
coordenadas.x
coordenadas.y
coordenadas.z

var pessoa = (nome: "Giovanna", idade: 22)
pessoa.nome
pessoa.idade

var (nome, idade) = pessoa
print(nome)
print(idade)
