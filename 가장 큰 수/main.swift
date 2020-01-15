//
//  main.swift
//  test
//
//  Created by 신한섭 on 2020/01/08.
//  Copyright © 2020 신한섭. All rights reserved.
//

import Foundation

func solution(_ numbers:[Int]) -> String {
    var strNumbers=[String]()
    for num in numbers{
        strNumbers.append(String(num))
    }
    
    strNumbers=strNumbers.map({$0}).sorted(by :{$0+$1>$1+$0})
    
    if strNumbers[0] == "0"{
        return "0"
    }
    
    return strNumbers.joined()
}
