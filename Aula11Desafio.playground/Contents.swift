func calculaMedia(_ notas: [Double]) -> Double{
    var somaNotas = 0.0
    let quantidadeElementos = notas.count
    for nota in notas {
        somaNotas += nota
    }
    return somaNotas / Double(quantidadeElementos)
}

let notas = [8.9, 10, 9.5, 6.7, 8.5]
let mediaNotas = calculaMedia(notas)
print(mediaNotas)

func exibeEstado(_ estados: [String: String]){
    for estado in estados.values{
        if estado.count > 8{
            print(estado)
        }
    }
}

let estados = [
    "SP": "São Paulo",
    "CE": "Ceará",
    "RJ": "Rio de Janeiro"
]
exibeEstado(estados)
