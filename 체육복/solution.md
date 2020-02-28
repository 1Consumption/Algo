``` swift
import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var hasClothes = [Int](repeating: 0, count: n)

    lost.forEach {
        hasClothes[$0 - 1] -= 1
    }

    reserve.forEach {
        hasClothes[$0 - 1] += 1
    }

    for (clothesIndex, cloth) in hasClothes.enumerated() {
        if cloth == -1 {
            if clothesIndex > 0 && hasClothes[clothesIndex - 1] == 1 {
                hasClothes[clothesIndex] = 0
                hasClothes[clothesIndex - 1] = 0
            } else if clothesIndex < hasClothes.count - 1 && hasClothes[clothesIndex + 1] == 1 {
                hasClothes[clothesIndex] = 0
                hasClothes[clothesIndex + 1] = 0
            }
        }
    }

    return hasClothes.filter{$0 > -1}.count
}
```
