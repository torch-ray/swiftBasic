//
//  main.swift
//  addThreeNumber
//
//  Created by 서우석 on 2021/01/08.
//

import Foundation

let std = Int(readLine()!)!
let arr = readLine()!.components(separatedBy: " ").compactMap{Int($0)}
var result = [Int]()
for i in 0..<arr.count {
    for j in i+1..<arr.count {
        for k in j+1..<arr.count {
            result.append(arr[i] + arr[j] + arr[k])
        }
    }
}
let set = Set(result)
var array = Array(set).sorted(by: >)
print(array[std-1])

