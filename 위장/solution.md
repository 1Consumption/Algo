``` swift
//
//  main.swift
//  test
//
//  Created by 신한섭 on 2020/01/08.
//  Copyright © 2020 신한섭. All rights reserved.
//

import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var table=[String:Int]()
    var result=1
    for cloth in clothes{
        if table[cloth[1]] == nil{
            table.updateValue(1, forKey: cloth[1])
        } else{
            table.updateValue(table[cloth[1]]! + 1, forKey: cloth[1])
        }
    }
    
    for value in table.values{
        result*=(value+1)
    }
    
    return result - 1
}
```
