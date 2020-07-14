```swift
func gridSearch(G: [String], P: [String]) -> String {
    var factor = false
    
    for idx in 0..<G.count {
        guard G[idx].contains(P[0]) else { continue }
        
        for (gIdx, g) in G[idx].enumerated() {
            guard g == Array(P[0])[0] else { continue }
            for pIdx in 0..<P.count {
                guard !(idx + pIdx > G.count || gIdx + P[pIdx].count > G[idx].count || String(Array(G[idx + pIdx])[gIdx..<gIdx + P[pIdx].count]) != P[pIdx]) else {
                    factor = false
                    break
                }
                factor = true
            }
            if factor {
                return "YES"
            }
        }
    }
    
    return "NO"
}
```

