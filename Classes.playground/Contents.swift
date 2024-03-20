import Foundation

class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func increaseAge() {
        self.age += 1
    }
}

let foo = Person(name: "Foo", age: 20)

foo.age
foo.increaseAge()
foo.age

foo.age
let bar = foo
bar.increaseAge()
bar.age
foo.age

if foo === bar {
    "Foo and Bar point to the same memory"
} else {
    "They dont point to the same memory"
}

class Vehicle {
    func goVroom() {
        "Vroom vroom"
    }
}

class Car: Vehicle {
    
}

let car = Car()
car.goVroom()

class Person2 {
    // You cant change from outside
    private(set) var age: Int
    init(age: Int) {
        self.age = age
    }
    func increaseAge() {
        self.age += 1
    }
}

let baz = Person2(age: 20)
baz.age
baz.increaseAge()
baz.age

class Tesla {
    let manufacturer = "Tesla"
    let model: String
    let year: Int
    
    init() {
        self.model = "X"
        self.year = 2023
    }
    init (model: String, year: Int) {
        self.model = model
        self.year = year
    }
    convenience init (model: String) {
        self.init(model: model, year: 2023)
    }
    convenience init (year: Int) {
        self.init(model: "X", year: year)
    }
}

class TeslaModelY: Tesla {
    override init() {
        super.init(model: "Y", year: 2023)
    }
}

let modelY = TeslaModelY()
modelY.model
modelY.year
modelY.manufacturer

let modelX = Tesla(year: 2021)
modelX.model
modelX.year

let fooBar = Person2(age: 20)
fooBar.age
func doSomething(with person: Person2) {
    person.increaseAge()
}
doSomething(with: fooBar)
fooBar.age

class myClass {
    init() {
        "Initialized"
    }
    func doSomething() {
        // empty
    }
    deinit {
        "Deinitialized"
    }
}

let myClosure = {
    let myClass = myClass()
    myClass.doSomething()
}
myClosure()

