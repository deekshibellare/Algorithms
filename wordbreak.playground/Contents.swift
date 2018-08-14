//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func containsWord(word:String) -> Bool
{
    let array = ["mobile","samsung","sam","sung",
    "man","mango","icecream","and",
    "go","i","like","ice","cream"]
    
    return array.filter( ){inword in inword == word}.count > 0
}


func isWordBreak(string:String) -> Bool
{
    if string.characters.count == 0
    {
        return true
    }
    let array = Array(string)
    for i in 1 ... array.count
    {
        let subString = String(array[0 ..< i])
        print(subString)
        let subString2 = String(array[i ..< array.count])
        print(subString2)
        
        if containsWord(word: subString) && isWordBreak(string: subString2)
        {
            return true
        }
    }
    
    return false
}
let contains = isWordBreak(string:"ilikesamsung")
