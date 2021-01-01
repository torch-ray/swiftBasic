//
//  main.swift
//  UnitConverter
//
//  Created by 서우석 on 2021/01/01.
//

import Foundation

func CentoMeter(number:Float) -> Float {
    return number / 100
}

print("\(CentoMeter(number: 120))M")

func MetertoCen(number:Float) {
    print("\(Int(number * 100))cm")
}

MetertoCen(number: 1.86)

