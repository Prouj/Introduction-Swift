import Foundation

var x = 1, y = 6
let z = true
repeat {
    //play game
    if z {
        print("rodagem do repeat \(x)")
        x += 1
    }
} while (x <= y)
print("saiu do repeat-while")
