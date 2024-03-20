import Foundation

struct Person {
    let name: String
    let age: Int
}

let foo = Person(name: "Foo", age: 20)

foo.name
foo.age

struct CommodoreComputer {
    let name: String
    let manuFacturer = "Commodore"
    
    // init(name: String) {
    //     self.name = name
    //     self.manuFacturer = "Commodore"
    // }
}

let c64 = CommodoreComputer(name: "C64")

c64.name
c64.manuFacturer

struct Person2 {
    let firstName: String
    let lastName: String
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

let fooBar = Person2(firstName: "Foo", lastName: "Bar")

fooBar.fullName

struct Car {
    var currentSpeed: Int
    mutating func drive(speed: Int) {
        "Driving..."
        currentSpeed = speed
    }
}

var mutableCar = Car(currentSpeed: 10)
let copy = mutableCar
mutableCar.drive(speed: 30)
mutableCar.currentSpeed
copy.currentSpeed

struct LivingThing {
    init() {
        "Im a living thing"
    }
}
// you cant do that
// struct Animel: LivingThing {
//
// }

struct Bike {
    let manufacturer: String
    let currentSpeed: Int
    func copy(currentSpeed: Int) -> Bike {
        Bike(manufacturer: self.manufacturer, currentSpeed: currentSpeed)
    }
}

let bike1 = Bike(manufacturer: "HD", currentSpeed: 20)

var bike2 = bike1.copy(currentSpeed: 30)
bike2.currentSpeed
bike1.currentSpeed
