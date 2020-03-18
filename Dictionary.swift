import Foundation

var colors = [Int:String] () //dictionary vazio

if colors.isEmpty {
    print("Vazio")
} else {
    print("Não é vazio")
}

colors[1] = "black"
colors[2] = "white"

print("Contém \(colors.count) itens")

colors[1] = "yellow" // valor da chave 1 foi alterado

//altera o valor e printa o antigo 
if let x = colors.updateValue("blue", forKey: 2) {
    print("Valor antigo da chave 2: \(x).")
}

//printa todos as chaves e valores
for(chave, valor) in colors{
  print("\(chave) : \(valor)")
}

//printa o valor da chave 
print(colors[1]!)
