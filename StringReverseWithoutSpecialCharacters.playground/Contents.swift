/*Reverse an array without affecting special characters
Given a string, that contains special character together with alphabets (‘a’ to ‘z’ and ‘A’ to ‘Z’), reverse the string in a way that special characters are not affected.


Input:   str = "a,b$c"
Output:  str = "c,b$a"
Note that $ and , are not moved anywhere.
Only subsequence "abc" is reversed

Input:   str = "Ab,c,de!$"
Output:  str = "ed,c,bA!$"
 */
var str = "a,b$c"

/*
 Idea here is first write the method to reverse the string without using extra space
 */
func reverse(string:String) -> String {
    var arrayOfStr = Array(str)
    var startPointer = arrayOfStr.startIndex
    var endpointer = arrayOfStr.endIndex - 1
    
    while startPointer <= endpointer {
        arrayOfStr.swapAt(startPointer, endpointer)
        startPointer  = startPointer + 1
        endpointer = endpointer - 1
    }
    let reversedString = String(arrayOfStr)
    return reversedString
}


/*
Now its the time to add special charceter conditon
 */

func reverseWithSpecialCharacters(string:String) -> String {
    var arrayOfStr = Array(str)
    var startPointer = arrayOfStr.startIndex
    var endpointer = arrayOfStr.endIndex - 1
    
    while startPointer <= endpointer {
        
        while isSpecialCharacter(character: arrayOfStr[startPointer]) {
             startPointer  = startPointer + 1
        }
        while  isSpecialCharacter(character: arrayOfStr[endpointer]) {
            endpointer = endpointer - 1
        }
        arrayOfStr.swapAt(startPointer, endpointer)
        startPointer  = startPointer + 1
        endpointer = endpointer - 1
    }
    let reversedString = String(arrayOfStr)
    return reversedString
}


func isSpecialCharacter(character:Character) -> Bool {
    let aphabetSet = "abcdefghijklmnopqrstuvwxyz1234567890ABCDEFGHJKLMNOPQRSTUVWXYZ"
    let alphanumricArray = Array(aphabetSet)
    return alphanumricArray.contains(character) == false
    
}

var reversedSpecialCharacterString = reverseWithSpecialCharacters(string: str)
var reversedString = reverse(string: str)
print(reversedString)







