import UIKit

func printFullname(firstName : String, lastName : String){
    print("Your name is \(firstName) \(lastName)")
}

func printFullnameNoParam(_ firstName : String, _ lastName : String){
    print("Your name is \(firstName) \(lastName)")
}

func retFullName(firstName: String, lastName : String) -> String{
    return firstName + " " + lastName
}
printFullname(firstName: "Taco", lastName: "Hun")
printFullnameNoParam("Junghun", "Park")
let name = retFullName(firstName: "Tony", lastName: "Kroos")
print("concat name is : \(name)")
var value = 3
func incrementAndPrint(_ value: inout Int){
    value+=1
    print(value)
}

incrementAndPrint(&value)

// function as parameter
func add(_ a: Int, _ b : Int) -> Int {
    return a+b
}
func subtract(_ a:Int, _ b : Int) -> Int{
    return a-b
}

var function = add
function(4,2)

func printResult(_ function: (Int, Int) -> Int , _ a: Int, _ b:Int) {
    let result = function(a,b)
    print(result)
}

printResult(add, 10, 5 )
printResult(subtract, 10, 5 )

