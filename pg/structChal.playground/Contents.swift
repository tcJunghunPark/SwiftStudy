import UIKit

//CustomStringConvertible

struct Lecture : CustomStringConvertible{
    var description: String{
        return "Title: \(name), Instructor: \(teacher)"
    }
    
    let name : String
    let teacher : String
    let numStudents : Int
}

func printLectureInfo(lec:[Lecture]) -> Void {
    for lecture in lec{
        print("name of this lecture is : \(lecture.name) lecturer : \(lecture.teacher) number of Students : \(lecture.numStudents)" )
    }
}

func findLectureName(from name: String, lec: [Lecture]){
//    var lectureName = ""
//
//    for lecture in lec{
//        if name == lecture.teacher{
//            lectureName = lecture.name
//
//        }
//    }
//    let lectureName = lectures.first { lec in
//        return lec.teacher == name
//    }?.name ?? "NO class"
    let lectureName = lectures.first { $0.teacher == name}?.name ?? "NO class"
    
    print("\(name) teaches \(lectureName)")
}

let lec1 = Lecture(name: "Database", teacher: "Arthur", numStudents: 10)
let lec2 = Lecture(name: "Network", teacher: "Jihoon", numStudents: 25)
let lec3 = Lecture(name: "HCI", teacher: "Alex", numStudents: 20)
let lectures = [lec1, lec2, lec3]

findLectureName(from: "Hun", lec: lectures)
print(lec1)
