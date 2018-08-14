//: Playground - noun: a place where people can play

import UIKit
func findDuplicates(from array:[Int]) -> [Int]? {
    var uniques = Set<Int>()
    var duplicates = Set<Int>()
    for element in array {
        if uniques.contains(element) {
            duplicates.insert(element)
        } else {
            uniques.insert(element)}
    }
    return Array(duplicates)
}
let duplicates = findDuplicates(from:[1,2,1,3,2,1,1,5])

