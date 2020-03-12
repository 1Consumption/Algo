```swift
import Foundation

func solution(_ arrangement:String) -> Int {
    let stack = Stack()
    var result = 0
    var depth = 0
    stack.push(string: arrangement)
    var curPoped = stack.pop()

    while true {
        let prevPoped = curPoped

        if stack.isEmpty() != true {
            curPoped = stack.pop()
        } else {
            break
        }

        if curPoped == "(" && prevPoped == ")" {
            result += depth
        } else if curPoped == "(" && prevPoped == "(" {
            depth -= 1
            result += 1
        } else if curPoped == ")" && prevPoped == ")" {
            depth += 1
        }
    }

    return result
}

class Stack {
    var string = [Character]()

    func push(string: String) {
        self.string += string
    }

    func pop() -> String {
        return String(string.removeLast())
    }

    func isEmpty() -> Bool {
        return string.count == 0
    }

    func count() -> Int {
        return string.count
    }
}
```
