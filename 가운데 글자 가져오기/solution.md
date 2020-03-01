```swift
func solution(_ s:String) -> String {
    if s.count <= 2 {
        return s
    } else {
        return solution(String(s[s.index(after: s.startIndex)..<s.index(before: s.endIndex)]))
    }
}
```
