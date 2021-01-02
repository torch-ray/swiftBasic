import UIKit

struct Mypoint {
    var point:(Float, Float)
}

struct Rectangle {
    var leftTop:Mypoint
    var rightBottom:Mypoint
    
    init() {
        self.leftTop = Mypoint(point: (0, 0))
        self.rightBottom = Mypoint(point: (0, 0))
    }
    
    func printRect(left:Mypoint, right:Mypoint) {
        print(left, right)
    }
}

var rect = Rectangle()
rect.printRect(left: Mypoint(point: (5, 11)), right: Mypoint(point: (15, 4)))




