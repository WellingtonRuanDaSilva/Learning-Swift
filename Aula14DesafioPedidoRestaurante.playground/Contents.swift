struct Restaurante{
    var nome: String
    var tipoComida: String
    var numeroPedidos: Int = 0
    
    mutating func recebePedido(){
        self.numeroPedidos += 1
    }
    
    func calculaTotalPedidos() -> Double{
        return 35.0 * Double(self.numeroPedidos)
    }
}

var restaurante = Restaurante(nome: "Restaurante Teste", tipoComida: "Italiana")
restaurante.recebePedido()
restaurante.recebePedido()
restaurante.calculaTotalPedidos()
