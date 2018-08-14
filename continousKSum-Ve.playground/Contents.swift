//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let array = [1,2,3,8]

func contiousSum(array:[Int],inSum:Int) -> (Int,Int)?
{
    
    var dict = [Int:Int]()
    var sum = 0
    for i in 0 ..< array.count
    {
        
        sum  = sum + array[i]
        if sum == inSum
        {
              return (0,i)
        }
        if let index = dict[sum - inSum]
        {
            return (index+1,i)
        }
        dict[sum] = i
        print(dict)
    }
    return nil
}

let sum = contiousSum(array: array, inSum:5)
if let sum = sum
{
   sum.0
   sum.1
}


