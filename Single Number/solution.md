//
//  main.swift
//  test
//
//  Created by 신한섭 on 2020/01/08.
//  Copyright © 2020 신한섭. All rights reserved.
//

import Foundation

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var table=[Int:Int]()
        for element in nums{
            if table[element] == nil{
                table.updateValue(1, forKey: element)
            } else{
                table.updateValue(table[element]! + 1 , forKey: element)
            }
        }
        
        for (key,value) in table{
            if value == 1{
                return key
            }
        }
        
        return 0
    }
}

