import UIKit

struct Shirt {
    let color: String
    let size: String
    
    func data() {
        print("I have \(color) shirt of size \(size)")
    }
}

var data = Shirt(color: "Red", size: "L")
print(data)



struct Point {
    var x = 0.0
    var y = 0.0
}

struct Size {
    var width = 0.0
    var height = 0.0
}

struct Rectangle {
    var origin = Point(x: 0.0, y: 0.0)
    var size = Size(width: 0.0, height: 0.0)
    var center: Point {
       get {
            let centerX = origin.x + size.width / 2.0
            let centerY = origin.y + size.height / 2.0
           
           return Point(x: centerX, y: centerY)
        }
        set {
            origin.x = newValue.x - size.width / 2.0
            origin.y = newValue.y - size.height / 2.0
        }
    }
}

var square = Rectangle(origin: Point(x: 0, y: 0), size: Size(width: 10.0, height: 10.0))

print(square.center)
let initialSquareCenter = square.center


square.center = Point(x: 15.0, y: 15.0)

