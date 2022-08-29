import UIKit


var carName: String?
carName = nil
carName = "Porche"


var actorName: String? = "Dami Kim"
let num = Int("10")

//고급기술
// Forced unwrapping > 억지로 박스 까보기
// Optinal binding (if let) > 부드럽게 박스를 까보기 1
// Optional binding (guard) > 부드럽게 박스를 까보기 2
// Nil coalescing > 박스를 까봤더니, 값이 없으면 디폴트 값 주기

print(carName)
print(carName!) // put ! only get value

carName = nil
//print(carName!) //cannot open nil value

if let unwrappedCarName = carName{
    print(unwrappedCarName)
}else {
    print("No Car Name")
}

//func printParsedInt(from: String){
//    if let parsedInt = Int(from) {
//        print(parsedInt)
//        //Cyclomatic Complexity
//    }else{
//        print("Cannot convert to Int")
//    }
//}

func printParsedInt(from: String){ //else 처리 먼저 해서 cyclomatic complexity 줄임
    guard let parsedInt = Int(from) else{
        print("Cannot convert to Int")
        return
    }
    print(parsedInt)
}


printParsedInt(from: "100")

let myCarName : String = carName ?? "model S" //?? 통해서 디폴트값 주기

let myFavoritfood :String? = nil
if let food = myFavoritfood {
    print(food)
}else {
    print("no food")
}

func printNickName (nickname:String?){
    guard let name = nickname else{
        print("no nickname")
        return
    }
    print(name)
}

printNickName(nickname : "tacohun")
