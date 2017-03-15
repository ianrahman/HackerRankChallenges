import Foundation

// number of elements
let n = Int(readLine()!)!

// read array and map the elements to integer
let arr = readLine()!.components(separatedBy: " ").map{ UInt64($0)! }

// sum integers
let sum = arr.reduce(0,+)

// read out sum
print(sum)
