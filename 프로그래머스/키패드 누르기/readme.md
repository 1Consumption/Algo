```swift
func solution(_ numbers:[Int], _ hand:String) -> String {
    let keyPad = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9],
        [-1, 0, -1]
    ]
    
    var leftHandPoint = Point(x: 0, y: 3)
    var rightHandPoint = Point(x: 2, y: 3)
    var result = ""
    
    numbers.forEach {
        let currentPoint = findPoint(number: $0, in: keyPad)
        if $0 % 3 == 1 {
            result += "L"
            leftHandPoint = currentPoint
        } else if $0 % 3 == 0 && $0 != 0 {
            result += "R"
            rightHandPoint = currentPoint
        } else {
            let leftDistance = abs(currentPoint.x - leftHandPoint.x) + abs(currentPoint.y - leftHandPoint.y)
            let rightDistance = abs(currentPoint.x - rightHandPoint.x) + abs(currentPoint.y - rightHandPoint.y)
            if leftDistance > rightDistance {
                result += "R"
                rightHandPoint = currentPoint
            } else if leftDistance < rightDistance {
                result += "L"
                leftHandPoint = currentPoint
            } else {
                if hand == "right" {
                    result += "R"
                    rightHandPoint = currentPoint
                } else {
                    result += "L"
                    leftHandPoint = currentPoint
                }
            }
        }
    }
    
    return result
}

func findPoint(number: Int, in keyPad: [[Int]]) -> Point {
    for yIndex in 0..<keyPad.count {
        for xIndex in 0..<keyPad[yIndex].count {
            if keyPad[yIndex][xIndex] == number {
                return Point(x: xIndex, y: yIndex)
            }
        }
    }
    
    return Point(x: 0, y: 0)
}

struct Point {
    var x: Int
    var y: Int
}
```



