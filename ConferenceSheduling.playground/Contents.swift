import UIKit

func findBreakDuration(n: Int, k: Int, t: Int, start: [Int], finish: [Int]) -> Int {
    
    var freeSlots = [Int]()
    var previousTalkEndTime = 0
    for (index,talkstartTime) in start.enumerated() {
        let freeTime = talkstartTime - previousTalkEndTime
        freeSlots.append(freeTime)
        previousTalkEndTime  = finish[index]
    }
    let endingFreeSlot = t - previousTalkEndTime
    freeSlots.append(endingFreeSlot)

    var longestFreeSlot = NSInteger.min
    for freeSlotStart in 0..<freeSlots.count-k {
        
        var sumOfGaps = 0
        let endSlot = freeSlotStart + k
        for index in freeSlotStart...endSlot {
            sumOfGaps  = sumOfGaps + freeSlots[index]
        }
        if sumOfGaps > longestFreeSlot {
            longestFreeSlot = sumOfGaps
        }
    }
      return longestFreeSlot
        
    }
   

let n = 4
let k = 2
let t = 15
let start = [4, 6, 7,10]
let end  = [5, 7, 8,11]

findBreakDuration(n: n, k: k, t: t, start: start, finish: end)
