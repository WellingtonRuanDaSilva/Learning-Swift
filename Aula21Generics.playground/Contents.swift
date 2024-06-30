func soma1(a: Int, b: Int) -> Int{
    return a + b
}
//so aceita numeros inteiros essa soma1
let resultado = soma1(a: 2, b: 3)

//usando Numeric permite funcionar com Int e Double a operação
func soma<T: Numeric>(a: T, b: T) -> T {
    return a + b
}

soma (a: 2.5, b: 3.0)
soma(a: 5, b: 4)
