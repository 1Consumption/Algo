```swift
import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    let learnedSkillQueue = Queue()
    var correctCount = 0

    for skillTree in skill_trees {
        for skillInSkillTree in skillTree {
            if skill.contains(skillInSkillTree) {
                learnedSkillQueue.enqueue(character: skillInSkillTree)
            }
        }
        if skill.starts(with: learnedSkillQueue.toString()) {
            correctCount += 1
        }

        learnedSkillQueue.removeAll()
    }

    return correctCount
}

class Queue {
    private var list = [Character]()

    func enqueue(character: Character) {
        list.append(character)
    }

    func dequeue() -> Character {
        return list.removeFirst()
    }

    func isEmpty() -> Bool {
        return list.isEmpty
    }

    func removeAll() {
        list.removeAll()
    }

    func toString() -> String {
        return String(list)
    }
}
```
