//
//  Solution.swift
//  test
//
//  Created by 신한섭 on 2020/01/08.
//  Copyright © 2020 신한섭. All rights reserved.
//

import Cocoa

class Solution: NSObject {
    func solution(_ s: String) -> Int {
        var answer:Int=s.count
        for cnt in 1..<s.count{
            var result=getResultLength(getStringArr(s, cnt))
            if result<answer{
                answer=result
            }
        }
        return answer
    }
    
    func getStringArr(_ str :String,_ fixed:Int) -> [String]{
        var result=[String]()
        
        var startIdx=str.startIndex
        var endIdx=str.index(startIdx,offsetBy: fixed)
        
        result.append(String(str[startIdx..<endIdx]))
        
        while endIdx != str.endIndex {
            startIdx=str.index(startIdx,offsetBy: fixed)
            endIdx=str.index(startIdx,offsetBy: fixed,limitedBy: str.endIndex) == nil ? str.endIndex:str.index(startIdx,offsetBy: fixed,limitedBy: str.endIndex)!
            result.append(String(str[startIdx..<endIdx]))
        }
        
        return result
    }
    
    func getResultLength(_ strArr:[String]) -> Int {
        var answer:String=""
        var preWord:String=""
        var cnt:Int=1
    
        for index in 0..<strArr.count{
            if preWord == strArr[index]{
                cnt+=1
            } else{
                answer+=preWord+(cnt==1 ? "":String(cnt))
                preWord=strArr[index]
                cnt=1
            }
        }
        
        answer+=preWord+(cnt==1 ? "":String(cnt))
        
        return answer.count
    }
}
