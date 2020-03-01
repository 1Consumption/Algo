//
//  main.swift
//  test
//
//  Created by 신한섭 on 2020/01/08.
//  Copyright © 2020 신한섭. All rights reserved.
//

import Foundation

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var index=0
    while true{
        if index >= nums.count-1{
            break
        }
        if nums[index]==nums[index+1]{
            nums.remove(at: index+1)
        } else{
            index+=1
        }
    }
    return nums.count
}
