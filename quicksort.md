//Sort the array of elements with recursion,
//sorting around the pivot element with each step
func quicksort(array: inout [Int],low:Int,high:Int) {

if low < high {
//Here element at pivot position is sorted and in the right position,
//other positions needs to be sorted
let pivotPosition = parition(array: &array, low:low, high: high)
quicksort(array: &array, low: low, high: pivotPosition-1)
quicksort(array: &array, low: pivotPosition+1, high:high)
}
}

func parition(array:inout [Int],low:Int,high:Int) -> Int {
let pivot = array[high]
var i = low - 1
for j in low..<high {
if array[j] <= pivot {
i = i + 1
array.swapAt(i, j)
}
}
array.swapAt(i+1, high)
return i+1
}

var array = [1,8,3,9,2,5,12,1,0,8,4,100,2]
quicksort(array:&array  low: 0, high: array.count)
array
