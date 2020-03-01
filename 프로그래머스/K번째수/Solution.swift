//
//  Solution.swift
//  test
//
//  Created by 신한섭 on 2020/01/08.
//  Copyright © 2020 신한섭. All rights reserved.
//

import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var answer=[Int]()
    for command in commands{
        var arr=Array(array[command[0]-1..<command[1]])
        arr.sort()
        answer.append(arr[command[2]-1])
    }
    return answer
}


