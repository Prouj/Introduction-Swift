import Foundation

let nome1 = "João"

var nome2: String?

var pessoa = nome2 ?? nome1 

print("pessoa é:\(pessoa)")

nome2 = "Jose"

pessoa = nome2 ?? nome1 

print("pessoa é: \(pessoa)")
