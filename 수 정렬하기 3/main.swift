//
//  main.swift
//  test
//
//  Created by 신한섭 on 2020/01/08.
//  Copyright © 2020 신한섭. All rights reserved.
//

import Foundation

let size=Int(readLine()!)!
var arr=[Int](repeating: 0, count: 10001)
for i in 0..<size{
    arr[i]=Int(readLine()!)!
}

for i in 0..<size{
    for j in i..<size{
        if arr[i]>arr[j]{
            let temp=arr[i]
            arr[i]=arr[j]
            arr[j]=temp
        }
    }
}
for i in 0..<size{
    print(arr[i])
}


