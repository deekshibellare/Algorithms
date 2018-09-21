import UIKit


func existsAPairThatAdds(to k:Int, in  array:[Int])->Bool {
    var differenceArray = [Int]()
    for item in array {
        if differenceArray.contains(item) {
            return true
        }
        let difference =  k - item
        differenceArray.append(difference)
    }
    return false
}
let array = [10,15,3,7]
existsAPairThatAdds(to: 17, in: array)






