//
//  Solution.swift
//  test
//
//  Created by 신한섭 on 2020/01/08.
//  Copyright © 2020 신한섭. All rights reserved.
//

import Cocoa

class Solution: NSObject {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var answer=[0,0]
        var dic=[Int:Int]()
        for index in 0..<nums.count{
            let expectedValue=target-nums[index]
            if dic[expectedValue] == nil{
                dic.updateValue(index, forKey: nums[index])
            } else{
                answer=[dic[expectedValue]!,index]
            }
        }
        
        return answer
    }
}
