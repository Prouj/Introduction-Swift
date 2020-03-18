import Foundation

class x {
  var num1 = 1
  var num2 = 2
}

struct y{
  var num1 = 2
  var num2 = 1
}

let instanciax = x()

var instanciay = y()

print(instanciax.num1)
print(instanciay.num1)

print(instanciax.num2)
print(instanciay.num2)

instanciay = y(num1: 100, num2 : 200)

print(instanciay.num1)
print(instanciay.num2)
