``` swift
import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var result = [Int]()
    let student1Answer = [1,2,3,4,5]
    let student2Answer = [2,1,2,3,2,4,2,5]
    let studnet3Answer = [3,3,1,1,2,2,4,4,5,5]
    
    var answerDic = [Int : Int]()
    
    for answerIndex in 0 ..< answers.count {
        let answer = answers[answerIndex]
        
        if answer == student1Answer[answerIndex % student1Answer.count] {
            answerDic[1] = (answerDic[1] ?? 0) + 1
        }
        
        if answer == student2Answer[answerIndex % student2Answer.count] {
            answerDic[2] = (answerDic[2] ?? 0) + 1
        }
        
        if answer == studnet3Answer[answerIndex % studnet3Answer.count]{
            answerDic[3] = (answerDic[3] ?? 0) + 1
        }
    }
    
    if answerDic[1] == answerDic[2] && answerDic[2] == answerDic[3] {
        result = [1,2,3]
    } else{
        let max = answerDic.values.max()
        for (key, value) in answerDic {
            if value == max {
                result.append(key)
            }
        }
        
        result.sort()
    }
    
    return result
}
```
