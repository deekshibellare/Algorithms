//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let stringA = "1001"
let stringB = "1001"
let result = "1011"

func addBinaryStrings(string1:String,string2:String) -> String
{
    let characters1 = Array(string1)
    let characters2 = Array(string2)
    
    var countOf1 = characters1.count
    var countOf2 = characters2.count
    var carray = 0
    
    var sumString:String = ""
    while countOf1 > 0 || countOf2 > 0 || carray > 0{
                var item1 = 0
        if countOf1 > 0
        {
         item1 = characters1[countOf1-1] == Character("0") ? 0 : 1
        }
        var item2 = 0
        if countOf2  > 0
        {
        item2 = characters2[countOf2-1] == Character("0") ? 0 : 1
        }
        
        let sum = Int(item1) + Int(item2) + carray
        
        carray = sum / 2
        sumString = sumString + String(sum % 2)
        countOf1 = countOf1 - 1
        countOf2 = countOf2 - 1
    }
    return  String(sumString.reversed())
}


let new = addBinaryStrings(string1: stringA, string2: stringB)
