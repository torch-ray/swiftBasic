import UIKit

var gugudan = [Int].init(repeating: 0, count: 9)

for i in 1...9{
    let result = 2 * i
    gugudan[i-1] = result
}

for i in gugudan {
    print(i)
}

func gugu(number: Int) {
    
    for i in 1...9{
        print(number * i)
    }
}

gugu(number: 4)
