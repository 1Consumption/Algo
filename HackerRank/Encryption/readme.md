```swift
func encryption(s: String) -> String {
    let rs = s.replacingOccurrences(of: " ", with: "")
    let min = Int(floor(sqrt(Double(rs.count))))
    let max = Int(ceil(sqrt(Double(rs.count))))
    var r = max
    var c = max
    var answer = ""
    
    for minValue in min...max {
        for maxValue in minValue...max {
            if maxValue * minValue >= rs.count && r * c > maxValue * minValue {
                r = minValue
                c = maxValue
            }
        }
    }
    
    var encrypted = [String](repeating: "", count: r)
    
    for (index, char) in rs.enumerated() {
        encrypted[index / c].append(char)
    }
    
    for col in 0..<c {
        for row in 0..<r {
            if encrypted[row].count > col {
                answer.append(String(Array(encrypted[row])[col]))
            }
        }
        answer.append(" ")
    }
    
    return answer
}
```

