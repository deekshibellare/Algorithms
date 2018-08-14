//: Playground - noun: a place where people can play

import UIKit

var str = "%Hello"

func reverseString(string:String) ->String
{
    var array = Array(string)
    var currentIndex = 0
    var lastIndex = array.count - 1
    
    for _ in 0 ..< array.count
    {
        let currentElemment = array[currentIndex]
        let lastElement = array[lastIndex]
        if isCharacter(character: currentElemment) == false
        {
            currentIndex = currentIndex + 1
        }
        
        if isCharacter(character: lastElement) == false
        {
            lastIndex = lastIndex - 1
        }
        
        if currentIndex >= lastIndex
        {
            return String(array)
        }
       
 
        
        array.swapAt(currentIndex, lastIndex)
        currentIndex = currentIndex + 1
        lastIndex = lastIndex - 1
    }
    return String(array)
}

func isCharacter(character:Character) -> Bool
{
    let characterset = CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")
    if String(character).rangeOfCharacter(from: characterset) != nil
    {
        return true
    }
    return false
}
let new = reverseString(string: str)

