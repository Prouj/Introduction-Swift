import Foundation 

enum Feira {
  case uva (Int, Int)
  case maçã (Int, Int)
}

var escolha = Feira.uva(4, 4)

escolha = .maçã(4, 1)

switch escolha {
  case .uva (let preçouva, let kg1):
    print("preço do kilo: \(preçouva) quatidade pedida(em Kg): \(kg1)")
  case .maçã(let preçomaçã, let kg2): 
    print("preço do kilo: \(preçomaçã) \nquatidade pedida(em Kg): \(kg2)")

}
