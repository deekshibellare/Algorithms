import UIKit


/// Zeckendorf theorem represents integer as sums of Fibonacci numbers.
extension Int {
    func zeckendorfRepresentation() -> String {
        let (_,zeckValue) = zeckendorfRepresentation(fib0: 1, fib1: 1, zeckValue: "")
        return zeckValue
    }
    
    func zeckendorfRepresentation(fib0:Int, fib1:Int, zeckValue:String) -> (Int,String) {
        
        if fib1 > self {
            return (self,zeckValue)
        }
        var (remaining, currentZeckValue) = zeckendorfRepresentation(fib0: fib1,
                                                                     fib1: fib0+fib1,
                                                                     zeckValue:zeckValue)
        
        if fib1 <= remaining {
            currentZeckValue += "1"
            remaining = remaining - fib1
        } else {
            currentZeckValue += "0"
        }
        return (remaining,currentZeckValue)
    }
}

for i in 0...20 {
    let zeckValue = i.zeckendorfRepresentation()
    print("zeckendorfRepresentation for \(i) is \(zeckValue)")
}



