//
//  main.swift
//  UnitConverter
//
//  Created by 서우석 on 2021/01/01.
//

import Foundation

func meterToCen(origin:String) -> String {
    let tmp = origin.components(separatedBy: "m").joined()
    let result = String(Float(tmp)! * 100) + "cm"
    return result
}

func cenToMeter(origin:String) -> String {
    let tmp = origin.components(separatedBy: "cm").joined()
    let result = String(Float(tmp)! / 100) + "m"
    return result
}

func inchToCen(origin:String) -> String {
    let tmp = origin.components(separatedBy: "inch").joined()
    let result = String(Float(tmp)! * 2.54) + "cm"
    return result
}

func cenToInch(origin:String) -> String {
    let tmp = origin.components(separatedBy: "cm").joined()
    let result = String(Float(tmp)! * 0.3937) + "inch"
    return result
}

func yardToMeter(origin:String) -> String {
    let tmp = origin.components(separatedBy: "yard").joined()
    let result = String(Float(tmp)! * 0.9144) + "m"
    return result
}

func meterToYard(origin: String) -> String {
    let tmp = origin.components(separatedBy: "m").joined()
    let result = String(Float(tmp)! * 1.093613) + "yard"
    return result
}
func unitConverter(origin:String, standard:String?) {
    if standard == nil {
        if origin.contains("cm") {
            print(cenToMeter(origin: origin))
        } else if origin.contains("inch") {
            print(inchToCen(origin: origin))
        } else if origin.contains("yard"){
            print(yardToMeter(origin: origin))
        } else {
            print(meterToCen(origin: origin))
        }
    } else {
        if origin.contains("cm") {
            if standard == "inch" {
                print(inchToCen(origin: origin))
            } else if standard == "m" {
                print(cenToMeter(origin: origin))
            } else {
                print(meterToYard(origin: cenToMeter(origin: origin)))
            }
        } else if origin.contains("inch") {
            if standard == "cm" {
                print(inchToCen(origin: origin))
            } else if standard == "m" {
                print(cenToMeter(origin: inchToCen(origin: origin)))
            } else {
                print(meterToYard(origin: cenToMeter(origin: inchToCen(origin: origin))))
            }
        } else if origin.contains("yard") {
            if standard == "cm" {
                print(meterToCen(origin: yardToMeter(origin: origin)))
            } else if standard == "inch" {
                print(cenToInch(origin: meterToCen(origin: yardToMeter(origin: origin))))
            } else {
                print(yardToMeter(origin: origin))
            }
        } else {
            if standard == "cm" {
                print(meterToCen(origin: origin))
            } else if standard == "inch" {
                print(cenToInch(origin: meterToCen(origin: origin)))
            } else {
                print(meterToYard(origin: origin))
            }
        }
    }
}


if let inputValue = readLine()?.split(separator: " ") {
    if inputValue[0].contains("q") || inputValue[0].contains("quit") {
        exit(0)
    } else if !inputValue[0].contains("cm") && !inputValue[0].contains("m") && !inputValue[0].contains("inch") && !inputValue[0].contains("yard") {
        print("지원하지 않는 단위입니다.")
    } else if inputValue.count > 1 {
        unitConverter(origin: String(inputValue[0]), standard: String(inputValue[1]))
    } else {
        unitConverter(origin: String(inputValue[0]), standard: nil)
    }
}

