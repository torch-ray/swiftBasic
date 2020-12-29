import UIKit

//Add two integer code
func addNum2(number1:Int, number2:Int) -> Int {
    let sum = number1 + number2
    return sum
}

//Add three integer code
func addNum3(number1:Int, number2:Int, number3:Int) -> Int {
    let sum = number1 + number2 + number3
    return sum
}

//substract
func substract(number1: Int, number2: Int) -> Int {
    let answer = number1 - number2
    return answer
}


func square(number: Int) -> Int {
    let answer = Int(pow(Double(number), 2.0))
    return answer
}

//divide
func divide(number1:Int, number2:Int) -> Int {
    let answer = number1 / number2
    return answer
}

print(addNum2(number1: 8, number2: 7))
print(addNum3(number1: 8, number2: 7, number3: 6))
print(substract(number1: 456, number2: 123))
print(square(number: 8))
print(divide(number1: 256, number2: 8))

//print method
print(12, 99, 3.14)
print(12, 88, 3.14, separator: ",", terminator: "---")
print(max(99, 10, 3.14), 123)
print(1.0, 2.0, 3.0, 4.0, 5.0, separator: " ... ")

//convert func

func convertToCM(fromInches: Float) -> Float {
    let result = fromInches * 2.54
    return result
}
print(convertToCM(fromInches: 50))
print(convertToCM(fromInches: 15))

func convertToInches(fromCm: Float) -> Float {
    let result = fromCm / 2.54
    return result
}

print(convertToInches(fromCm: 254))
print(convertToInches(fromCm: 75))

func convertToInches(fromMeter: Float) -> Float {
    let result = fromMeter / 0.0254
    return result
}

print(convertToInches(fromMeter: 1.5))
print(convertToInches(fromMeter: 0.4))

var gradeDic = ["a" : 90, "b" : 80, "c" : 70, "d" : 60]
print(gradeDic["a"] ?? 1)
