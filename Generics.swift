import Foundation

// 381 e 382
func seiLa<👽>(_ x: inout 👽,_ y: inout 👽){
    let temporario = x
    x = y
    y = temporario
}

var someInt = 3
var anotherInt = 107

seiLa(&someInt, &anotherInt)
print("\(someInt), \(anotherInt)")

var someString = "olá"
var anotherString = "tchau"

seiLa(&someString, &anotherString)
print("\(someString), \(anotherString)")

// 383
struct Stack<Elemento>{
    var itens = [Elemento]()
    mutating func push(_ item: Elemento){
        itens.append(item)
    }
    mutating func pop() -> Elemento{
        return itens.removeLast()
    }
}

var stackInt = Stack<Int>()
stackInt.push(4)
stackInt.push(3)
stackInt.push(2)
stackInt.push(1)

let topo = stackInt.pop()
print("Item do top: \(topo)")

// mostra o item do topo sem removelo da pilha
extension Stack {
    var topItem: Elemento? {
        return itens.isEmpty ? nil : itens[itens.count - 1]
    }
}

if let topItem = stackInt.topItem {
    print("Item do top: \(topItem)")
}


//384
func find<X: Equatable>(of valueToFind: X, in array:[X]) -> Int? {
    for (index, value) in array.enumerated() {
        if value == valueToFind {
            return index
        }
    }
    return nil
}

let array = ["Andrea", "Magno", "Paulo"]
if let stringIndex = find(of: "Andrea", in: array){
    print(stringIndex)
}


//385
protocol Container {
    associatedtype Item
    mutating func append(_ item: Item)
    var count: Int { get }
    subscript(i: Int) -> Item { get }
}
    
    struct Stack2<Element>: Container {
        // original Stack<Element> implementation
        var items = [Element]()
        mutating func push(_ item: Element) {
            items.append(item)
        }
        mutating func pop() -> Element {
            return items.removeLast()
        }
        // conformance to the Container protocol
        mutating func append(_ item: Element) {
            self.push(item)
        }
        var count: Int {
            return items.count
        }
        subscript(i: Int) -> Element {
            return items[i]
        }
    }
var new = Stack2<Int>()
new.append(3)
new.append(2)
new.append(1)
print(new.count)


protocol SuffixableContainer: Container {
    associatedtype Suffix: SuffixableContainer where Suffix.Item == Item
    func suffix(_ size: Int) -> Suffix
}

extension Stack2: SuffixableContainer {
    func suffix(_ size: Int) -> Stack2 {
        var result = Stack2()
        for index in (count-size)..<count {
            result.append(self[index])
        }
        return result
    }
    // Inferred that Suffix is Stack.
}
var stackOfInts = Stack2<Int>()
stackOfInts.append(10)
stackOfInts.append(20)
stackOfInts.append(30)
stackOfInts.append(40)
stackOfInts.append(50)
let suffix = stackOfInts.suffix(2)
print(suffix)

//386
func allItemsMatch<C1: Container, C2: Container>
    (_ someContainer: C1, _ anotherContainer: C2) -> Bool
    where C1.Item == C2.Item, C1.Item: Equatable {

        // Check that both containers contain the same number of items.
        if someContainer.count != anotherContainer.count {
            return false
        }

        // Check each pair of items to see if they're equivalent.
        for i in 0..<someContainer.count {
            if someContainer[i] != anotherContainer[i] {
                return false
            }
        }

        // All items match, so return true.
        return true
}

var stackOfStrings = Stack2<Int>()
stackOfStrings.push(26)
stackOfStrings.push(30)
stackOfStrings.push(540)

var arrayOfStrings = Stack2<Int>()
arrayOfStrings.push(26)
arrayOfStrings.push(30)
arrayOfStrings.push(540)

if allItemsMatch(stackOfStrings, arrayOfStrings) {
    print("All items match.")
} else {
    print("Not all items match.")
}

//387
extension Container {
    subscript<Indices: Sequence>(indices: Indices) -> [Item]
        where Indices.Iterator.Element == Int {
            var result = [Item]()
            for index in indices {
                result.append(self[index])
            }
            return result
    }
}
