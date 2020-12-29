import UIKit

struct Rectangle {
    var leftTopX:Float
    var leftTopY:Float
    var rightBottomX:Float
    var rightBottomY:Float
    
    init () {
        leftTopX = 4.5
        leftTopY = 10.5
        rightBottomX = 15
        rightBottomY = 3.5
    }
    func printReact() {
        let leftTop = (self.leftTopX, self.leftTopY)
        let leftBottom = (self.leftTopX, self.rightBottomY)
        let rightTop = (self.rightBottomX, self.leftTopY)
        let rightBottom = (self.rightBottomX, self.rightBottomY)
        
        print(leftTop, rightTop, leftBottom, rightBottom)
    }
    
    func printArea() {
        let lengthX = abs(self.leftTopX - self.rightBottomX)
        let lengthY = abs(self.leftTopY - self.rightBottomY)
        
        print(lengthX * lengthY)
    }
    
    func printCenter() {
        let cenX = (self.leftTopX + self.rightBottomX) / 2
        let cenY = (self.leftTopY + self.rightBottomY) / 2
        
        print(cenX, cenY)
    }
}

//var rect = Rectangle(leftTopX: 5, leftTopY: 11, rightBottomX: 15, rightBottomY: 4)
var rect = Rectangle()
rect.printReact()
rect.printArea()
rect.printCenter()
