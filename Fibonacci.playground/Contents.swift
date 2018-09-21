import UIKit

var str = "Hello, playground"
//Without recursion
extension Int {
    func fibonaci() -> Int {
        if self <= 1 {
        return self }
        var fibonaciArray = [Int]()
        fibonaciArray.reserveCapacity(self+1)
        fibonaciArray.append(contentsOf: [0,1])
        for index in 2...self {
            let nextElement:Int = fibonaciArray[index-1] + fibonaciArray[index-2]
            fibonaciArray.append(nextElement)
        }
        return fibonaciArray[self]
    } }

20.fibonaci()
//19 operations

//With recursion
func fibonaci(_ num:Int) -> Int
{
    switch num {
    case Int.min...1:
        return max(0,1)
    default:
        return fibonaci(num-1) + fibonaci(num-2)
    }
}

fibonaci(20)
//10945 operations
