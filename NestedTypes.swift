//401, 402
import Foundation


class Idade {
    var b = Datas()
    class Datas{
        var x: Int = 0
        var y: Int = 0
        func calc(_ x: Int,_ y: Int) -> String {
            let z = x - y
            return "X vale \(z)"
        }
    }
}


var a = Idade()
print(a.b.calc(2020, 1999))
