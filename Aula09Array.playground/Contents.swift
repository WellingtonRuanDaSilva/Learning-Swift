var notas = [8.5, 9.0, 7.2 , 6.0]
notas[0]

var arrayVazio = Array<String>()

notas.isEmpty
arrayVazio.isEmpty

notas.count
notas.min()
notas.max()
notas.contains(8.5)
notas.contains(4.5)
notas.firstIndex(of: 9.0)
notas.firstIndex(of: 10.0)

notas.append(10)
notas.insert(5.0, at: 2)
notas += [8.2]
print(notas)

var elementoRemovido = notas.remove(at: 3)
print(elementoRemovido)

print(notas)

for nota in notas{
    print(nota)
}

for i in 0..<notas.count{
    print(notas[i])
}

for (index, elemento) in notas.enumerated(){
    print(index, elemento)
}

