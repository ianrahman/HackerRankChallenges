// Enter your code here
import Foundation

// declare array of triplets
var arr = [[Int]]()

// read array row-by-row
for _ in 0..<2 {
    arr.append(readLine()!.components(separatedBy: " ").map{ Int($0)! })
}

// flatten array
let flat = arr.flatMap{ $0 }

// declare count variables
var alice: Int = 0
var bob: Int = 0

// compare scores and increment counts
for i in 0..<3 {
    if flat[i] > flat[i + 3] {
        alice += 1
    } else if flat[i] < flat[i+3] {
        bob += 1
    }
}

// print results
print("\(alice) \(bob)")
