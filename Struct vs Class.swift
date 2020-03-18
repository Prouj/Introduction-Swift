import Foundation

// a struct cria uma cópia do objeto quando é feita alguma alteração
struct a {
    var num: Int
}

let struct_a = a(num: 1)
var struct_a_2 = struct_a 
struct_a_2.num = 2

print("Struct")
print(struct_a.num) 
print(struct_a_2.num)

// a class faz a alteração no objeto original
class B {
    var num2: Int
    init(num2:Int){
      self.num2 = num2
    }
}

let class_B = B(num2: 1)
let class_B_2 = class_B
class_B_2.num2 = 2

print("Class")
print(class_B.num2)
print(class_B_2.num2)
