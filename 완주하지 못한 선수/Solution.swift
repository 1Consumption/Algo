//
//  Solution.swift
//  test
//
//  Created by 신한섭 on 2020/01/08.
//  Copyright © 2020 신한섭. All rights reserved.
//

import Cocoa

class Solution: NSObject {
    func reverse(_ x: Int) -> Int {
        var num=x
        var answer=0
        var arr=[Int]()
        
        while num != 0 {
            arr.append(num%10)
            num /= 10
        }
        arr.reverse()
        
        for i in 0..<arr.count{
            answer+=arr[i] * Int(pow(Double(10),Double(i)))
        }
        
        return answer>=Int32.max || answer<=Int32.min ? 0:answer
    }
}
