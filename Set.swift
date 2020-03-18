import Foundation

var colors = Set<String>() // criando um Set vazio

print("Exixtem \(colors.count) cores no Set colors")

// verifica se o Set é vazio
if colors.isEmpty{
  print("Set colors está vazio")
} else {
  print("Set colors tem itens")
}

colors = (["yellow", "green", "brown", "purle"])

//verifica se ele contem um determinado valor
if colors.contains ("black") {
  print("Contém")
} else {
  print("Não contém")
}

colors.insert("blue") //comando para inserir um item do Set

// Naturalmente o set já entraga os valores de forma aleatória
for i in colors {
  print("valores contido em colors: \(i)")

}
print("\n--------------------------------------\n")

colors.remove("yellow") //comando para remove um item do Set

// entrega os itens em ordem
for j in colors.sorted() {
  print("valores contido em colors \(j)")
}

print("\n\(colors.sorted())")
