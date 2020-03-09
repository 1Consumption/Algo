```swift
import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    let progressQueue = Queue()
    var orderOfRelease = [Int]()

    for index in 0..<progresses.count {
        progressQueue.enqueue(element: (percentage: progresses[index], speed: speeds[index]))
    }

    while progressQueue.isEmpty() != true {
        var releaseCount = 0
        progressQueue.progressing()

        var progress = progressQueue.dequeue()

        while progress.percentage >= 100 {
            releaseCount += 1
            if progressQueue.isEmpty() != true {
                progress = progressQueue.dequeue()
            } else {
                break
            }
        }

        if progress.percentage < 100 {
            progressQueue.enqueueFirst(element: progress)
        }

        if releaseCount != 0 {
            orderOfRelease.append(releaseCount)
        }
    }

    return orderOfRelease
}

class Queue {
    var list = [(percentage: Int, speed: Int)]()

    func dequeue() -> (percentage: Int, speed: Int) {
        return list.removeFirst()
    }

    func enqueue(element: (percentage: Int, speed: Int)) {
        list.append(element)
    }

    func enqueueFirst(element: (percentage: Int, speed: Int)) {
        list = [element] + list
    }

    func isEmpty() -> Bool {
        return list.isEmpty
    }

    func count() -> Int {
        return list.count
    }

    func progressing() {
        for index in 0..<list.count {
            list[index].percentage += list[index].speed
        }
    }
}
```
