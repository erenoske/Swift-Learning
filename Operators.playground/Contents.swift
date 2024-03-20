import Foundation

let myAge = 22
let yourAge = 21

if myAge > yourAge {
    "I'm older than yoo"
} else if myAge < yourAge {
    "I'm younger than you"
} else {
    "We are the same age"
}
let myMoethersAge = myAge + 30
let doubleMyAge = myAge * 2

// 1. unary prefix
let foo = !true
// 2. unary postfix
let name = Optional("Vandad")
type(of: name)
let unaryPostFix = name!
type(of: unaryPostFix)
// 3. binary infix
let rusult = 1 + 2
let names = "Foo" + " " + "Bar"

let age = 30
// let message: String
// if age >= 18 {
//     message = "You are an adult"
// } else {
//     message = "You are not yet an adult"
// }
let message = age >= 18 ? "You are an adult" : "You are not yet an adult"
