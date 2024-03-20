import Foundation

func performInt(_ op: (Int, Int) -> Int, on lhs: Int, and rhs: Int) -> Int {
    op(lhs, rhs)
}

performInt(+, on: 10, and: 20)
performInt(-, on: 10, and: 20)
performInt(*, on: 10, and: 20)
performInt(/, on: 20, and: 10)

func perform<N: Numeric>(_ op: (N, N) -> N, on lhs: N, and rhs: N) -> N {
    op(lhs, rhs)
}

let doubleType = perform(+, on: 30, and: 1.2)
let doubleTypeSecond = perform(/, on: 10.0, and: 20.0)
let dobleTypeThird = perform(+, on: 10.0, and: 20.0)
let intType = perform(+, on: 10, and: 20)

func perform2<N>(_ op: (N, N) -> N, on lhs: N, and rhs: N) -> N where N: Numeric {
    op(lhs, rhs)
}

perform2(+, on: 10, and: 20.2)
perform2(-, on: 10, and: 20)
perform2(*, on: 10, and: 20)
perform2(/, on: 20, and: 10)

protocol CanJump {
    func jump()
}

protocol CanRun {
    func run()
}

struct Person: CanJump, CanRun {
    func jump() {
        "Jumping..."
    }
    
    func run() {
       "Running..."
    }
}

func jumpAndRun<T: CanJump & CanRun>(value: T) {
    value.jump()
    value.run()
}

let person = Person()
jumpAndRun(value: person)
