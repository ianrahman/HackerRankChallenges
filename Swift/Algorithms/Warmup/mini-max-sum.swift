import Foundation

// read input
let input = readLine()!.components(separatedBy: " ").map{ Int($0)! }

// find sum of elements
let sum = input.reduce(0,+)

// find min and max values
let min = input.min()!
let max = input.max()!

// find min sum and max sum
let minSum = sum - max
let maxSum = sum - min

// print results
print("\(minSum) \(maxSum)")
