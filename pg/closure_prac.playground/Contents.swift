import UIKit

let choSimpleClosure: (String)-> String = { name in
    let message = "ios 개발 만만세, \(name) 님 부자되세요~"
    return message
}

let result = choSimpleClosure("Tacohun")
print(result)

//EX2 코드블럭을 구현한 closure
//EX3 인풋을 받는 closure

//ex3 closure 를 파라미터로 받는 함수
//func someSimpleFunction(choSimpleClosure: () -> Void ){
//    print("함수에서 호출됨")
//}
//someSimpleFunction(choSimpleClosure: {
//    print("헬로 코로나 from closure")
//})


//func someSimpleFunction(choSimpleClosure: () -> Void ){
//    print("함수에서 호출됨")
//    choSimpleClosure()
//}
//someSimpleFunction(choSimpleClosure: {
//    print("헬로 코로나 from closure")
//})

func someSimpleFunction(message : String, choSimpleClosure: () -> Void ){
    print("함수에서 호출됨, 메세지는 \(message)")
    choSimpleClosure()
}


someSimpleFunction(message : "코로롱",choSimpleClosure: {
    print("헬로 코로나 from closure")
})

someSimpleFunction(message : "코로롱") {
    print("헬로 코로나 from closure")
}
