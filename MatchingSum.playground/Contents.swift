//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let array = [Int]()

func findPair(in array:[Int],matching sum:Int) -> (Int,Int)?
{
    var dictionary = [Int:Int]()
    
    for i in 0 ..< array.count
    {
        let item = array[i]
    if let complementPosition = dictionary[item]
    {
    return (complementPosition,i)
    }
    else
    {
    dictionary[sum-item]  = i
    }

}
        return nil
}
let pair = findPair(in:array,matching:-3);
