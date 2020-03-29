//
//  main.swift
//  Teste01
//
//  Created by Paulo Rubem on 25/03/20.
//  Copyright © 2020 Paulo Rubem. All rights reserved.
//
import Foundation

struct Fahrenheit {
    var temperature: Double
    init(){
        temperature  = 32.0
    }
}
// Pode ser escrito com
//struct Fahrenheit {
//var temperature = 32

//
var f = Fahrenheit()
print("A temperatura padrão \(f.temperature) Fahrenheit")


//394
struct Celsius {
    var temperatureInCelsius: Double
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
}
let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
print(boilingPointOfWater.temperatureInCelsius)
let freezingPointOfWater = Celsius(fromKelvin: 273.15)
print(freezingPointOfWater.temperatureInCelsius)

struct Color {
    let red, blue: Double
    var green: Double? //iniciada automaticament como Nil
    init(red: Double, blue: Double) {
        self.red   = red
        self.blue  = blue
    }
    init(_ white: Double) {
        red   = white
        blue  = white
    }
}
var q = Color(red: 2.0, blue: 3.0)
print(q.red)
let x = Color(0.5)
print(x.red)




//395
class ShoppingListItem {
    var name: String?
    var quantity = 1
    var purchased = false
}
var item = ShoppingListItem()
print(item.quantity)

struct Size {
    var width = 0.0, height = 0.0
}
let twoByTwo = Size(width: 2.0, height: 2.0)
print(twoByTwo.width, twoByTwo.height)

let zeroByTwo = Size(height: 2.0)
print(zeroByTwo.width, zeroByTwo.height)

let zeroByZero = Size()
print(zeroByZero.width, zeroByZero.height)


//396
struct Animal {
    let species: String
    init?(species: String) {
        if species.isEmpty { return nil }
        self.species = species
    }
}
let someCreature = Animal(species: "🐺")

if let giraffe = someCreature {
    print("\(giraffe.species)")
}
let anonymousCreature = Animal(species: "")
if anonymousCreature == nil {
    print("erro na inicialização")
    
}



//397
class SomeClass {
    required init() {
    }
}

class SomeSubclass: SomeClass {
    required init() {
    }
}

//398
class Bank {
    static var coinsInBank = 10_000
    static func distribute(coins numberOfCoinsRequested: Int) -> Int {
        let numberOfCoinsToVend = min(numberOfCoinsRequested, coinsInBank)
        coinsInBank -= numberOfCoinsToVend
        return numberOfCoinsToVend
    }
    static func receive(coins: Int) {
        coinsInBank += coins
    }
}

class Player {
    var coinsInPurse: Int
    init(coins: Int) {
        coinsInPurse = Bank.distribute(coins: coins)
    }
    func win(coins: Int) {
        coinsInPurse += Bank.distribute(coins: coins)
    }
    deinit {
        Bank.receive(coins: coinsInPurse)
    }
}

var playerOne: Player? = Player(coins: 100)
print("A new player has joined the game with \(playerOne!.coinsInPurse) coins")
print("There are now \(Bank.coinsInBank) coins left in the bank")

playerOne!.win(coins: 2_900)
print("PlayerOne won 2000 coins & now has \(playerOne!.coinsInPurse) coins")
print("The bank now only has \(Bank.coinsInBank) coins left")

playerOne = nil
print("PlayerOne has left the game")
print("The bank now has \(Bank.coinsInBank) coins")




