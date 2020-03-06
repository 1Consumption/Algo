```swift
import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    let truckInBridge = Queue()
    let truckPassedBridge = Queue()
    var currentTruckIndex = 0
    var time = 1

    while truckPassedBridge.count() != truck_weights.count {
        if truck_weights.count > currentTruckIndex {
            if truckInBridge.total() + truck_weights[currentTruckIndex] <= weight {
                truckInBridge.enqueue(element: (wegiht: truck_weights[currentTruckIndex], time: bridge_length))
                currentTruckIndex += 1
            }
        }

        truckInBridge.decreaseTime()

        let dequeueElement = truckInBridge.dequeue()

        if dequeueElement.time == 0 {
            truckPassedBridge.enqueue(element: dequeueElement)
        } else {
            truckInBridge.enqueueFirst(element: dequeueElement)
        }


        time += 1
    }
    return time
}

class Queue {
    var list = [(wegiht: Int, time: Int)]()

    func dequeue() -> (wegiht: Int, time: Int) {
        return list.removeFirst()
    }

    func enqueue(element: (wegiht: Int, time: Int)) {
        list.append(element)
    }

    func enqueueFirst(element: (wegiht: Int, time: Int)) {
        list = [element] + list
    }

    func isEmpty() -> Bool {
        return list.isEmpty
    }

    func count() -> Int {
        return list.count
    }

    func total() -> Int {
        return list.reduce(0){
            $0 + $1.wegiht
        }
    }

    func decreaseTime() {
        for idx in 0..<list.count {
            list[idx].time -= 1
        }
    }
}
```
