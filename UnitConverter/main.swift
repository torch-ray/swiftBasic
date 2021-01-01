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
    print(result)
    return result
}

func cenToMeter(origin:String) -> String {
    let tmp = origin.components(separatedBy: "cm").joined()
    let result = String(Float(tmp)! / 100) + "m"
    print(result)
    return result
}

func inchToCen(origin:String) -> String {
    let tmp = origin.components(separatedBy: "inch").joined()
    let result = String(Float(tmp)! * 2.54) + "cm"
    print(result)
    return result
}

func cenToInch(origin:String) -> String {
    let tmp = origin.components(separatedBy: "cm").joined()
    let result = String(Float(tmp)! * 0.3937) + "inch"
    print(result)
    return result
}

func unitConverter(origin:String, standard:String?) {
    if standard == nil {
        if origin.contains("cm") {
            cenToMeter(origin: origin)
        } else if origin.contains("inch") {
            inchToCen(origin: origin)
        } else {
            meterToCen(origin: origin)
        }
    } else {
        if origin.contains("cm") {
            if standard == "inch" {
                inchToCen(origin: origin)
            } else if standard == "m" {
                cenToMeter(origin: origin)
            }
        } else if origin.contains("inch") {
            if standard == "cm" {
                inchToCen(origin: origin)
            } else if standard == "m" {
                cenToMeter(origin: inchToCen(origin: origin))
            }
        } else {
            if standard == "cm" {
                meterToCen(origin: origin)
            } else if standard == "inch" {
                cenToInch(origin: meterToCen(origin: origin))
            }
        }
    }
}


if let inputValue = readLine()?.split(separator: " ") {
    if !inputValue[0].contains("cm") && !inputValue[0].contains("m") && !inputValue[0].contains("inch") {
        print("지원하지 않는 단위입니다.")
    } else if inputValue.count > 1 {
        unitConverter(origin: String(inputValue[0]), standard: String(inputValue[1]))
    } else {
        unitConverter(origin: String(inputValue[0]), standard: nil)
    }
}

