//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
class BinaryTree<T:Comparable>
{
    var leftNode:BinaryTree?
    var rightNode:BinaryTree?
    var parentNode:BinaryTree?
    var value:T
    
    init(_ value:T)
    {
        self.value = value
    }
}

extension BinaryTree
{
    func insert(_ value:T)
    {
        if self.value > value
        {
            if let leftNode = self.leftNode
            {
                leftNode.insert(value)
            } else
            {
                leftNode = BinaryTree(value)
                leftNode?.parentNode = self
            }
        } else
        {
            if let rightNode = self.rightNode
            {
                rightNode.insert(value)
            } else
            {
                rightNode = BinaryTree(value)
                rightNode?.parentNode = self
            }
        }
    }
}

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

let tree = BinaryTree<Int>(7)
tree.insert(2)
tree.insert(5)
tree.insert(10)
tree.insert(9)
tree.insert(1)
extension BinaryTree
{
func isBinaryTreeBalanced(minimValue:T,maxValue:T) -> Bool
{
    if value < minimValue || value > maxValue
    {
        return false
    }
    
    let left =  self.leftNode?.isBinaryTreeBalanced(minimValue: minimValue, maxValue: value) ?? true
    let right = self.rightNode?.isBinaryTreeBalanced(minimValue: value, maxValue: maxValue) ?? true
    return left &&  right
}
}
