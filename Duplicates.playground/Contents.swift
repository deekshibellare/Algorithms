import UIKit

var str = "Hello, playground"




extension Array where Element:Hashable
{
    func findDuplicates() -> [Element]? {
        var uniques = [Element]()
        var duplicates = [Element]()
        for element in self {
            if uniques.contains(element) == false {
                uniques.append(element)
            } else if duplicates.contains(element) == false {
                duplicates.append(element)
            }
        }
        return Array(duplicates)
    }
}

struct Person:Hashable
{
    var name:String?
    var date:Date?
}

let commonDate = Date()
let person1 = Person(name: "Raju", date:commonDate)
let person2 = Person(name: "rahul", date:commonDate)
let person3 = Person(name: "Raj", date:commonDate)
var array = [person1,person2,person3].findDuplicates()
let duplicates = [1,2,3,1,3,2,1,5].findDuplicates()

