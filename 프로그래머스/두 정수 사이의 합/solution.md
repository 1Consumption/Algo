```swift
func solution(_ a:Int, _ b:Int) -> Int64 {
    if a == b {
        return Int64(a)
    } else if a > b {
        var sum = 0
        for num in b ... a {
            sum += num
        }
        return Int64(sum)
    } else {
        var sum = 0
        for num in a ... b {
            sum += num
        }
        return Int64(sum)
    }
}
```
