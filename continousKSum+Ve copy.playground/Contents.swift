//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let array = [1,2,3,8]

func contiousSum(array:[Int],inSum:Int) -> (Int,Int)?
{
    var sum = array[0]
    var start = 0
    
    for i in 1 ..< array.count
    {
      
        if sum > inSum
        {
            sum = sum - array[start]
            start = start + 1
        }
        
        if sum == inSum
        {
            return (start,i-1)
        }
          sum = sum + array[i]
        
    }
return nil
}

let sum = contiousSum(array: array, inSum: 1)
if let sum = sum
{
   sum.0
   sum.1
}


