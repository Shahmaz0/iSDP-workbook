import UIKit

class Student{
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Vehicle{
    var currentSpeed = 0.0
    func speed(currentSpeed: Double) {
        print("\(currentSpeed) of parent vehicle")
    }
}

class bicycle: Vehicle{
    var hasBasket = false
    override func speed(currentSpeed: Double) {
        print("\(currentSpeed) of the bicycle")
    }
}
 
var vehicle1 = Vehicle()
vehicle1.speed(currentSpeed: 0.0)


var bicycle1 = bicycle()
bicycle1.speed(currentSpeed: 10)



class Person {
    let name: String
    init(name: String) {
        self.name = name
    }
}

class Student: Person {
    var favouriteSubject: String = ""
}
