``` swift
//
//  main.swift
//  test
//
//  Created by 신한섭 on 2020/01/08.
//  Copyright © 2020 신한섭. All rights reserved.
//

import Foundation

class Solution {
    func isHappy(_ n: Int) -> Bool {
        var table=[Int:Int]()
        var num=n
        while true{
            let strN=String(num)
            var sum=0
            for i in strN{
                let dec=String(i)
                sum+=Int(pow(Double(dec)!,2.0))
            }
            print(sum)
            if sum == 1{
                return true
            } else{
                if table[Int(strN)!] != nil{
                    return false
                } else{
                    table[Int(strN)!] = 0
                    num=sum
                }
            }
        }
    }
}

```
