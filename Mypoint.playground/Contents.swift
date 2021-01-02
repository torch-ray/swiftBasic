import UIKit

struct MyPoint {
    var myX:Float
    var myY:Float
    
    init() {
        myX = 2.5
        myY = 15.8
    }
    
    func printPoint() {
        print((self.myX, self.myY))
    }
    
    mutating func setX(x:Float) -> Float {
        self.myX = x
        return x
    }
    
    mutating func setY(y:Float) -> Float {
        self.myY = y
        return y
    }
    
//    func getDistanceTo(toPoint:MyPoint) -> Float {
//        let distance:Float = abs(self.myX - self.myY)
//        print(distance)
//        return distance
//    }
}

var pointA = MyPoint()
pointA.printPoint()
var x = pointA.setX(x: 15.2)
var y = pointA.setY(y: 7.4)
print("pointA=(\(x), \(y))")

//var pointB = MyPoint()
//pointB.getDistanceTo(toPoint: MyPoint(15, 12.2))


