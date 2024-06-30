var intervaloFechado = 10...20
var intervaloSemiAberto = 10..<20

var numero = 20

switch numero {
case 0...1: print ("Número está entre 0 e 10")
case 10...20: print ("Número está entre 10 e 20")
default: print ("Número é maior do que 20")
}

var animal = "Cachorro"

switch animal{
case "Cachorro", "Gato": print("Animal doméstico")
default: print("Animal Selvagem")
}

switch numero {
case _ where numero % 2 == 0: print("Numero é par")
case _ where numero % 2 != 0: print("Numero é ímpar")
default: break
}

var numeroAleatorio = Int.random(in: 0...100)
print(numeroAleatorio)
