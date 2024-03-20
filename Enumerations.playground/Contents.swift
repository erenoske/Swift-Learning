import Foundation

enum Animals {
  case cat, dog, rabbit
}
let cat = Animals.cat
cat

if cat == Animals.cat {
    "This as a cat"
} else if cat == Animals.dog {
    "This is a dog"
} else {
    "This is something else"
}
// This is best
switch cat {
case .cat:
    "This is a cat"
    break
case .dog:
    "This is a dog"
    break
case .rabbit:
    "This is a rabbit"
    break
// You shouldnt use this
// default:
//     "This is something else"
}

enum Shortcut {
    case fileOrFolder(path: URL, name: String),
        wwwUrl(path: URL),
        song(artist: String, songName: String)
}

let wwwApple = Shortcut.wwwUrl(path: URL(string: "https://apple.com")!)

switch wwwApple {
case .fileOrFolder(path: let path, name: let name):
    path
    name
    break
case .wwwUrl(path: let path):
    path
    break
case .song(artist: let artist, songName: let songName):
    artist
    songName
    break
}

switch wwwApple {
case .fileOrFolder(let path, let name):
    path
    name
    break
case .wwwUrl(let path):
    path
    break
case .song(let artist, let songName):
    artist
    songName
    break
}

// this is best

switch wwwApple {
case let .fileOrFolder(path, name):
    path
    name
    break
case let .wwwUrl(path):
    path
    break
case let .song(artist, songName):
    artist
    songName
    break
}

if case let .wwwUrl(path) = wwwApple {
    path
}

let withoutYou = Shortcut.song(artist: "Symphony X", songName: "Without You")

if case let .song(_, songName) = withoutYou {
    songName
}

enum Vehicle {
    case car(manufacturer: String, model: String), bike(manufacturer: String, yearMade: Int)
    
    var manufacturer: String {
        switch self {
        case let .car(manufacturer, _),
            let .bike(manufacturer, _):
            return manufacturer
        }
    }
}

let car = Vehicle.car(manufacturer: "Tesla", model: "Model X")

car.manufacturer

let bike = Vehicle.bike(manufacturer: "HD", yearMade: 1987)

bike.manufacturer

enum FamilyMember: String {
    case father = "Dad", mother = "Mom", brother = "Bro", sister = "Sis"
}

FamilyMember.father.rawValue
FamilyMember.brother.rawValue

enum FavoriteEmoji: String, CaseIterable {
    case Blush = "happy", rocket = "rocket", fire = "fire"
}
FavoriteEmoji.allCases
FavoriteEmoji.allCases.map(\.rawValue)

if let blush = FavoriteEmoji(rawValue:  "happy") {
    "Found the blush emoji"
    blush
} else {
    "This emoji doesnt exist"
}

if let blush = FavoriteEmoji(rawValue:  "Snow") {
    "Found the blush emoji"
    blush
} else {
    "This emoji doesnt exist"
}

enum Height {
    case short, medium, long
    mutating func makeLong() {
        self = Height.long
    }
}

var myHeight = Height.medium
myHeight.makeLong()
myHeight
