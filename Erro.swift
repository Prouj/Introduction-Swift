import Foundation

enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}
struct Item {
    var price: Int
    var count: Int
}

class VendingMachine {
    var inventory = [
        "Fini": Item(price: 12, count: 7),
        "Batata": Item(price: 10, count: 0),
        "Chocolate": Item(price: 7, count: 11)
    ]
    var coinsDeposited = 0

    func vend(itemNamed name: String) throws {
        guard let item = inventory[name] else {
            throw VendingMachineError.invalidSelection
        }

        guard item.count > 0 else {
            throw VendingMachineError.outOfStock
        }

        guard item.price <= coinsDeposited else {
            throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
        }

        coinsDeposited -= item.price

        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem

        print("Entregando \(name)")
    }
}

let favoriteSnacks = [
    "Alice": "Batata",
    "Bob": "Xilito",
    "Eve": "Chocolate",
]

func buyFavoriteSnack(person: String, vendingMachine: VendingMachine) throws {
    let snackName = favoriteSnacks[person] ?? "Fini"
    try vendingMachine.vend(itemNamed: snackName)
}


var vendingMachine = VendingMachine()
vendingMachine.coinsDeposited = 50
do {
    try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)
    print("Compra concluída.")
    print("Troco \(vendingMachine.coinsDeposited)")
} catch VendingMachineError.invalidSelection {
    print("Escolha inválida.")
} catch VendingMachineError.outOfStock {
    print("Sem estoque.")
} catch VendingMachineError.insufficientFunds(let coinsNeeded) {
    print("Valor insuficiente. Adicione \(coinsNeeded) moedas.")
} catch {
    print("Erro: \(error).")
}
