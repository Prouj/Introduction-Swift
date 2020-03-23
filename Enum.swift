import Foundation 

enum Feira: CaseIterable {
  case uva, maçã, tomate, banana
}
let x = Feira.allCases.count
print("Opções: \(x) ")

for i in Feira.allCases {
    print(i)

}

var escolha = Feira.banana

switch escolha {
  case .uva:
    print("6 reais o kg")
  case .maçã: 
    print("5 reais o kg")
  case .tomate:
    print("4 reais o kg")
  case .banana:
    print("3.50 reais o kg")

}
