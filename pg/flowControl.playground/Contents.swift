import UIKit
import Foundation
//
//var i = 0
//while i < 10{
//    print(i)
//    i += 1
//}
//
//print("--->repeat")
//i = 0
//repeat {
//    print(i)
//    i += 1
//}while i < 10

//let closedRange = 0...10
//let halfClosedRange = 0..<10
//
//var sum = 0
//for i in closedRange {
//    print("---> \(i)")
//    sum += i
//}
//
//print("---> total Sum: \(sum)")
//
//var sinValue: CGFloat = 0
//for i in closedRange {
//    sinValue = sin(CGFloat.pi/4 * CGFloat(i))
//}
//let name = "Tacohun"
//for _ in closedRange {
//    print("--->name: \(name)")
//}
//
//
//for i in closedRange {
//    if i % 2 == 0{
//        print("--->  짝수: \(i)")
//}
//}
//
//for i in closedRange where i % 2 == 0{
//    print("---> 짝수: \(i)")
//}

let coordinate = (x:5, y: 4)

switch coordinate{
case (0,0):
    print("원점")
case (let x, 0):
    print("x축 x: \(x)")
case (0, let y):
    print("y축 y: \(y)")
case (let x, let y) where x == y:
    print("x y same x, y = \(x), \(y)")
case (let x, let y):
    print("??? x, y = \(x), \(y)")
    
    
}
