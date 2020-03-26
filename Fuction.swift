
import Foundation

// 376
func teste(a: Int, b: Int = 30)
{
    print( a + b)
}

teste(a: 7)

teste(a: 20, b: 10)

// 379
func teste1(_ x: Int...) {
    var total = 0
    for i in x{
        total += i
    }
    print(total)
}
teste1(6, 7, 8, 9, 10)

// 377
func  teste2(_ x: Int, _ y: Int) -> Int {
    return x + y
}

func teste3(_ x: Int, _ y: Int) -> Int{
    return x * y
}
var mathFunction: (Int, Int) -> Int = teste2
print("Resultado: \(mathFunction(2, 3))")

mathFunction = teste3
print("Resultado: \(mathFunction(2, 3))")

let anotherMathFunction = teste2

func printresult(_ mathFunction: (Int, Int) -> Int, _ x: Int, _ y: Int){
    print("Resultado: \(mathFunction(x, y))")
}
printresult(teste2, 3, 5)


//378
//Como exemplo de função global temos afunções que usamos acima. Já Nested Fuction são 
funções que estão declaradas dentro de outras funções e por padrão ficam olcutas, mas podendo serem 
acessadas em outros escopos ao serem retornadas pela função a qual pertencem. Exemplo abaixo:

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int{return input + 1}
    func stepBackward(input: Int) -> Int{return input - 1}
    return backward ? stepBackward : stepForward
}
var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)

while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}
print("zero")

//380

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var qas = 25
var was = 379
swapTwoInts(&qas, &was)

print("\(qas), \(was)")
