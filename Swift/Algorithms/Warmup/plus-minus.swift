import Foundation

// number of elements
let n = Int(readLine()!)!

// read array and map the elements to integer
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let nFloat: Float = Float(n)
var pos: Float = 0
var neg: Float = 0
var zero: Float = 0
for num in arr {
    if num > 0 {
        pos += 1
    } else if num < 0 {
        neg += 1
    } else {
        zero += 1
    }
}
print(String(format: "%.6f", pos/nFloat))
print(String(format: "%.6f", neg/nFloat))
print(String(format: "%.6f", zero/nFloat))
