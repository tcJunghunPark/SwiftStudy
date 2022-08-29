import UIKit

// Queue - Main, Global, Custom
//print("start")
//DispatchQueue.main.async {
//    for _ in 0...10 {
//        print("async")
//    }
//}
//for _ in 0...10{
//    print("sync")
//}
//print("end")
//복합적인 상황

//Sync Async
let concurrentQueue = DispatchQueue.init(label: "SodeulQueue", attributes: .concurrent)
concurrentQueue.sync  { print("start") }
concurrentQueue.async { for _ in 0...5 { print("async") }}
concurrentQueue.sync  { for _ in 0...5 { print("sync") } }
concurrentQueue.sync  { print("end") }    
