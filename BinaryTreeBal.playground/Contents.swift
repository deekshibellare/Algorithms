//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"




extension BinaryTree
{
    func search(_ value:T) -> T?
    {
        if value < self.value {
            return leftNode?.search(value)
        } else if value > self.value {
            return rightNode?.search(value)
        } else {
            return self.value  // found it!
        }
    }
}

extension BinaryTree
{
    func checkHeight() -> Int
   {
    let left = self.leftNode?.checkHeight() ?? 0
    let right = self.rightNode?.checkHeight() ?? 0
    
    if left == -1 || right == -1
    {
        return -1
    }
    if abs(left - right) > 1 {
        return -1
    }
    return max(left, right) + 1
    }
}


let tree = BinaryTree<Int>(2)
tree.insert(1)
tree.insert(3)
tree.insert(0)
tree.insert(7)
tree.insert(9)
tree.insert(1)
//let value = tree.search(10)
//tree.checkHeight()

tree.levelOrder()
