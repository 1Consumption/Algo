```swift
func queensAttack(n: Int, k: Int, r_q: Int, c_q: Int, obstacles: [[Int]]) -> Int {
    let rq = r_q - 1
    let cq = c_q - 1
    var answer = 0
    var obstaclesDic = [[Int]: Bool]()
    if !obstacles.isEmpty {
        obstacles.forEach {
            obstaclesDic[[$0[0] - 1, $0[1] - 1]] = true
        }
    }

    answer = find(n: n, rq: rq, cq: cq, dr: 0, dc: -1, obs: obstaclesDic)
    answer += find(n: n, rq: rq, cq: cq, dr: -1, dc: -1, obs: obstaclesDic)
    answer += find(n: n, rq: rq, cq: cq, dr: -1, dc: 0, obs: obstaclesDic)
    answer += find(n: n, rq: rq, cq: cq, dr: -1, dc: 1, obs: obstaclesDic)
    answer += find(n: n, rq: rq, cq: cq, dr: 0, dc: 1, obs: obstaclesDic)
    answer += find(n: n, rq: rq, cq: cq, dr: 1, dc: 1, obs: obstaclesDic)
    answer += find(n: n, rq: rq, cq: cq, dr: 1, dc: 0, obs: obstaclesDic)
    answer += find(n: n, rq: rq, cq: cq, dr: 1, dc: -1, obs: obstaclesDic)

    return answer
}

func find(n: Int, rq: Int, cq: Int, dr: Int, dc: Int, obs: [[Int]: Bool]) -> Int {
    var answer = 0
    var time = 1
    while true {
        let curRq = rq + dr * time
        let curCq = cq + dc * time

        if curRq >= n || curRq < 0 || curCq >= n || curCq < 0 || obs[[curRq, curCq]] != nil {
            break
        } else {
            answer += 1
            time += 1
        }
    }

    return answer
}
```

