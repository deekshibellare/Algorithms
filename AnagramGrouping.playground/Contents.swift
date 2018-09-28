import UIKit

// #Anagram grouping
var str = "Hello, playground"

let items = ["pear","amleth","dormitory","tinsel","dirty room","hamlet","listen","silent"
]

let output = ["amleth,hamlet","dirty room,dormitory","listen,silent,tinsel","pear"]

func groupedAnagrams(array:[String]) -> [String]? {
    
    var dict = [String:[String]]()
    
    for element in array {
        let keyWithoutSpaces = element.stringByRemovingWhitespaces
        let sortedString =  keyWithoutSpaces.sort()
        if var items = dict[sortedString] {
            items.append(keyWithoutSpaces)
            dict[sortedString] = items
        } else {
            dict[sortedString] = [keyWithoutSpaces]
        }
    }
    
    return dict.values.map { (anagrams) -> String in
        let sortedAnagrams = anagrams.sorted()
        return sortedAnagrams.reduce("") { (result, value) -> String in
            if result.isEmpty {
                return value
            }
            return result + "," + value
        }
        }.sorted()
}
extension String {
    var stringByRemovingWhitespaces: String {
        return components(separatedBy: .whitespaces).joined()
    }
}

extension String {
    func sort() -> String {
        let letters = Array(self)
        return String(letters.sorted())
    }
}

groupedAnagrams(array: items)


