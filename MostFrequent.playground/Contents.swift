import UIKit

var str = "Hello, playground"


let colors = [["red","blue"], ["green","white"]]

let newArrray = colors.flatMap{$0}

var counts: [String: Int] = [:]

for item in newArrray {
    counts[item] = (counts[item] ?? 0) + 1
}

func mostFrequent(array: [String]) -> [String]? {
    var counts = [String: Int]()
    var maximumCount = 0
    for element in array {
        let count = (counts[element] ?? 0) + 1
        counts[element] = count
        if maximumCount < count {
            maximumCount =  count
        }
    }
    return counts.filter { (key,value) -> Bool in
        return value == maximumCount
        }.map { (key,value)  -> String in
            return key
    }
}


mostFrequent(array: newArrray)
