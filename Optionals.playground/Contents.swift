import Foundation

func multiplyByTwo(_ value: Int? = nil) -> Int {
    if let value {
        return value * 2
    } else {
        return 0
    }
}

multiplyByTwo()
multiplyByTwo(4)
multiplyByTwo(nil)

let age: Int? = nil

if age != nil {
    "Age is there!"
} else {
    "Age is nil."
}

if let age {
    "Age is there \(age)"
} else {
    "No age is present."
}

let value : Int? = nil

if let safeValue = value {
    "Value is \(safeValue)"
} else {
    "value nil"
}

func checkAge() {
    guard age != nil else {
        "Age is nil as expected"
        return
    }
    "Age is not nil."
}

let age2: Int? = 0

func checkAge2() {
    guard let age2 else {
        "Age is nil."
        return
    }
    "age 2 is not nil. Value = \(age2)"
}

checkAge2()

switch age {
  case .none:
    "age has no value"
    break
  case let .some(value):
    "Age has value =  \(value)"
    break
}

if age2 == 0 {
    "Age2 is 0 as expected"
} else {
    "age2 is not 0."
}

// More readble
if age2 == .some(0) {
    "Age2 is 0 as expected"
} else {
    "age2 is not 0."
}

struct Person {
    let name: String
    let address: Address?
    
    struct Address {
        let firstLine: String?
    }
}

let foo: Person = Person(name: "Foo", address: nil)

if let fooFirstAddressLine = foo.address?.firstLine {
    fooFirstAddressLine
} else {
    "Foo doesnt have adress"
}

if let fooAddress = foo.address,
   let firstLine = fooAddress.firstLine {
    fooAddress
    firstLine
}

let bar: Person? = Person(name: "Bar", address: Person.Address(firstLine: nil))

if bar?.name == "Bar", bar?.address?.firstLine == nil {
    "Bars name is bar and has no first line of address"
} else {
    "Seems like something isnt working right!"
}

let baz: Person? = Person(name: "Bar", address: Person.Address(firstLine: "Baz first line"))

switch baz?.address?.firstLine {
case let .some(firstLine) where firstLine.starts(with: "Baz"):
    "Baz first address line = \(firstLine)"
case let .some(firstLine):
    "Baz first address line that didnt match the previous"
    firstLine
case .none:
    "Baz first address line is nil??? Weird!"
}

func getFullName(firstName: String, lastName: String?) -> String? {
    if let lastName {
        return "\(firstName) \(lastName)"
    } else {
        return nil
    }
}

getFullName(firstName: "Foo", lastName: nil)
getFullName(firstName: "Foo", lastName: "Bar")

// Best one
func getFullName2(firstName: String, lastName: String?) -> String? {
    guard let lastName else {
        return nil
    }
    
    return "\(firstName) \(lastName)"
}
