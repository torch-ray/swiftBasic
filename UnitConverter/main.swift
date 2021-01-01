//
//  main.swift
//  UnitConverter
//
//  Created by 서우석 on 2021/01/01.
//

import Foundation

func meterToCen(origin:String) -> String {
    let tmp = origin.components(separatedBy: "M").joined()
    let result = String(Float(tmp)! * 100) + "CM"
    return result
}

func cenToMeter(origin:String) -> String {
    let tmp = origin.components(separatedBy: "CM").joined()
    let result = String(Float(tmp)! / 100) + "M"
    return result
}

func unitConverter(origin:String) -> String {
    if origin.contains("CM") {
        return cenToMeter(origin: origin)
    } else {
        return meterToCen(origin: origin)
    }
}

if let inputValue = readLine() {
    print(unitConverter(origin: inputValue))
}

