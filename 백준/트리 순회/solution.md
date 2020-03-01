```swift
//
//  main.swift
//  test
//
//  Created by 신한섭 on 2020/01/08.
//  Copyright © 2020 신한섭. All rights reserved.
//

import Foundation

class Node{
    var data:String
    var left:Node?
    var right:Node?

    init(_ data:String){
        self.data=data
        self.left=nil
        self.right=nil
    }
}

class BinaryTree{
    var root:Node?
    var depth:Int
    var cur:Node?

    init(){
        root=nil
        depth=0
    }

    func insert(_ info:[String]){
        if root == nil{
            let node=Node(info[0])
            if info[1] != "."{
                let left=Node(info[1])
                node.left=left
            }

            if info[2] != "."{
                let right=Node(info[2])
                node.right=right
            }

            if node.left != nil || node.right != nil{
                self.depth+=1
            }

            root=node
        } else{
            find(self.root, info[0])

            if info[1] != "."{
                let left=Node(info[1])
                cur!.left=left
            }

            if info[2] != "."{
                let right=Node(info[2])
                cur!.right=right
            }

            if cur!.left != nil || cur!.right != nil{
                self.depth+=1
            }
        }
    }

    func preOrder(_ node:Node?){
        if node != nil{
            print(node!.data,terminator:"")
            preOrder(node?.left)
            preOrder(node?.right)
        }
    }

    func postOrder(_ node:Node?){
        if node != nil{
            postOrder(node?.left)
            print(node!.data,terminator:"")
            postOrder(node?.right)
        }
    }

    func inOrder(_ node:Node?){
        if node != nil{
            inOrder(node?.left)
            inOrder(node?.right)
            print(node!.data,terminator:"")
        }
    }

    func find(_ node:Node?, _ data:String){
        if node != nil{
            if node!.data == data{
                self.cur=node
            }
            find(node?.left,data)
            find(node?.right,data)
        }
    }
}

var BT=BinaryTree()
var time=Int(readLine()!)!
for _ in 0..<time{
    BT.insert(readLine()!.components(separatedBy: " "))
}

BT.preOrder(BT.root!)
print()
BT.postOrder(BT.root!)
print()
BT.inOrder(BT.root!)
print()

```
