```swift
import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    let queue1 = Queue()
    let queue2 = Queue()

    var dequeuCount = 0

    var targetIndex = -1

    for priority in priorities.enumerated() {
        queue1.enqueue(element: (key: priority.offset, value: priority.element))
    }

    while targetIndex != location {
        let maximum = queue1.max()

        for _ in 0..<queue1.count() {
            let element = queue1.dequeue()

            if element.value == maximum {
                targetIndex = element.key
                while queue2.isEmpty() == false {
                    queue1.enqueue(element: queue2.dequeue())
                }
                break
            } else {
                queue2.enqueue(element: element)
            }
        }

        dequeuCount += 1
    }

    return dequeuCount
}

class Queue {
    var list = [(key: Int,value: Int)]()

    func dequeue() -> (key: Int,value: Int) {
        return list.removeFirst()
    }

    func enqueue(element: (key: Int,value: Int)) {
        list.append(element)
    }

    func isEmpty() -> Bool {
        return list.isEmpty
    }

    func count() -> Int {
        return list.count
    }

    func max() -> Int {
        return list.max{$0.value < $1.value}!.value
    }
}
```
