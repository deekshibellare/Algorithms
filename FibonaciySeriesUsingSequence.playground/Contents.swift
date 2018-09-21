import UIKit

var str = "Hello, playground"




let fibonacciSequence = AnySequence{FibonacciIterator(maxLength:6)}

for number in fibonacciSequence {
    print(number)
}

class FibonacciSequence:Sequence {
    func makeIterator() -> FibonacciIterator {
        FibonacciIterator()
    }
}

struct FibonacciIterator:IteratorProtocol {
    
    func <#name#>(<#parameters#>) -> <#return type#> {
        <#function body#>
    }
}
