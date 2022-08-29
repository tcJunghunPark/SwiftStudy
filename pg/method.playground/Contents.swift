import UIKit

struct Lecture{
    var title: String
    var maxStudent: Int = 10
    var numOfRegistered: Int = 0
    
    func remainSeats()-> Int {
        let remainSeats = maxStudent - numOfRegistered
        return remainSeats
    }
    mutating func register() -> Void {
        numOfRegistered += 1
    }
    
    static let target: String = "Anybody want to learn something"
    static func belong() -> String {
        return "Fast Campus"
    }
    
}

var lec = Lecture(title: "IOS Basic")

//func remainSeats(of lec: Lecture)-> Int {
//    let remainSeats = lec.maxStudent - lec.numOfRegistered
//    return remainSeats
//}

lec.remainSeats()

lec.register()
lec.register()
lec.register()

lec.remainSeats()

Lecture.target
Lecture.belong()

struct Math {
    static func abs(value: Int) -> Int {
        if value > 0 {
            return value
        }else {
            return -value
        }
    }
}

Math.abs(value:-20)

extension Math{
    static func square(value: Int) -> Int {
        return value * value
    }
    static func half(value: Int) -> Int {
        return value / 2
    }
}

var value: Int = 3

extension Int {
    func square() -> Int {
        return self * self
    }
    func half() -> Int {
        return self/2
    }
}

value.square()
value.half()
