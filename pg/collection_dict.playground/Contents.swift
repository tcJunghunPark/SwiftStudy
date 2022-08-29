import UIKit

var scoreDic: [String:Int] = ["Jason": 80, "Jay" : 95, "Jake": 90]
var scoreDic2 : Dictionary<String, Int> = ["Jason": 80, "Jay" : 95, "Jake": 90]

scoreDic["Jason"]
scoreDic["Jake"]

//scoreDic = [:]
scoreDic.isEmpty
scoreDic.count


scoreDic["Jason"] = 99
scoreDic

for (name, score) in scoreDic{
    print("\(name), \(score)")
}

for key in scoreDic.keys{
    print(key)
}


var myInfo : [String:String] = ["name" : "Junghun", "job" : "Student", "city": "Incheon"]
myInfo["city"] = "Busan"

func printInfo(dic: [String: String]){
    if let name = dic["name"], let city = dic["city"]{
        print("\(name), \(city)")
    }else{
        print("--> cannot find")
    }
}

printInfo(dic: myInfo)
