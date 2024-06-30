var telefone: String?
telefone = "99999-9999"
print(telefone)

if telefone != nil {
    print(telefone!)
}

var celular: String?

if let telefone = telefone, let celular = celular {
    print(telefone)
    print(celular)
}

func autenticar(usuario: String?, senha: String?){
    guard let usuario = usuario, let senha = senha else {return}
    print(usuario)
    print(senha)
}
autenticar(usuario: "joaosilva", senha: nil)

if let primeiroCaractere = telefone?.first {
    print(primeiroCaractere)
}

print (telefone ?? "Não há valor para telefone")


/*var numeroEmString = "45"
var numero = Int(numeroEmString)
print(numero)*/
