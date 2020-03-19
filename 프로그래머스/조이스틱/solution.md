```swift
import Foundation

func solution(_ name:String) -> Int {
    var distance: [Int] = [Int]()
    var curCount: Int = 0
    var curIndex: Int = 0
    for nameIndex in 0..<name.count {
        distance.append(getDistance(target: Array(name)[nameIndex]))
    }

    print(distance)

    while distance.reduce(0, +) != 0 {
        let info: (distance: Int, index: Int) = getNextIndex(curIndex: curIndex, arr: distance)
        curIndex = info.index
        curCount += info.distance + distance[curIndex]
        distance[curIndex] = 0
    }

    return curCount
}

func getDistance(target: Character) -> Int {
    if Int(target.asciiValue!) - 65 > 13 {
        return 91 - Int(target.asciiValue!)
    } else {
        return Int(target.asciiValue!) - 65
    }
}

func getNextIndex(curIndex: Int, arr: [Int]) -> (distance: Int, index: Int){
    if arr[curIndex] != 0 {
        return (0, curIndex)
    }

    var leftIndex: Int = curIndex - 1
    var rightIndex: Int = curIndex + 1
    var count: Int = 0
    let length: Int = arr.count
    while true {
        count += 1
        leftIndex = leftIndex == -1 ? length - 1 : leftIndex
        rightIndex = rightIndex == length ? 0 : rightIndex

        if arr[rightIndex] != 0 {
            return (count, rightIndex)
        } else if arr[leftIndex] != 0 {
            return (count, leftIndex)
        }

        leftIndex -= 1
        rightIndex += 1
    }
}

```
