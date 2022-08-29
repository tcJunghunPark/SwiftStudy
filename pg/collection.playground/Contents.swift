import UIKit

var evenNumbers: [Int] = [2,4,6,8]
//let evenNumbers2: Array<Int> = [2,4,6,8]

evenNumbers.append(10)
evenNumbers += [12,14,16]
evenNumbers.append(contentsOf: [18,20])

//let isEmpty = evenNumbers.isEmpty
evenNumbers.count

print(evenNumbers.first!)
let firstItem = evenNumbers.first

if let firstElement = evenNumbers.first{
    print("---> first element is : \(firstElement)")
}
var lastItem = evenNumbers[9]

let firstThree = evenNumbers[0...2]
evenNumbers

evenNumbers.contains(10)

evenNumbers.insert(0, at: 0)
evenNumbers

//evenNumbers.removeAll()
evenNumbers.remove(at:0)

evenNumbers[0] = -2
evenNumbers


evenNumbers[0...2] = [-2, 0, 2]
evenNumbers

//evenNumbers.swapAt(0,1)
//evenNumbers
//evenNumbers.swapAt(0,9)
//evenNumbers

//for num in evenNumbers{
//    print(num)
//}

for (index, num) in evenNumbers.enumerated(){
    print("index : \(index), value : \(num)")
}

let firstThreeRemoved = evenNumbers.dropFirst(3) // 실제 데이터에 영향 x
firstThreeRemoved

evenNumbers.prefix(3)
evenNumbers.suffix(3)
