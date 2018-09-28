import UIKit

var str = "Hello, playground"
// ##Delta encoding
//storing value of second as difference of first, if diff does not fall between -127 <=X <= 127, then use esapce token to indicate folling value is four byte difference value

let numbers = [25626, 25757, 24367, 24267, 16, 100, 2, 7277]

let outputWithoutEscapeToken =  [25626, 131, -1390, -100, -24251, 84, -98, 7275]

let output = [25626, -128, 131, -128, -1390, -100, -128, -24251, 84, -98, -128, 7275]

let escapeToken = -128

func encode(_ numbers:[Int],escapeToken:Int) -> [Int]?
{
    var encodedElements = [Int]()
    guard var previousNumber = numbers.first else {
        return nil
    }
    
    encodedElements.append(previousNumber)
    
    for element in numbers.dropFirst() {
        let difference = element - previousNumber
        previousNumber = element
        if difference >= 127 || difference <= -127 {
            encodedElements.append(escapeToken)
        }
        encodedElements.append(difference)
    }
    return encodedElements
}

encode(numbers, escapeToken: escapeToken) == output







