// Enter your code here
import Foundation

// read input
let alice = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let bob = readLine()!.components(separatedBy: " ").map{ Int($0)! }

// store input as tuple
let scores = (alice, bob)

// declare count variables
var aScore: Int = 0
var bScore: Int = 0

// compare scores and increment counts
for (a, b) in zip(scores.0, scores.1) {
    if a > b {
        aScore += 1
    } else if b > a {
        bScore += 1
    }
}

// print results
print("\(aScore) \(bScore)")
