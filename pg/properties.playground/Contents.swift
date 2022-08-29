import UIKit

struct Person {
    var firstName: String {
        willSet{
            print("willSet: \(firstName) --> \(newValue)")
        }
        didSet{
            print("didSet: \(oldValue) --> \(firstName)")
        }
    }
    var lastName: String
    
    lazy var isPopular: Bool = {
        if fullName == "Jay Park" {
            return true
        }else{
            return false
        }
    }()
    
    var fullName: String{
        get{
            return "\(firstName) \(lastName)"
        }
        set{
            if let firstName = newValue.components(separatedBy: " ").first{
                self.firstName = firstName
            }
            if let lastName = newValue.components(separatedBy: " ").last{
                self.lastName = lastName
            }
        }
        
    }
    
    static let isAlien: Bool = false
}

var person = Person(firstName: "Jason", lastName: "Lee")

person.firstName
person.lastName

person.firstName = "Jim"
person.lastName = "Kim"
person.isPopular

person.firstName
person.lastName

person.fullName = "Jay Park"
person.isPopular
