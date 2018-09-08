import UIKit

var str = "Hello, playground"


struct FibonacciIterator: IteratorProtocol {
    
    var (firstNumber, secondNumber) = (0, 1)
    
    var maxLength:Int = 0
    var currentLength:Int = 0
    
    init(maxLength:Int) {
        self.maxLength = maxLength
    }
    
    mutating func next() -> Int? {
        
        guard  currentLength < maxLength  else {
            return nil
        }
        
        if currentLength == 0 {
            currentLength += 1
            return 0
        }
        
        (firstNumber, secondNumber) = (secondNumber, firstNumber + secondNumber)
        currentLength += 1
        return firstNumber
    }
}

let fibonacciSequence = AnySequence{FibonacciIterator(maxLength:6)}

for number in fibonacciSequence {
    print(number)
}
