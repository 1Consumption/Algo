```swift
import Foundation

func climbingLeaderboard(scores: [Int], alice: [Int]) -> [Int] {
    var answer = [Int]()
    var sortedScores = [Int]()
    
    scores.forEach {
        if sortedScores.count == 0 {
            sortedScores.append($0)
        } else {
            if sortedScores[sortedScores.count - 1] != $0 {
                sortedScores.append($0)
            }
        }
    }
    
    var aliceIndex = 0
    var rank = sortedScores.count - 1
    
    while aliceIndex < alice.count {
        if alice[aliceIndex] < sortedScores[rank] {
            aliceIndex += 1
            answer.append(rank + 2)
        } else if alice[aliceIndex] == sortedScores[rank] || rank == 0 {
            aliceIndex += 1
            answer.append(rank + 1)
        } else {
            rank -= 1
        }
    }
    
    return answer
}
```

