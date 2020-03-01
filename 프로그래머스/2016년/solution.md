```swift
import Foundation

func solution(_ a:Int, _ b:Int) -> String {
    let day = ["FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU"]
    let month = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    
    var sum = b - 1
    
    for monthDay in 0 ..< a - 1 {
        sum += month[monthDay]
    }
    
    return day[sum % 7]
}
```
