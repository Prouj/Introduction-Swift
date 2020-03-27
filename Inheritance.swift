import Foundation
//388
class Vehicle {
    var currentSpeed = 70.0
var description: String {
    return "Viaja a \(currentSpeed) Km/h"
}
func makeNoise() {
    
}
}

//389
class Bicycle: Vehicle {
    var hasBasket = false
}


class Tandem: Bicycle {
    var  NumberOfPassengers = 0
}

let tandem = Tandem()
tandem.NumberOfPassengers = 3
tandem.currentSpeed = 15
tandem.hasBasket = true

print(tandem.description)
print("Capacidade para \(tandem.NumberOfPassengers) passageiros")
print("Possui cesta:", tandem.hasBasket)

//390
class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo")
    }
}

let train = Train()
train.makeNoise()

class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + ", na \(gear) marcha"
    }
}

let car = Car()
car.currentSpeed = 50
car.gear = 4
print("Car: \(car.description)")

final class AutomaticCar: Car{
    override var currentSpeed: Double {
        didSet{
            gear = Int(currentSpeed / 10.0) + 1
        }
    }
}

let automaticCar = AutomaticCar()
automaticCar.currentSpeed = 15
print(automaticCar.description)

//391
// Não executa, pois AutomaticCar é uma final class e não permite alterações
//class AutomaticCarSport: AutomaticCar {
//    override var currentSpeed: Double {
//    didSet{
//        gear = Int(currentSpeed / 20.0) + 1
//        }
//    }
//}
//let automaticCarSport = AutomaticCarSport()
//automaticCar.currentSpeed = 15
//print(automaticCarSport.description)

//392
if train is Car {
    print(true)
} else {
    print(false)
    }

//393
class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

let library = [
Movie(name: "Casablanca", director: "Michael Curtiz"),
Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
Movie(name: "Citizen Kane", director: "Orson Welles"),
Song(name: "The One And Only", artist: "Chesney Hawkes"),
Song(name: "Never Gonna Give You Up", artist: "Rick Astley")
]

for item in library {
    if let movie = item as? Movie {
        print("Movie: \(movie.name), dir. \(movie.director)")
    } else if let song = item as? Song {
        print("Song: \(song.name), by \(song.artist)")
    }
}

