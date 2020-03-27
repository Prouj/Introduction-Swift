import Foundation

//357
let Point = (0, 23)
switch Point {
case (let x, 0):
    print("eixo x com x sendo: \(x)")
case (0, let y):
    print("eixo y com y sendo: \(y)")
case let (x, y):
    print("Está em algum lugar: (\(x), \(y))")
}


//355
let someCharacter: Character = "q"
switch someCharacter {
case "a", "e", "i", "o", "u":
    print("\(someCharacter) é uma vogal")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
     "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(someCharacter) é uma consoante")
default:
    print("\(someCharacter) não é vogal nem consoante")
}

//358
let numero: Int = -1273981263
switch numero {
case let (x) where x > 0:
    print("\(numero) é positivo")
case let (x) where x < 0:
    print("\(numero) é negativo")
default:
    print("\(numero) é igual a 0")
}
